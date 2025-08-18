import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../models/api_response.dart';
import 'firebase_notifications_helper.dart';

class AuthService {
  static const String _baseUrl = 'https://akl.3an3an.ma/api';
  static const String _authEndpoint = '$_baseUrl/Manager/auth';
  static const String _tokenKey = 'auth_token';
  static const String _managerKey = 'manager_info';

  // Phone number validation regex for Moroccan numbers
  static final RegExp _phoneRegex = RegExp(r'^(0|\+?212)[5-9]\d{8}$');

  /// Validate Moroccan phone number format
  static bool validatePhone(String phone) {
    return _phoneRegex.hasMatch(phone.trim());
  }

  /// Validate password (minimum 6 characters)
  static bool validatePassword(String password) {
    return password.length >= 6;
  }

  /// Authenticate manager with phone and password
  Future<AuthResponse> login(String phone, String password) async {
    try {
      // Validate input
      if (phone.isEmpty || password.isEmpty) {
        return AuthResponse(
          success: false,
          message: 'Veuillez saisir votre numéro de téléphone et mot de passe',
        );
      }

      if (!validatePhone(phone)) {
        return AuthResponse(
          success: false,
          message: 'Numéro de téléphone invalide. Format: 0612345678 ou +212612345678',
        );
      }

      if (!validatePassword(password)) {
        return AuthResponse(
          success: false,
          message: 'Le mot de passe doit contenir au moins 6 caractères',
        );
      }

      // Prepare request
      final response = await http.post(
        Uri.parse(_authEndpoint),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'Phone': phone.trim(),
          'Password': password,
        }),
      );

      // Parse response
      final responseData = jsonDecode(response.body);

      if (response.statusCode == 200 && responseData['Success'] == true) {
        final authResponse = AuthResponse.fromJson(responseData);
        
        if (authResponse.token != null) {
          // Store token and manager info
          await _storeAuthData(authResponse.token!, authResponse.manager);
          
          // Register FCM token with backend
          try {
            await FirebaseNotificationsHelper().sendTokenToBackend(authResponse.token!);
          } catch (e) {
            // Don't fail login if FCM registration fails
            if (kDebugMode) {
              print('Failed to register FCM token: $e');
            }
          }
          
          return authResponse;
        } else {
          return AuthResponse(
            success: false,
            message: 'Token non reçu du serveur',
          );
        }
      } else {
        return AuthResponse(
          success: false,
          message: responseData['Message'] ?? 'Identifiants invalides',
        );
      }
    } catch (e) {
      return AuthResponse(
        success: false,
        message: 'Erreur de connexion. Veuillez réessayer plus tard.',
      );
    }
  }

  /// Store authentication data locally
  Future<void> _storeAuthData(String token, Manager? manager) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_tokenKey, token);
    
    if (manager != null) {
      await prefs.setString(_managerKey, jsonEncode(manager.toJson()));
    }
  }

  /// Get stored authentication token
  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_tokenKey);
  }

  /// Get stored manager information
  Future<Manager?> getManager() async {
    final prefs = await SharedPreferences.getInstance();
    final managerJson = prefs.getString(_managerKey);
    
    if (managerJson != null) {
      try {
        final managerData = jsonDecode(managerJson);
        return Manager.fromJson(managerData);
      } catch (e) {
        // Invalid stored data, remove it
        await prefs.remove(_managerKey);
        return null;
      }
    }
    
    return null;
  }

  /// Check if user is authenticated
  Future<bool> isAuthenticated() async {
    final token = await getToken();
    return token != null && token.isNotEmpty;
  }

  /// Decode JWT token to extract user information
  Map<String, dynamic>? decodeToken(String token) {
    try {
      final parts = token.split('.');
      if (parts.length != 3) return null;

      final payload = parts[1];
      final normalized = payload.normalizeBase64Url();
      final decoded = utf8.decode(base64Url.decode(normalized));
      
      return jsonDecode(decoded);
    } catch (e) {
      return null;
    }
  }

  /// Check if token is expired
  bool isTokenExpired(String token) {
    final decoded = decodeToken(token);
    if (decoded == null) return true;

    final exp = decoded['exp'];
    if (exp == null) return true;

    final expirationDate = DateTime.fromMillisecondsSinceEpoch(exp * 1000);
    return DateTime.now().isAfter(expirationDate);
  }

  /// Validate current authentication status
  Future<bool> validateToken() async {
    final token = await getToken();
    if (token == null) return false;

    if (isTokenExpired(token)) {
      await logout();
      return false;
    }

    return true;
  }

  /// Logout user and clear stored data
  Future<void> logout() async {
    final token = await getToken();
    
    // Remove FCM token from backend before logout
    if (token != null) {
      try {
        await FirebaseNotificationsHelper().removeTokenFromBackend(token);
      } catch (e) {
        print('Failed to remove FCM token: $e');
      }
    }
    
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_tokenKey);
    await prefs.remove(_managerKey);
  }

  /// Get authorization headers for API requests
  Future<Map<String, String>> getAuthHeaders() async {
    final token = await getToken();
    return {
      'Content-Type': 'application/json',
      if (token != null) 'Authorization': 'Bearer $token',
    };
  }

  /// Make authenticated HTTP request
  Future<http.Response> authenticatedRequest(
    String method,
    String url, {
    Map<String, dynamic>? body,
    Map<String, String>? additionalHeaders,
  }) async {
    final headers = await getAuthHeaders();
    if (additionalHeaders != null) {
      headers.addAll(additionalHeaders);
    }

    final uri = Uri.parse(url);

    switch (method.toUpperCase()) {
      case 'GET':
        return await http.get(uri, headers: headers);
      case 'POST':
        return await http.post(
          uri,
          headers: headers,
          body: body != null ? jsonEncode(body) : null,
        );
      case 'PUT':
        return await http.put(
          uri,
          headers: headers,
          body: body != null ? jsonEncode(body) : null,
        );
      case 'DELETE':
        return await http.delete(uri, headers: headers);
      default:
        throw UnsupportedError('HTTP method $method not supported');
    }
  }

  /// Handle API response with authentication error handling
  Future<ApiResponse<T>> handleApiResponse<T>(
    http.Response response,
    T Function(Map<String, dynamic>)? fromJson,
  ) async {
    if (response.statusCode == 401) {
      await logout();
      return ApiResponse<T>.error('Votre session a expiré. Veuillez vous reconnecter.');
    }

    try {
      final responseData = jsonDecode(response.body);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        if (fromJson != null && responseData is Map<String, dynamic>) {
          final data = fromJson(responseData);
          return ApiResponse<T>.success(data);
        } else {
          return ApiResponse<T>.success(responseData);
        }
      } else {
        final errorMessage = responseData['Message'] ?? 
                           responseData['message'] ?? 
                           'Erreur lors de la requête';
        return ApiResponse<T>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<T>.error('Erreur lors du traitement de la réponse');
    }
  }
}

/// Extension to normalize base64 URL encoding
extension Base64UrlNormalize on String {
  String normalizeBase64Url() {
    var result = this;
    switch (result.length % 4) {
      case 0:
        break;
      case 2:
        result += '==';
        break;
      case 3:
        result += '=';
        break;
      default:
        throw Exception('Illegal base64url string');
    }
    return result;
  }
}