import 'dart:convert';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:http/http.dart' as http;
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/order.dart';
import '../firebase_options.dart';
import 'permission_service.dart';

// Top-level function for background message handling
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  }
  
  print("Background FCM message received:");
  print("Title: ${message.notification?.title}");
  print("Body: ${message.notification?.body}");
  print("Data: ${message.data}");
  
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
      print("🚀 Starting Firebase FCM initialization...");

      // Check if Firebase is already initialized
      print("   🔍 Checking Firebase initialization status...");
      print("   📊 Firebase apps count: ${Firebase.apps.length}");
      
      if (Firebase.apps.isEmpty) {
        print("   📱 No Firebase apps found, initializing...");
        try {
          await Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform,
          );
          print("   ✅ Firebase app initialized successfully");
        } catch (e) {
          if (e.toString().contains('duplicate-app')) {
            print("   ✅ Firebase already initialized (race condition resolved)");
          } else {
            rethrow;
          }
        }
      } else {
        print("   ✅ Firebase already initialized with ${Firebase.apps.length} apps");
        print("   📱 Default app name: ${Firebase.app().name}");
      }

      _messaging = FirebaseMessaging.instance;
      print("   📨 Firebase Messaging instance obtained");

      // Set background message handler
      FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
      print("   🔧 Background message handler set");

      // Request notification permissions
      if (true) {
        print("   🔐 Requesting notification permissions...");
      }
      await _requestPermissions();

      // Get and store FCM token
      if (true) {
        print("   🔑 Generating FCM token...");
      }
      await _getFCMToken();

      // Subscribe to manager topic
      if (true) {
        print("   📢 Subscribing to manager topic...");
      }
      await _subscribeToManagerTopic();

      // Setup message handlers
      if (true) {
        print("   📥 Setting up message handlers...");
      }
      _setupMessageHandlers();

      // Perform intelligent token refresh analysis
      if (true) {
        print("   🧠 Running intelligent token refresh analysis...");
      }
      await performIntelligentTokenRefresh();

      if (true) {
        print("✅ Firebase FCM initialized successfully for managers");
        print("   📊 Final status:");
        print("   - FCM Token: ${_fcmToken != null ? 'Generated' : 'Missing'}");
        print("   - Messaging: ${_messaging != null ? 'Ready' : 'Not Ready'}");
      }
    } catch (e) {
      print("🔴 Error initializing FCM: $e");
      print("   🔍 Check Firebase configuration files");
      print("   📱 Platform: ${Platform.operatingSystem}");
      print("   🔧 Error type: ${e.runtimeType}");
      print("   📄 Stack trace: ${StackTrace.current}");
      rethrow; // Re-throw to see the error in main()
    }
  }

  /// Request notification permissions
  Future<void> _requestPermissions() async {
    if (_messaging == null) return;

    try {
      // First request permission through permission_handler for Android 13+
      final permissionStatus = await PermissionService().requestNotificationPermission();
      
      if (true) {
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

      if (true) {
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
      if (true) {
        print('Error requesting notification permissions: $e');
      }
    }
  }

  /// Create notification channel for Android
  Future<void> _createNotificationChannel() async {
    // This would typically use flutter_local_notifications
    // For now, we rely on Firebase's default channel creation
    if (true) {
      print('Notification channel creation handled by Firebase');
    }
  }

  /// Get FCM token with persistence
  Future<String?> _getFCMToken() async {
    if (_messaging == null) {
      if (true) {
        print("🔴 ERROR: Firebase messaging is null");
      }
      return null;
    }

    try {
      // First try to load cached token from SharedPreferences
      final prefs = await SharedPreferences.getInstance();
      final cachedToken = prefs.getString('fcm_token');
      final tokenTimestamp = prefs.getInt('fcm_token_timestamp') ?? 0;
      final now = DateTime.now().millisecondsSinceEpoch;
      
      // Check if cached token is still valid (less than 270 days old - FCM maximum)
      // Firebase recommends monthly refresh, but tokens are valid up to 270 days
      const tokenValidityDuration = 270 * 24 * 60 * 60 * 1000; // 270 days in milliseconds
      const recommendedRefreshDuration = 30 * 24 * 60 * 60 * 1000; // 30 days for optimal performance
      final isTokenValid = cachedToken != null && 
                          cachedToken.isNotEmpty && 
                          (now - tokenTimestamp) < tokenValidityDuration;
      final isTokenRecommendedFresh = (now - tokenTimestamp) < recommendedRefreshDuration;
      final tokenAgeDays = ((now - tokenTimestamp) / (24 * 60 * 60 * 1000));
      
      if (isTokenValid) {
        _fcmToken = cachedToken;
        if (true) {
          print("✅ Using cached FCM token (${tokenAgeDays.round()} days old)");
          print("   🔑 Token preview: ${_fcmToken!.substring(0, 50)}...");
          print("   📊 Status: ${isTokenRecommendedFresh ? 'FRESH' : 'STALE (but valid)'} - ${isTokenRecommendedFresh ? 'Optimal' : 'Consider refresh soon'}");
          print("   ⏰ Valid until: ${tokenAgeDays.round()}/270 days");
        }
        
        // Schedule proactive refresh if token is stale but valid (30+ days old)
        if (!isTokenRecommendedFresh) {
          if (true) {
            print("   🔄 Token is stale (${tokenAgeDays.round()} days), scheduling proactive refresh...");
          }
          // Refresh token in background without blocking current usage
          _scheduleProactiveTokenRefresh();
        }
        
        // Still set up token refresh listener
        _setupTokenRefreshListener();
        return _fcmToken;
      }
      
      if (true) {
        print("🔄 Requesting new FCM token from Firebase...");
        if (cachedToken != null) {
          print("   ♻️  Cached token expired (${tokenAgeDays.round()} days > 270 days), generating new one");
        } else {
          print("   🆕 No cached token found, generating first token");
        }
      }
      
      _fcmToken = await _messaging!.getToken();
      
      if (_fcmToken != null) {
        // Store token and timestamp in SharedPreferences
        await prefs.setString('fcm_token', _fcmToken!);
        await prefs.setInt('fcm_token_timestamp', now);
        
        if (true) {
          print("✅ FCM Token generated and cached successfully");
          print("   📄 Token length: ${_fcmToken!.length} characters");
          print("   🔑 Token preview: ${_fcmToken!.substring(0, 50)}...");
          print("   💾 Token cached for 270 days (FCM maximum validity)");
        }
      } else {
        if (true) {
          print("⚠️  WARNING: FCM token is null");
          print("   🔍 Check Firebase configuration and Google Services");
        }
      }
      
      // Set up token refresh listener
      _setupTokenRefreshListener();

      return _fcmToken;
    } catch (e) {
      if (true) {
        print("🔴 ERROR getting FCM token: $e");
        print("   📱 Platform: ${Platform.operatingSystem}");
        print("   🔧 Check Firebase setup and internet connection");
      }
      return null;
    }
  }

  /// Setup token refresh listener with persistence
  void _setupTokenRefreshListener() {
    _messaging!.onTokenRefresh.listen((String token) async {
      _fcmToken = token;
      
      // Update cached token and timestamp
      try {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('fcm_token', token);
        await prefs.setInt('fcm_token_timestamp', DateTime.now().millisecondsSinceEpoch);
        
        if (true) {
          print("🔄 FCM Token refreshed and cached");
          print("   🔑 New token preview: ${token.substring(0, 50)}...");
        }
        
        // Auto-register refreshed token with backend if user is logged in
        final authToken = prefs.getString('auth_token');
        if (authToken != null && authToken.isNotEmpty) {
          if (true) {
            print("   🔄 Auto-registering refreshed token with backend");
          }
          await sendTokenToBackend(authToken);
        }
      } catch (e) {
        if (true) {
          print("🔴 Error caching refreshed token: $e");
        }
      }
    });
  }

  /// Schedule proactive token refresh for stale but valid tokens
  Future<void> _scheduleProactiveTokenRefresh() async {
    // Use Future.delayed to refresh token in background without blocking UI
    Future.delayed(const Duration(seconds: 5), () async {
      try {
        if (true) {
          print("🔄 Performing proactive token refresh in background...");
        }
        
        // Get fresh token without clearing cache (in case refresh fails)
        final freshToken = await _messaging?.getToken();
        
        if (freshToken != null && freshToken != _fcmToken) {
          // Update token and cache
          _fcmToken = freshToken;
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('fcm_token', freshToken);
          await prefs.setInt('fcm_token_timestamp', DateTime.now().millisecondsSinceEpoch);
          
          if (true) {
            print("✅ Proactive token refresh completed successfully");
            print("   🔑 New token preview: ${freshToken.substring(0, 50)}...");
          }
          
          // Auto-register with backend if user is logged in
          final authToken = prefs.getString('auth_token');
          if (authToken != null && authToken.isNotEmpty) {
            if (true) {
              print("   🔄 Auto-registering refreshed token with backend");
            }
            await sendTokenToBackend(authToken);
          }
        } else if (freshToken == _fcmToken) {
          if (true) {
            print("✅ Proactive refresh: Token unchanged, updating timestamp only");
          }
          // Update timestamp to reset staleness
          final prefs = await SharedPreferences.getInstance();
          await prefs.setInt('fcm_token_timestamp', DateTime.now().millisecondsSinceEpoch);
        }
      } catch (e) {
        if (true) {
          print("🔴 Error during proactive token refresh: $e");
          print("   📝 Current token will continue working until expiry");
        }
      }
    });
  }

  /// Subscribe to manager topic
  Future<void> _subscribeToManagerTopic() async {
    if (_messaging == null) return;

    try {
      await _messaging!.subscribeToTopic(managerTopic);
      if (true) {
        print("Subscribed to '$managerTopic' topic");
      }
    } catch (e) {
      if (true) {
        print("Error subscribing to $managerTopic topic: $e");
      }
    }
  }

  /// Unsubscribe from manager topic
  Future<void> unsubscribeFromManagerTopic() async {
    if (_messaging == null) return;

    try {
      await _messaging!.unsubscribeFromTopic(managerTopic);
      if (true) {
        print("Unsubscribed from '$managerTopic' topic");
      }
    } catch (e) {
      if (true) {
        print("Error unsubscribing from $managerTopic topic: $e");
      }
    }
  }

  /// Setup message handlers for different app states
  void _setupMessageHandlers() {
    if (_messaging == null) return;

    // Handle messages when app is in foreground
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (true) {
        print("Foreground message received:");
        print("Title: ${message.notification?.title}");
        print("Body: ${message.notification?.body}");
        print("Data: ${message.data}");
      }

      _handleForegroundMessage(message);
    });

    // Handle messages when app is opened from background
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      if (true) {
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
    if (true) {
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
      if (true) {
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
          if (true) {
            print("Invalid order data format: $orderData");
          }
          return;
        }

        final order = Order.fromJson(orderJson);
        
        if (true) {
          print("New order notification: ID ${order.id}, Client: ${order.clientName}");
        }

        // Call the new order callback
        if (onNewOrderReceived != null) {
          onNewOrderReceived!(order);
        }
      }
    } catch (e) {
      if (true) {
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
      
      if (true) {
        print('Playing notification sound');
      }
    } catch (e) {
      if (true) {
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
    if (true) {
      print("📤 sendTokenToBackend called");
      print("   🔑 Auth token preview: ${authToken.substring(0, 30)}...");
      print("   📱 FCM token status: ${_fcmToken == null ? 'NULL' : 'Available (${_fcmToken!.length} chars)'}");
    }

    if (_fcmToken == null) {
      if (true) {
        print("⚠️  WARNING: FCM token is null, cannot send to backend");
        print("   🔧 Attempting to regenerate token...");
      }
      
      // Try to get token again
      await _getFCMToken();
      
      if (_fcmToken == null) {
        if (true) {
          print("🔴 ERROR: Still no FCM token available after retry");
        }
        return;
      }
    }

    try {
      if (true) {
        print("📤 Sending FCM token to backend...");
        print("   🌐 Endpoint: https://akl.3an3an.ma/api/Notification/manager/register-token");
        print("   📱 Platform: ${Platform.isIOS ? 'ios' : 'android'}");
        print("   🔑 Token preview: ${_fcmToken!.substring(0, 50)}...");
      }
      
      final requestBody = {
        'token': _fcmToken,
        'deviceInfo': Platform.isIOS ? 'ios' : 'android',
      };
      
      final response = await http.post(
        Uri.parse('https://akl.3an3an.ma/api/Notification/manager/register-token'),
        headers: {
          'Authorization': 'Bearer $authToken',
          'Content-Type': 'application/json',
        },
        body: jsonEncode(requestBody),
      );

      if (true) {
        print("📨 Server response received:");
        print("   📊 Status code: ${response.statusCode}");
        print("   📄 Response body: ${response.body}");
      }

      if (response.statusCode == 200) {
        if (true) {
          print("✅ SUCCESS: FCM token sent successfully to backend");
        }
      } else {
        if (true) {
          print("🔴 FAILED to send FCM token:");
          print("   📊 Status: ${response.statusCode}");
          print("   📄 Response: ${response.body}");
        }
      }
    } catch (e) {
      if (true) {
        print("🔴 ERROR sending FCM token to backend: $e");
        print("   🔍 Check network connection and API endpoint");
      }
    }
  }

  /// Remove FCM token from backend and clear cache (call this on logout)
  Future<void> removeTokenFromBackend(String authToken) async {
    if (_fcmToken == null) return;

    try {
      if (true) {
        print("Removing FCM token from backend...");
      }
      
      final response = await http.post(
        Uri.parse('https://akl.3an3an.ma/api/Notification/manager/unregister-token'),
        headers: {
          'Authorization': 'Bearer $authToken',
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'token': _fcmToken,
        }),
      );

      if (response.statusCode == 200) {
        if (true) {
          print("SUCCESS: FCM token removed successfully from backend");
        }
      } else {
        if (true) {
          print("FAILED to remove FCM token: ${response.statusCode} - ${response.body}");
        }
      }
      
      // Clear cached token and reset memory token
      await _clearCachedToken();
      
    } catch (e) {
      if (true) {
        print("Error removing FCM token from backend: $e");
      }
    }
  }

  /// Clear cached FCM token from SharedPreferences
  Future<void> _clearCachedToken() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('fcm_token');
      await prefs.remove('fcm_token_timestamp');
      _fcmToken = null;
      
      if (true) {
        print("🗑️ Cached FCM token cleared");
      }
    } catch (e) {
      if (true) {
        print("🔴 Error clearing cached token: $e");
      }
    }
  }

  /// Check and request notification permissions with UI context
  Future<bool> checkAndRequestPermissions(BuildContext context) async {
    try {
      // Check if permissions are already granted
      final hasPermission = await PermissionService().isPermissionGranted(Permission.notification);
      
      if (hasPermission) {
        if (true) {
          print('Notification permissions already granted');
        }
        return true;
      }

      // Request permissions with proper UI flow
      return await PermissionService().handleNotificationPermission(context);
    } catch (e) {
      if (true) {
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
        if (true) {
          print('FCM initialization aborted: permissions not granted');
        }
        return false;
      }

      // Initialize FCM
      await initializeFCM();
      
      if (true) {
        print('FCM initialized successfully with permissions');
      }
      
      return true;
    } catch (e) {
      if (true) {
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
      if (true) {
        print('Error checking FCM setup: $e');
      }
      return false;
    }
  }

  /// Debug function to check current FCM status
  Future<void> debugFCMStatus() async {
    if (true) {
      print('\n🔍 === FCM DEBUG STATUS ===');
      print('📱 FCM Token: ${_fcmToken != null ? 'Available (${_fcmToken!.length} chars)' : 'NULL'}');
      print('📨 Messaging Instance: ${_messaging != null ? 'Ready' : 'Not Ready'}');
      if (_fcmToken != null) {
        print('🔑 Token Preview: ${_fcmToken!.substring(0, 50)}...');
      }
      
      // Check cached token info
      try {
        final prefs = await SharedPreferences.getInstance();
        final cachedToken = prefs.getString('fcm_token');
        final tokenTimestamp = prefs.getInt('fcm_token_timestamp') ?? 0;
        final now = DateTime.now().millisecondsSinceEpoch;
        
        if (cachedToken != null) {
          final ageInDays = ((now - tokenTimestamp) / (24 * 60 * 60 * 1000));
          final isValid = ageInDays < 270;
          final isFresh = ageInDays < 30;
          
          print('💾 Cached Token: Available (age: ${ageInDays.toStringAsFixed(1)} days)');
          print('🔑 Cached Token Preview: ${cachedToken.substring(0, 50)}...');
          print('⏰ Token Status: ${isValid ? (isFresh ? 'FRESH & VALID' : 'STALE but VALID') : 'EXPIRED'}');
          print('📊 Validity: ${ageInDays.toStringAsFixed(1)}/270 days (${isFresh ? 'Optimal' : isValid ? 'Needs refresh soon' : 'Must refresh'})');
        } else {
          print('💾 Cached Token: Not Found');
        }
      } catch (e) {
        print('🔴 Error reading cached token: $e');
      }
      
      print('=========================\n');
    }
  }

  /// Force refresh FCM token (useful for testing)
  Future<void> forceRefreshToken() async {
    if (_messaging == null) {
      print('🔴 Cannot refresh token: messaging not initialized');
      return;
    }
    
    try {
      if (true) {
        print('🔄 Forcing FCM token refresh...');
      }
      
      // Clear cached token first
      await _clearCachedToken();
      
      // Get new token
      await _getFCMToken();
      
      if (true) {
        print('✅ Token refresh completed');
      }
    } catch (e) {
      if (true) {
        print('🔴 Error forcing token refresh: $e');
      }
    }
  }

  /// Test FCM token registration with current stored auth token
  Future<void> testTokenRegistration() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final authToken = prefs.getString('auth_token');
      
      if (authToken == null) {
        if (true) {
          print('❌ No auth token found in storage');
        }
        return;
      }
      
      if (true) {
        print('🧪 Testing FCM token registration...');
        print('   🔑 Auth token available: Yes');
      }
      
      await sendTokenToBackend(authToken);
      
    } catch (e) {
      if (true) {
        print('🔴 Error testing token registration: $e');
      }
    }
  }

  /// Validate token health with backend
  Future<bool> validateTokenWithBackend() async {
    if (_fcmToken == null) {
      if (true) {
        print('⚠️ Cannot validate token: no FCM token available');
      }
      return false;
    }

    try {
      final prefs = await SharedPreferences.getInstance();
      final authToken = prefs.getString('auth_token');
      
      if (authToken == null) {
        if (true) {
          print('⚠️ Cannot validate token: no auth token available');
        }
        return false;
      }

      if (true) {
        print('🔍 Validating FCM token health with backend...');
      }

      final response = await http.post(
        Uri.parse('https://akl.3an3an.ma/api/Notification/manager/validate-token'),
        headers: {
          'Authorization': 'Bearer $authToken',
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'token': _fcmToken,
        }),
      ).timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        if (true) {
          print('✅ Token validation successful: token is healthy');
        }
        return true;
      } else if (response.statusCode == 400 || response.statusCode == 410) {
        if (true) {
          print('❌ Token validation failed: token is invalid/expired');
          print('   🔄 Will force refresh token...');
        }
        // Token is invalid, force refresh
        await forceRefreshToken();
        return false;
      } else {
        if (true) {
          print('⚠️ Token validation inconclusive: ${response.statusCode}');
        }
        return true; // Assume valid if server error
      }
    } catch (e) {
      if (true) {
        print('🔴 Error validating token: $e');
        print('   📝 Assuming token is valid (network/server issue)');
      }
      return true; // Assume valid on network errors
    }
  }

  /// Intelligent token refresh based on age and backend validation
  Future<void> performIntelligentTokenRefresh({bool forceValidation = false}) async {
    try {
      if (true) {
        print('🧠 Performing intelligent token refresh analysis...');
      }

      final prefs = await SharedPreferences.getInstance();
      final tokenTimestamp = prefs.getInt('fcm_token_timestamp') ?? 0;
      final now = DateTime.now().millisecondsSinceEpoch;
      final tokenAgeDays = ((now - tokenTimestamp) / (24 * 60 * 60 * 1000));

      if (true) {
        print('   📊 Token age: ${tokenAgeDays.toStringAsFixed(1)} days');
      }

      // Strategy based on token age
      if (tokenAgeDays >= 270) {
        // Token expired, must refresh
        if (true) {
          print('   🔴 Token expired (≥270 days), forcing refresh...');
        }
        await forceRefreshToken();
      } else if (tokenAgeDays >= 60 || forceValidation) {
        // Token is old (60+ days), validate with backend
        if (true) {
          print('   🔍 Token is aging (${tokenAgeDays.toStringAsFixed(1)} days), validating with backend...');
        }
        final isValid = await validateTokenWithBackend();
        if (!isValid) {
          if (true) {
            print('   🔄 Backend validation failed, token was refreshed');
          }
        }
      } else if (tokenAgeDays >= 30) {
        // Token is stale but likely valid, proactive refresh
        if (true) {
          print('   ⚠️ Token is stale (${tokenAgeDays.toStringAsFixed(1)} days), scheduling proactive refresh...');
        }
        _scheduleProactiveTokenRefresh();
      } else {
        // Token is fresh
        if (true) {
          print('   ✅ Token is fresh (${tokenAgeDays.toStringAsFixed(1)} days), no action needed');
        }
      }
    } catch (e) {
      if (true) {
        print('🔴 Error in intelligent token refresh: $e');
      }
    }
  }
}