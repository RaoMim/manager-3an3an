import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'permission_service.dart';

class PhoneService {
  static final PhoneService _instance = PhoneService._internal();
  factory PhoneService() => _instance;
  PhoneService._internal();

  /// Make a phone call with proper permission handling
  Future<bool> makePhoneCall(BuildContext context, String phoneNumber) async {
    try {
      // Clean and validate phone number
      final cleanedNumber = _cleanPhoneNumber(phoneNumber);
      if (cleanedNumber.isEmpty) {
        _showErrorDialog(context, 'Numéro Invalide', 'Le numéro de téléphone fourni est invalide.');
        return false;
      }

      if (kDebugMode) {
        print('Attempting to call: $cleanedNumber');
      }

      // Check and request phone permission
      final hasPermission = await PermissionService().handlePhoneCallPermission(context, cleanedNumber);
      
      if (!hasPermission) {
        if (kDebugMode) {
          print('Phone permission denied');
        }
        return false;
      }

      // Make the call
      final uri = Uri(scheme: 'tel', path: cleanedNumber);
      final canLaunch = await canLaunchUrl(uri);
      
      if (canLaunch) {
        final launched = await launchUrl(
          uri,
          mode: LaunchMode.externalApplication,
        );
        
        if (kDebugMode) {
          print('Call launch result: $launched');
        }
        
        return launched;
      } else {
        if (context.mounted) {
          _showErrorDialog(
            context,
            'Impossible d\'Appeler',
            'Votre appareil ne prend pas en charge les appels téléphoniques ou aucune application d\'appel n\'est installée.',
          );
        }
        return false;
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error making phone call: $e');
      }
      
      if (context.mounted) {
        _showErrorDialog(
          context,
          'Erreur d\'Appel',
          'Une erreur s\'est produite lors de la tentative d\'appel. Veuillez réessayer.',
        );
      }
      return false;
    }
  }

  /// Send SMS with proper permission handling
  Future<bool> sendSMS(BuildContext context, String phoneNumber, {String? message}) async {
    try {
      // Clean and validate phone number
      final cleanedNumber = _cleanPhoneNumber(phoneNumber);
      if (cleanedNumber.isEmpty) {
        _showErrorDialog(context, 'Numéro Invalide', 'Le numéro de téléphone fourni est invalide.');
        return false;
      }

      if (kDebugMode) {
        print('Attempting to send SMS to: $cleanedNumber');
      }

      // Create SMS URI
      final uri = Uri(
        scheme: 'sms',
        path: cleanedNumber,
        queryParameters: message != null ? {'body': message} : null,
      );
      
      final canLaunch = await canLaunchUrl(uri);
      
      if (canLaunch) {
        final launched = await launchUrl(
          uri,
          mode: LaunchMode.externalApplication,
        );
        
        if (kDebugMode) {
          print('SMS launch result: $launched');
        }
        
        return launched;
      } else {
        if (context.mounted) {
          _showErrorDialog(
            context,
            'Impossible d\'Envoyer SMS',
            'Votre appareil ne prend pas en charge l\'envoi de SMS ou aucune application SMS n\'est installée.',
          );
        }
        return false;
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error sending SMS: $e');
      }
      
      if (context.mounted) {
        _showErrorDialog(
          context,
          'Erreur SMS',
          'Une erreur s\'est produite lors de la tentative d\'envoi SMS. Veuillez réessayer.',
        );
      }
      return false;
    }
  }

  /// Show contact options bottom sheet
  Future<void> showContactOptions(
    BuildContext context,
    String phoneNumber, {
    String? contactName,
    String? role, // 'client', 'transporter', etc.
  }) async {
    final cleanedNumber = _cleanPhoneNumber(phoneNumber);
    if (cleanedNumber.isEmpty) {
      _showErrorDialog(context, 'Numéro Invalide', 'Le numéro de téléphone fourni est invalide.');
      return;
    }

    await showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => _ContactOptionsSheet(
        phoneNumber: cleanedNumber,
        contactName: contactName,
        role: role,
        onCall: () => makePhoneCall(context, cleanedNumber),
        onSMS: () => _showSMSDialog(context, cleanedNumber),
      ),
    );
  }

  /// Clean and format phone number
  String _cleanPhoneNumber(String phoneNumber) {
    // Remove all non-digit characters except +
    String cleaned = phoneNumber.replaceAll(RegExp(r'[^\d+]'), '');
    
    // Handle Moroccan numbers
    if (cleaned.startsWith('0')) {
      // Convert 0612345678 to +212612345678
      cleaned = '+212${cleaned.substring(1)}';
    } else if (cleaned.startsWith('212') && !cleaned.startsWith('+')) {
      // Convert 212612345678 to +212612345678
      cleaned = '+$cleaned';
    } else if (!cleaned.startsWith('+') && cleaned.length >= 9) {
      // Assume it's a Moroccan number without country code
      cleaned = '+212$cleaned';
    }
    
    // Validate format
    if (cleaned.startsWith('+212') && cleaned.length == 13) {
      return cleaned;
    } else if (cleaned.startsWith('+') && cleaned.length >= 10) {
      return cleaned; // Other international numbers
    }
    
    return '';
  }

  /// Show SMS composition dialog
  Future<void> _showSMSDialog(BuildContext context, String phoneNumber) async {
    Navigator.pop(context); // Close the contact options sheet
    
    final TextEditingController messageController = TextEditingController();
    
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Envoyer SMS'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'À: $phoneNumber',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: messageController,
              maxLines: 4,
              decoration: const InputDecoration(
                hintText: 'Tapez votre message...',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Annuler',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              sendSMS(context, phoneNumber, message: messageController.text);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFEF5350),
              foregroundColor: Colors.white,
            ),
            child: const Text('Envoyer'),
          ),
        ],
      ),
    );
  }

  /// Show error dialog
  void _showErrorDialog(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFEF5350),
              foregroundColor: Colors.white,
            ),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  /// Format phone number for display
  String formatPhoneNumber(String phoneNumber) {
    final cleaned = _cleanPhoneNumber(phoneNumber);
    
    if (cleaned.startsWith('+212') && cleaned.length == 13) {
      // Format +212612345678 as +212 6 12 34 56 78
      return '${cleaned.substring(0, 4)} ${cleaned.substring(4, 5)} ${cleaned.substring(5, 7)} ${cleaned.substring(7, 9)} ${cleaned.substring(9, 11)} ${cleaned.substring(11)}';
    }
    
    return cleaned.isNotEmpty ? cleaned : phoneNumber;
  }

  /// Check if phone number is valid
  bool isValidPhoneNumber(String phoneNumber) {
    return _cleanPhoneNumber(phoneNumber).isNotEmpty;
  }

  /// Get contact type icon
  IconData getContactIcon(String? role) {
    switch (role?.toLowerCase()) {
      case 'client':
        return Icons.person;
      case 'transporter':
      case 'delivery':
        return Icons.local_shipping;
      case 'shop':
      case 'restaurant':
        return Icons.store;
      default:
        return Icons.phone;
    }
  }
}

/// Contact options bottom sheet widget
class _ContactOptionsSheet extends StatelessWidget {
  final String phoneNumber;
  final String? contactName;
  final String? role;
  final VoidCallback onCall;
  final VoidCallback onSMS;

  const _ContactOptionsSheet({
    required this.phoneNumber,
    this.contactName,
    this.role,
    required this.onCall,
    required this.onSMS,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Handle bar
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 20),
          
          // Contact info
          Row(
            children: [
              CircleAvatar(
                backgroundColor: const Color(0xFFEF5350).withOpacity(0.1),
                child: Icon(
                  PhoneService().getContactIcon(role),
                  color: const Color(0xFFEF5350),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (contactName != null) ...[
                      Text(
                        contactName!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                    ],
                    Text(
                      PhoneService().formatPhoneNumber(phoneNumber),
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                    if (role != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        role!.toUpperCase(),
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 30),
          
          // Action buttons
          Row(
            children: [
              Expanded(
                child: _ActionButton(
                  icon: Icons.phone,
                  label: 'Appeler',
                  onTap: () {
                    Navigator.pop(context);
                    onCall();
                  },
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _ActionButton(
                  icon: Icons.message,
                  label: 'SMS',
                  onTap: onSMS,
                ),
              ),
            ],
          ),
          
          // Safe area padding
          SizedBox(height: MediaQuery.of(context).padding.bottom),
        ],
      ),
    );
  }
}

/// Action button widget for contact options
class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _ActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 24,
              color: const Color(0xFFEF5350),
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}