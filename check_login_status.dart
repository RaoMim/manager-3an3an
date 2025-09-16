import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  print('🔍 Checking recent manager FCM tokens...\n');
  
  // Test credentials - you may need to adjust these
  const String testPhone = '0612345678'; // Use the phone you just logged in with
  const String testPassword = 'test123'; // Use the password you just used
  
  try {
    // Authenticate to get token
    print('1. 🔐 Authenticating manager...');
    final authResponse = await http.post(
      Uri.parse('https://akl.3an3an.ma/api/Manager/auth'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'Phone': testPhone,
        'Password': testPassword,
      }),
    );

    if (authResponse.statusCode != 200) {
      print('❌ Authentication failed. Please update credentials in the script.');
      return;
    }

    final authData = jsonDecode(authResponse.body);
    if (!authData['Success']) {
      print('❌ Authentication failed: ${authData['Message']}');
      return;
    }

    final String authToken = authData['Data']['Token'];
    final manager = authData['Data']['Manager'];
    
    print('✅ Authentication successful');
    print('   Manager: ${manager['Name']} (ID: ${manager['Id']})');
    print('   Phone: ${manager['Phone']}\n');

    // Get FCM tokens for this manager
    print('2. 📱 Retrieving FCM tokens...');
    final tokensResponse = await http.get(
      Uri.parse('https://akl.3an3an.ma/api/Notification/manager/tokens'),
      headers: {
        'Authorization': 'Bearer $authToken',
        'Content-Type': 'application/json',
      },
    );

    print('   Response status: ${tokensResponse.statusCode}');
    print('   Response body: ${tokensResponse.body}\n');

    if (tokensResponse.statusCode == 200) {
      final responseData = jsonDecode(tokensResponse.body);
      final tokens = responseData['Data'] ?? [];
      
      print('✅ FCM Tokens Retrieved Successfully');
      print('   Active tokens: ${tokens.length}');
      
      for (int i = 0; i < tokens.length; i++) {
        final token = tokens[i];
        print('\n   📱 Token ${i + 1}:');
        print('      🔑 Token: ${token['token'].substring(0, 50)}...');
        print('      📱 Device: ${token['deviceInfo']}');
        print('      📅 Created: ${token['createdAt']}');
        print('      📅 Updated: ${token['updatedAt']}');
        print('      ✅ Active: ${token['isActive']}');
      }
      
      if (tokens.isNotEmpty) {
        print('\n🎉 SUCCESS: FCM token(s) found in database!');
        print('   This confirms your login FCM flow worked correctly.');
      } else {
        print('\n⚠️  No FCM tokens found for this manager.');
        print('   This might indicate the FCM registration failed during login.');
      }
    } else {
      print('❌ Failed to retrieve FCM tokens');
      print('   Status: ${tokensResponse.statusCode}');
      print('   Response: ${tokensResponse.body}');
    }
    
  } catch (e) {
    print('❌ Error occurred: $e');
  }
}