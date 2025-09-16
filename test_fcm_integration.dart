import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

void main() async {
  await testFCMTokenIntegration();
}

Future<void> testFCMTokenIntegration() async {
  print('=== Manager FCM Token Integration Test ===\n');

  // Test credentials (replace with actual test manager credentials)
  const String testPhone = '0612345678'; // Replace with valid test phone
  const String testPassword = 'test123'; // Replace with valid test password
  final String testFCMToken = 'test_fcm_token_${DateTime.now().millisecondsSinceEpoch}';

  try {
    // Step 1: Authenticate manager
    print('1. Authenticating manager...');
    final authResponse = await authenticateManager(testPhone, testPassword);
    
    if (!authResponse['success']) {
      print('❌ Authentication failed: ${authResponse['message']}');
      return;
    }
    
    final String authToken = authResponse['token'];
    print('✅ Authentication successful');
    print('   Token: ${authToken.substring(0, 20)}...\n');

    // Step 2: Register FCM token
    print('2. Registering FCM token...');
    final registerResponse = await registerFCMToken(authToken, testFCMToken);
    
    if (registerResponse['success']) {
      print('✅ FCM token registered successfully');
      print('   Response: ${registerResponse['message']}\n');
    } else {
      print('❌ FCM token registration failed: ${registerResponse['message']}\n');
    }

    // Step 3: Get manager FCM tokens
    print('3. Retrieving manager FCM tokens...');
    final tokensResponse = await getManagerFCMTokens(authToken);
    
    if (tokensResponse['success']) {
      final tokens = tokensResponse['data'];
      print('✅ Retrieved FCM tokens successfully');
      print('   Active tokens: ${tokens.length}');
      for (int i = 0; i < tokens.length; i++) {
        final token = tokens[i];
        print('   Token ${i + 1}: ${token['token'].substring(0, 20)}...');
        print('              Device: ${token['deviceInfo']}');
        print('              Created: ${token['createdAt']}');
      }
      print('');
    } else {
      print('❌ Failed to retrieve FCM tokens: ${tokensResponse['message']}\n');
    }

    // Step 4: Send test notification
    print('4. Sending test notification...');
    final testResponse = await sendTestNotification(authToken);
    
    if (testResponse['success']) {
      print('✅ Test notification sent successfully');
      print('   Response: ${testResponse['message']}\n');
    } else {
      print('❌ Failed to send test notification: ${testResponse['message']}\n');
    }

    // Step 5: Unregister FCM token
    print('5. Unregistering FCM token...');
    final unregisterResponse = await unregisterFCMToken(authToken, testFCMToken);
    
    if (unregisterResponse['success']) {
      print('✅ FCM token unregistered successfully');
      print('   Response: ${unregisterResponse['message']}\n');
    } else {
      print('❌ FCM token unregistration failed: ${unregisterResponse['message']}\n');
    }

    print('=== Test completed successfully ===');

  } catch (e) {
    print('❌ Test failed with error: $e');
  }
}

Future<Map<String, dynamic>> authenticateManager(String phone, String password) async {
  try {
    final response = await http.post(
      Uri.parse('https://akl.3an3an.ma/api/Manager/auth'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'Phone': phone,
        'Password': password,
      }),
    );

    final responseData = jsonDecode(response.body);

    if (response.statusCode == 200 && responseData['Success'] == true) {
      return {
        'success': true,
        'token': responseData['Data']['Token'],
        'manager': responseData['Data']['Manager'],
      };
    } else {
      return {
        'success': false,
        'message': responseData['Message'] ?? 'Authentication failed',
      };
    }
  } catch (e) {
    return {
      'success': false,
      'message': 'Network error: $e',
    };
  }
}

Future<Map<String, dynamic>> registerFCMToken(String authToken, String fcmToken) async {
  try {
    final response = await http.post(
      Uri.parse('https://akl.3an3an.ma/api/Notification/manager/register-token'),
      headers: {
        'Authorization': 'Bearer $authToken',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'token': fcmToken,
        'deviceInfo': 'test-android',
      }),
    );

    final responseData = jsonDecode(response.body);

    return {
      'success': response.statusCode == 200,
      'message': responseData['Message'] ?? responseData['message'] ?? 'Unknown response',
      'data': responseData['Data'] ?? responseData['data'],
    };
  } catch (e) {
    return {
      'success': false,
      'message': 'Network error: $e',
    };
  }
}

Future<Map<String, dynamic>> getManagerFCMTokens(String authToken) async {
  try {
    final response = await http.get(
      Uri.parse('https://akl.3an3an.ma/api/Notification/manager/tokens'),
      headers: {
        'Authorization': 'Bearer $authToken',
        'Content-Type': 'application/json',
      },
    );

    final responseData = jsonDecode(response.body);

    return {
      'success': response.statusCode == 200,
      'message': responseData['Message'] ?? responseData['message'] ?? 'Retrieved tokens',
      'data': responseData['Data'] ?? responseData['data'] ?? [],
    };
  } catch (e) {
    return {
      'success': false,
      'message': 'Network error: $e',
    };
  }
}

Future<Map<String, dynamic>> sendTestNotification(String authToken) async {
  try {
    final response = await http.post(
      Uri.parse('https://akl.3an3an.ma/api/Notification/manager/test-notification'),
      headers: {
        'Authorization': 'Bearer $authToken',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'title': 'Test Notification',
        'body': 'This is a test notification from FCM integration test',
        'data': {
          'test': 'integration_test',
          'timestamp': DateTime.now().toIso8601String(),
        }
      }),
    );

    final responseData = jsonDecode(response.body);

    return {
      'success': response.statusCode == 200,
      'message': responseData['Message'] ?? responseData['message'] ?? 'Test notification sent',
      'data': responseData['Data'] ?? responseData['data'],
    };
  } catch (e) {
    return {
      'success': false,
      'message': 'Network error: $e',
    };
  }
}

Future<Map<String, dynamic>> unregisterFCMToken(String authToken, String fcmToken) async {
  try {
    final response = await http.post(
      Uri.parse('https://akl.3an3an.ma/api/Notification/manager/unregister-token'),
      headers: {
        'Authorization': 'Bearer $authToken',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'token': fcmToken,
      }),
    );

    final responseData = jsonDecode(response.body);

    return {
      'success': response.statusCode == 200,
      'message': responseData['Message'] ?? responseData['message'] ?? 'Token unregistered',
      'data': responseData['Data'] ?? responseData['data'],
    };
  } catch (e) {
    return {
      'success': false,
      'message': 'Network error: $e',
    };
  }
}