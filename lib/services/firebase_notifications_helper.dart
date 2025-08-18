import 'dart:convert';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:http/http.dart' as http;
import 'package:permission_handler/permission_handler.dart';
import '../models/order.dart';
import '../firebase_options.dart';
import 'permission_service.dart';

// Top-level function for background message handling
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  }
  
  if (kDebugMode) {
    print("Background FCM message received:");
    print("Title: ${message.notification?.title}");
    print("Body: ${message.notification?.body}");
    print("Data: ${message.data}");
  }
  
  // Handle background notification processing here if needed
  // For example, update local storage, play sound, etc.
}

class FirebaseNotificationsHelper {
  static final FirebaseNotificationsHelper _instance = FirebaseNotificationsHelper._internal();
  factory FirebaseNotificationsHelper() => _instance;
  FirebaseNotificationsHelper._internal();

  FirebaseMessaging? _messaging;
  final AudioPlayer _audioPlayer = AudioPlayer();
  String? _fcmToken;
  
  // Callback for handling new order notifications
  Function(Order)? onNewOrderReceived;
  Function(RemoteMessage)? onMessageReceived;
  
  // Manager topic for FCM
  static const String managerTopic = 'managers';

  /// Initialize Firebase and FCM
  Future<void> initializeFCM() async {
    try {
      if (Firebase.apps.isEmpty) {
        await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );
      }

      _messaging = FirebaseMessaging.instance;

      // Set background message handler
      FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

      // Request notification permissions
      await _requestPermissions();

      // Get and store FCM token
      await _getFCMToken();

      // Subscribe to manager topic
      await _subscribeToManagerTopic();

      // Setup message handlers
      _setupMessageHandlers();

      if (kDebugMode) {
        print("Firebase FCM initialized successfully for managers");
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error initializing FCM: $e");
      }
    }
  }

  /// Request notification permissions
  Future<void> _requestPermissions() async {
    if (_messaging == null) return;

    try {
      // First request permission through permission_handler for Android 13+
      final permissionStatus = await PermissionService().requestNotificationPermission();
      
      if (kDebugMode) {
        print('Permission handler notification status: $permissionStatus');
      }

      // Then request Firebase-specific permissions
      NotificationSettings settings = await _messaging!.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );

      if (kDebugMode) {
        print('Firebase notification permission status: ${settings.authorizationStatus}');
      }

      // For iOS, set foreground notification presentation options
      if (Platform.isIOS) {
        await _messaging!.setForegroundNotificationPresentationOptions(
          alert: true,
          badge: true,
          sound: true,
        );
      }

      // Create notification channel for Android
      if (Platform.isAndroid) {
        await _createNotificationChannel();
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error requesting notification permissions: $e');
      }
    }
  }

  /// Create notification channel for Android
  Future<void> _createNotificationChannel() async {
    // This would typically use flutter_local_notifications
    // For now, we rely on Firebase's default channel creation
    if (kDebugMode) {
      print('Notification channel creation handled by Firebase');
    }
  }

  /// Get FCM token
  Future<String?> _getFCMToken() async {
    if (_messaging == null) {
      if (kDebugMode) {
        print("ERROR: Firebase messaging is null");
      }
      return null;
    }

    try {
      _fcmToken = await _messaging!.getToken();
      
      if (kDebugMode) {
        if (_fcmToken != null) {
          print("FCM Token generated successfully (${_fcmToken!.length} chars)");
        } else {
          print("WARNING: FCM token is null");
        }
      }
      
      // Listen for token refresh
      _messaging!.onTokenRefresh.listen((String token) {
        _fcmToken = token;
        if (kDebugMode) {
          print("FCM Token refreshed");
        }
        // You might want to send this token to your backend here
      });

      return _fcmToken;
    } catch (e) {
      if (kDebugMode) {
        print("ERROR getting FCM token: $e");
      }
      return null;
    }
  }

  /// Subscribe to manager topic
  Future<void> _subscribeToManagerTopic() async {
    if (_messaging == null) return;

    try {
      await _messaging!.subscribeToTopic(managerTopic);
      if (kDebugMode) {
        print("Subscribed to '$managerTopic' topic");
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error subscribing to $managerTopic topic: $e");
      }
    }
  }

  /// Unsubscribe from manager topic
  Future<void> unsubscribeFromManagerTopic() async {
    if (_messaging == null) return;

    try {
      await _messaging!.unsubscribeFromTopic(managerTopic);
      if (kDebugMode) {
        print("Unsubscribed from '$managerTopic' topic");
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error unsubscribing from $managerTopic topic: $e");
      }
    }
  }

  /// Setup message handlers for different app states
  void _setupMessageHandlers() {
    if (_messaging == null) return;

    // Handle messages when app is in foreground
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (kDebugMode) {
        print("Foreground message received:");
        print("Title: ${message.notification?.title}");
        print("Body: ${message.notification?.body}");
        print("Data: ${message.data}");
      }

      _handleForegroundMessage(message);
    });

    // Handle messages when app is opened from background
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      if (kDebugMode) {
        print("Message opened app from background:");
        print("Data: ${message.data}");
      }

      _handleMessageOpenedApp(message);
    });

    // Check for initial message if app was opened from terminated state
    _checkInitialMessage();
  }

  /// Handle foreground messages
  void _handleForegroundMessage(RemoteMessage message) {
    // Play notification sound
    _playNotificationSound();

    // Process order data if present
    if (message.data.containsKey('order')) {
      _processOrderNotification(message);
    }

    // Call the general message callback
    if (onMessageReceived != null) {
      onMessageReceived!(message);
    }
  }

  /// Handle messages that opened the app from background
  void _handleMessageOpenedApp(RemoteMessage message) {
    if (kDebugMode) {
      print("Handling message that opened app: ${message.data}");
    }

    // Process order data if present
    if (message.data.containsKey('order')) {
      _processOrderNotification(message);
    }
  }

  /// Check for initial message when app starts
  Future<void> _checkInitialMessage() async {
    if (_messaging == null) return;

    RemoteMessage? initialMessage = await _messaging!.getInitialMessage();
    if (initialMessage != null) {
      if (kDebugMode) {
        print("App opened from terminated state with message: ${initialMessage.data}");
      }
      _handleMessageOpenedApp(initialMessage);
    }
  }

  /// Process order notification data
  void _processOrderNotification(RemoteMessage message) {
    try {
      final orderData = message.data['order'];
      if (orderData != null) {
        Map<String, dynamic> orderJson;
        
        if (orderData is String) {
          orderJson = jsonDecode(orderData);
        } else if (orderData is Map<String, dynamic>) {
          orderJson = orderData;
        } else {
          if (kDebugMode) {
            print("Invalid order data format: $orderData");
          }
          return;
        }

        final order = Order.fromJson(orderJson);
        
        if (kDebugMode) {
          print("New order notification: ID ${order.id}, Client: ${order.clientName}");
        }

        // Call the new order callback
        if (onNewOrderReceived != null) {
          onNewOrderReceived!(order);
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error processing order notification: $e");
      }
    }
  }

  /// Play notification sound
  Future<void> _playNotificationSound() async {
    try {
      // Use a web-based notification sound that works across platforms
      const String soundUrl = 'https://assets.mixkit.co/active_storage/sfx/933/933-preview.mp3';
      await _audioPlayer.play(UrlSource(soundUrl));
      
      if (kDebugMode) {
        print('Playing notification sound');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error playing notification sound: $e');
      }
    }
  }

  /// Show local notification (for foreground messages)
  void showLocalNotification(BuildContext context, RemoteMessage message) {
    final notification = message.notification;
    if (notification != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (notification.title != null)
                Text(
                  notification.title!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              if (notification.body != null)
                Text(
                  notification.body!,
                  style: const TextStyle(color: Colors.white),
                ),
            ],
          ),
          backgroundColor: const Color(0xFFEF5350),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          action: SnackBarAction(
            label: 'Voir',
            textColor: Colors.white,
            onPressed: () {
              _handleMessageOpenedApp(message);
            },
          ),
        ),
      );
    }
  }

  /// Get current FCM token
  String? get fcmToken => _fcmToken;

  /// Dispose resources
  void dispose() {
    _audioPlayer.dispose();
  }

  /// Send FCM token to backend (call this after successful login)
  Future<void> sendTokenToBackend(String authToken) async {
    if (_fcmToken == null) {
      if (kDebugMode) {
        print("WARNING: FCM token is null, cannot send to backend");
      }
      return;
    }

    try {
      if (kDebugMode) {
        print("Sending FCM token to backend...");
        print("Platform: ${Platform.isIOS ? 'ios' : 'android'}");
      }
      
      final response = await http.put(
        Uri.parse('https://akl.3an3an.ma/api/Manager/fcm-token'),
        headers: {
          'Authorization': 'Bearer $authToken',
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'token': _fcmToken,
          'platform': Platform.isIOS ? 'ios' : 'android',
          'deviceInfo': Platform.operatingSystem,
        }),
      );

      if (response.statusCode == 200) {
        if (kDebugMode) {
          print("SUCCESS: FCM token sent successfully to backend");
        }
      } else {
        if (kDebugMode) {
          print("FAILED to send FCM token: ${response.statusCode} - ${response.body}");
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print("ERROR sending FCM token to backend: $e");
      }
    }
  }

  /// Remove FCM token from backend (call this on logout)
  Future<void> removeTokenFromBackend(String authToken) async {
    if (_fcmToken == null) return;

    try {
      // TODO: Implement API call to remove FCM token from backend
      // This should be called on logout
      
      if (kDebugMode) {
        print("FCM token should be removed from backend: $_fcmToken");
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error removing FCM token from backend: $e");
      }
    }
  }

  /// Check and request notification permissions with UI context
  Future<bool> checkAndRequestPermissions(BuildContext context) async {
    try {
      // Check if permissions are already granted
      final hasPermission = await PermissionService().isPermissionGranted(Permission.notification);
      
      if (hasPermission) {
        if (kDebugMode) {
          print('Notification permissions already granted');
        }
        return true;
      }

      // Request permissions with proper UI flow
      return await PermissionService().handleNotificationPermission(context);
    } catch (e) {
      if (kDebugMode) {
        print('Error checking notification permissions: $e');
      }
      return false;
    }
  }

  /// Initialize FCM with permission context
  Future<bool> initializeFCMWithContext(BuildContext context) async {
    try {
      // First ensure permissions are granted
      final hasPermissions = await checkAndRequestPermissions(context);
      
      if (!hasPermissions) {
        if (kDebugMode) {
          print('FCM initialization aborted: permissions not granted');
        }
        return false;
      }

      // Initialize FCM
      await initializeFCM();
      
      if (kDebugMode) {
        print('FCM initialized successfully with permissions');
      }
      
      return true;
    } catch (e) {
      if (kDebugMode) {
        print('Error initializing FCM with context: $e');
      }
      return false;
    }
  }

  /// Check if FCM is properly set up
  Future<bool> isFCMSetup() async {
    try {
      final hasPermission = await PermissionService().isPermissionGranted(Permission.notification);
      final hasToken = _fcmToken != null && _fcmToken!.isNotEmpty;
      
      return hasPermission && hasToken;
    } catch (e) {
      if (kDebugMode) {
        print('Error checking FCM setup: $e');
      }
      return false;
    }
  }
}