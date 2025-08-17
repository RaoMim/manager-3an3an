import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import '../services/permission_service.dart';
import '../services/firebase_notifications_helper.dart';

class PermissionsScreen extends StatefulWidget {
  const PermissionsScreen({super.key});

  @override
  State<PermissionsScreen> createState() => _PermissionsScreenState();
}

class _PermissionsScreenState extends State<PermissionsScreen> {
  bool _isLoading = false;
  Map<Permission, PermissionStatus> _permissionStatuses = {};

  @override
  void initState() {
    super.initState();
    _loadPermissionStatuses();
  }

  Future<void> _loadPermissionStatuses() async {
    setState(() => _isLoading = true);

    try {
      final permissions = [
        Permission.notification,
        Permission.phone,
        Permission.locationWhenInUse,
        Permission.storage,
        Permission.camera,
        Permission.microphone,
      ];

      final statuses = <Permission, PermissionStatus>{};
      
      for (final permission in permissions) {
        statuses[permission] = await permission.status;
      }

      if (mounted) {
        setState(() {
          _permissionStatuses = statuses;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _requestPermission(Permission permission) async {
    try {
      PermissionStatus status;
      
      switch (permission) {
        case Permission.notification:
          final success = await PermissionService().handleNotificationPermission(context);
          status = success ? PermissionStatus.granted : PermissionStatus.denied;
          
          // Reinitialize FCM if notification permission was granted
          if (success) {
            await FirebaseNotificationsHelper().initializeFCMWithContext(context);
          }
          break;
          
        case Permission.phone:
          final success = await PermissionService().handlePhoneCallPermission(context, '+212600000000');
          status = success ? PermissionStatus.granted : PermissionStatus.denied;
          break;
          
        default:
          status = await permission.request();
      }

      if (mounted) {
        setState(() {
          _permissionStatuses[permission] = status;
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erreur lors de la demande de permission: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Permissions'),
        backgroundColor: const Color(0xFFEF5350),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: _loadPermissionStatuses,
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  // Header card
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.security,
                                color: const Color(0xFFEF5350),
                                size: 24,
                              ),
                              const SizedBox(width: 12),
                              const Text(
                                'Gestion des Permissions',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'Gérez les permissions pour optimiser votre expérience avec l\'application 3an3an Manager.',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Essential permissions section
                  _buildSectionHeader('Permissions Essentielles'),
                  _buildPermissionTile(
                    permission: Permission.notification,
                    title: 'Notifications',
                    description: 'Recevoir les alertes de nouvelles commandes',
                    icon: Icons.notifications,
                    isEssential: true,
                  ),
                  _buildPermissionTile(
                    permission: Permission.phone,
                    title: 'Téléphone',
                    description: 'Appeler directement les clients et transporteurs',
                    icon: Icons.phone,
                    isEssential: true,
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Optional permissions section
                  _buildSectionHeader('Permissions Optionnelles'),
                  _buildPermissionTile(
                    permission: Permission.locationWhenInUse,
                    title: 'Localisation',
                    description: 'Suivre les livraisons et afficher les cartes',
                    icon: Icons.location_on,
                    isEssential: false,
                  ),
                  _buildPermissionTile(
                    permission: Permission.storage,
                    title: 'Stockage',
                    description: 'Télécharger et sauvegarder les rapports',
                    icon: Icons.storage,
                    isEssential: false,
                  ),
                  _buildPermissionTile(
                    permission: Permission.camera,
                    title: 'Appareil Photo',
                    description: 'Prendre des photos pour la documentation',
                    icon: Icons.camera_alt,
                    isEssential: false,
                  ),
                  _buildPermissionTile(
                    permission: Permission.microphone,
                    title: 'Microphone',
                    description: 'Enregistrer des notes vocales',
                    icon: Icons.mic,
                    isEssential: false,
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // Action buttons
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: _loadPermissionStatuses,
                          icon: const Icon(Icons.refresh),
                          label: const Text('Actualiser'),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () => PermissionService().openSettings(),
                          icon: const Icon(Icons.settings),
                          label: const Text('Paramètres'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFEF5350),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Info card
                  Card(
                    color: Colors.blue[50],
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: Colors.blue[700],
                            size: 24,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              'Vous pouvez modifier ces permissions à tout moment dans les paramètres de votre appareil.',
                              style: TextStyle(
                                color: Colors.blue[700],
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget _buildPermissionTile({
    required Permission permission,
    required String title,
    required String description,
    required IconData icon,
    required bool isEssential,
  }) {
    final status = _permissionStatuses[permission] ?? PermissionStatus.denied;
    final isGranted = status.isGranted;
    final isPermanentlyDenied = status.isPermanentlyDenied;

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: isGranted 
              ? Colors.green.withOpacity(0.1)
              : (isEssential ? Colors.red.withOpacity(0.1) : Colors.orange.withOpacity(0.1)),
          child: Icon(
            icon,
            color: isGranted 
                ? Colors.green
                : (isEssential ? Colors.red : Colors.orange),
          ),
        ),
        title: Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            if (isEssential) ...[
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: const Color(0xFFEF5350),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'REQUIS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(description),
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(
                  PermissionService().getPermissionIcon(status),
                  size: 16,
                  color: PermissionService().getPermissionColor(status),
                ),
                const SizedBox(width: 4),
                Text(
                  PermissionService().getPermissionStatusText(status),
                  style: TextStyle(
                    color: PermissionService().getPermissionColor(status),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
        trailing: isPermanentlyDenied
            ? TextButton(
                onPressed: () => PermissionService().openSettings(),
                child: const Text('Paramètres'),
              )
            : !isGranted
                ? ElevatedButton(
                    onPressed: () => _requestPermission(permission),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFEF5350),
                      foregroundColor: Colors.white,
                      minimumSize: const Size(80, 32),
                    ),
                    child: const Text('Autoriser'),
                  )
                : Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    );
  }
}