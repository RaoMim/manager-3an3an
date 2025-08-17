import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  static final PermissionService _instance = PermissionService._internal();
  factory PermissionService() => _instance;
  PermissionService._internal();

  /// Check if all essential permissions are granted
  Future<bool> hasEssentialPermissions() async {
    if (Platform.isIOS) {
      return await _checkIOSEssentialPermissions();
    } else {
      return await _checkAndroidEssentialPermissions();
    }
  }

  /// Check Android essential permissions
  Future<bool> _checkAndroidEssentialPermissions() async {
    final permissions = [
      Permission.notification,
      Permission.phone,
    ];

    for (final permission in permissions) {
      final status = await permission.status;
      if (!status.isGranted) {
        return false;
      }
    }
    return true;
  }

  /// Check iOS essential permissions
  Future<bool> _checkIOSEssentialPermissions() async {
    final permissions = [
      Permission.notification,
    ];

    for (final permission in permissions) {
      final status = await permission.status;
      if (!status.isGranted) {
        return false;
      }
    }
    return true;
  }

  /// Request all essential permissions
  Future<Map<Permission, PermissionStatus>> requestEssentialPermissions() async {
    if (Platform.isIOS) {
      return await _requestIOSEssentialPermissions();
    } else {
      return await _requestAndroidEssentialPermissions();
    }
  }

  /// Request Android essential permissions
  Future<Map<Permission, PermissionStatus>> _requestAndroidEssentialPermissions() async {
    final permissions = [
      Permission.notification,
      Permission.phone,
    ];

    return await permissions.request();
  }

  /// Request iOS essential permissions
  Future<Map<Permission, PermissionStatus>> _requestIOSEssentialPermissions() async {
    final permissions = [
      Permission.notification,
    ];

    return await permissions.request();
  }

  /// Request notification permission specifically
  Future<PermissionStatus> requestNotificationPermission() async {
    if (kDebugMode) {
      print('Requesting notification permission...');
    }

    final status = await Permission.notification.request();
    
    if (kDebugMode) {
      print('Notification permission status: $status');
    }

    return status;
  }

  /// Request phone call permission
  Future<PermissionStatus> requestPhonePermission() async {
    if (Platform.isIOS) {
      // iOS doesn't require explicit phone permission for tel: URLs
      return PermissionStatus.granted;
    }

    if (kDebugMode) {
      print('Requesting phone permission...');
    }

    final status = await Permission.phone.request();
    
    if (kDebugMode) {
      print('Phone permission status: $status');
    }

    return status;
  }

  /// Request location permissions
  Future<Map<Permission, PermissionStatus>> requestLocationPermissions() async {
    if (kDebugMode) {
      print('Requesting location permissions...');
    }

    final permissions = [
      Permission.locationWhenInUse,
      Permission.locationAlways,
    ];

    final statuses = await permissions.request();
    
    if (kDebugMode) {
      print('Location permission statuses: $statuses');
    }

    return statuses;
  }

  /// Request storage permissions
  Future<Map<Permission, PermissionStatus>> requestStoragePermissions() async {
    if (kDebugMode) {
      print('Requesting storage permissions...');
    }

    List<Permission> permissions = [];

    if (Platform.isAndroid) {
      // Check Android version for different permission requirements
      permissions = [
        Permission.storage,
        if (Platform.operatingSystemVersion.contains('33') || 
            Platform.operatingSystemVersion.contains('34')) ...[
          Permission.photos,
          Permission.videos,
          Permission.audio,
        ],
      ];
    } else if (Platform.isIOS) {
      permissions = [
        Permission.photos,
      ];
    }

    final statuses = await permissions.request();
    
    if (kDebugMode) {
      print('Storage permission statuses: $statuses');
    }

    return statuses;
  }

  /// Check specific permission status
  Future<PermissionStatus> checkPermission(Permission permission) async {
    return await permission.status;
  }

  /// Check if permission is granted
  Future<bool> isPermissionGranted(Permission permission) async {
    final status = await permission.status;
    return status.isGranted;
  }

  /// Check if permission is denied permanently
  Future<bool> isPermissionPermanentlyDenied(Permission permission) async {
    final status = await permission.status;
    return status.isPermanentlyDenied;
  }

  /// Open app settings for permission management
  Future<bool> openSettings() async {
    if (kDebugMode) {
      print('Opening app settings...');
    }
    return await openAppSettings();
  }

  /// Show permission rationale dialog
  Future<bool?> showPermissionRationale(
    BuildContext context,
    String title,
    String message, {
    String positiveButton = 'Autoriser',
    String negativeButton = 'Annuler',
  }) async {
    return await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(
                negativeButton,
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFEF5350),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(positiveButton),
            ),
          ],
        );
      },
    );
  }

  /// Show settings dialog for permanently denied permissions
  Future<bool?> showSettingsDialog(
    BuildContext context,
    String title,
    String message, {
    String positiveButton = 'Paramètres',
    String negativeButton = 'Annuler',
  }) async {
    return await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(
                negativeButton,
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(true);
                openSettings();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFEF5350),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(positiveButton),
            ),
          ],
        );
      },
    );
  }

  /// Handle phone call permission flow
  Future<bool> handlePhoneCallPermission(BuildContext context, String phoneNumber) async {
    if (Platform.isIOS) {
      // iOS doesn't require explicit permission for tel: URLs
      return true;
    }

    // Check if permission is already granted
    if (await isPermissionGranted(Permission.phone)) {
      return true;
    }

    // Check if permanently denied
    if (await isPermissionPermanentlyDenied(Permission.phone)) {
      final shouldOpenSettings = await showSettingsDialog(
        context,
        'Permission Téléphone Requise',
        'Pour appeler $phoneNumber, vous devez autoriser l\'accès au téléphone dans les paramètres de l\'application.',
      );
      return shouldOpenSettings == true;
    }

    // Show rationale and request permission
    final shouldRequest = await showPermissionRationale(
      context,
      'Permission Téléphone',
      'Cette application a besoin d\'accéder au téléphone pour appeler les clients et transporteurs.',
    );

    if (shouldRequest == true) {
      final status = await requestPhonePermission();
      return status.isGranted;
    }

    return false;
  }

  /// Handle notification permission flow
  Future<bool> handleNotificationPermission(BuildContext context) async {
    // Check if permission is already granted
    if (await isPermissionGranted(Permission.notification)) {
      return true;
    }

    // Check if permanently denied
    if (await isPermissionPermanentlyDenied(Permission.notification)) {
      final shouldOpenSettings = await showSettingsDialog(
        context,
        'Notifications Désactivées',
        'Pour recevoir les notifications de nouvelles commandes, vous devez autoriser les notifications dans les paramètres de l\'application.',
      );
      return shouldOpenSettings == true;
    }

    // Show rationale and request permission
    final shouldRequest = await showPermissionRationale(
      context,
      'Notifications',
      'Cette application a besoin d\'envoyer des notifications pour vous alerter des nouvelles commandes.',
    );

    if (shouldRequest == true) {
      final status = await requestNotificationPermission();
      return status.isGranted;
    }

    return false;
  }

  /// Initialize permissions on app start
  Future<void> initializePermissions(BuildContext context) async {
    if (kDebugMode) {
      print('Initializing permissions...');
    }

    // Request essential permissions without blocking UI
    try {
      final results = await requestEssentialPermissions();
      
      // Log results for debugging
      if (kDebugMode) {
        for (final entry in results.entries) {
          print('${entry.key}: ${entry.value}');
        }
      }

      // Check for any denied permissions and show appropriate messages
      final deniedPermissions = results.entries
          .where((entry) => !entry.value.isGranted)
          .map((entry) => entry.key)
          .toList();

      if (deniedPermissions.isNotEmpty && context.mounted) {
        _showPermissionSummary(context, deniedPermissions);
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error initializing permissions: $e');
      }
    }
  }

  /// Show permission summary for denied permissions
  void _showPermissionSummary(BuildContext context, List<Permission> deniedPermissions) {
    final hasNotification = deniedPermissions.contains(Permission.notification);
    final hasPhone = deniedPermissions.contains(Permission.phone);

    if (!hasNotification && !hasPhone) return;

    String message = 'Pour une meilleure expérience:\n\n';
    
    if (hasNotification) {
      message += '• Autorisez les notifications pour recevoir les alertes de nouvelles commandes\n';
    }
    
    if (hasPhone) {
      message += '• Autorisez l\'accès au téléphone pour appeler directement les clients\n';
    }

    message += '\nVous pouvez modifier ces permissions plus tard dans les paramètres.';

    // Show as a bottom sheet instead of dialog to be less intrusive
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: const Color(0xFFEF5350),
                  size: 24,
                ),
                const SizedBox(width: 12),
                const Text(
                  'Permissions',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              message,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Fermer'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    openSettings();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEF5350),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Paramètres'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Get permission status display text
  String getPermissionStatusText(PermissionStatus status) {
    switch (status) {
      case PermissionStatus.granted:
        return 'Autorisé';
      case PermissionStatus.denied:
        return 'Refusé';
      case PermissionStatus.restricted:
        return 'Restreint';
      case PermissionStatus.limited:
        return 'Limité';
      case PermissionStatus.permanentlyDenied:
        return 'Refusé définitivement';
      case PermissionStatus.provisional:
        return 'Provisoire';
    }
  }

  /// Get permission icon based on status
  IconData getPermissionIcon(PermissionStatus status) {
    switch (status) {
      case PermissionStatus.granted:
        return Icons.check_circle;
      case PermissionStatus.denied:
      case PermissionStatus.permanentlyDenied:
        return Icons.cancel;
      case PermissionStatus.restricted:
      case PermissionStatus.limited:
        return Icons.warning;
      case PermissionStatus.provisional:
        return Icons.access_time;
    }
  }

  /// Get permission color based on status
  Color getPermissionColor(PermissionStatus status) {
    switch (status) {
      case PermissionStatus.granted:
        return Colors.green;
      case PermissionStatus.denied:
      case PermissionStatus.permanentlyDenied:
        return Colors.red;
      case PermissionStatus.restricted:
      case PermissionStatus.limited:
        return Colors.orange;
      case PermissionStatus.provisional:
        return Colors.blue;
    }
  }
}