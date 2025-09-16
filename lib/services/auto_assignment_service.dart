import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/auto_assignment_config.dart';
import '../models/api_response.dart';
import 'auth_service.dart';

class AutoAssignmentService {
  static const String _baseUrl = 'https://akl.3an3an.ma/api';
  static const String _autoAssignmentEndpoint = '$_baseUrl/AutoAssignment';

  final AuthService _authService = AuthService();

  /// Get current auto-assignment configuration
  Future<ApiResponse<AutoAssignmentConfig>> getConfig() async {
    try {
      final url = '$_autoAssignmentEndpoint/config';
      final response = await _authService.authenticatedRequest('GET', url);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<AutoAssignmentConfig>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final configJson = jsonDecode(response.body);
        final config = AutoAssignmentConfig.fromJson(configJson);
        return ApiResponse<AutoAssignmentConfig>.success(config);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement de la configuration';
        return ApiResponse<AutoAssignmentConfig>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<AutoAssignmentConfig>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Update auto-assignment configuration
  Future<ApiResponse<AutoAssignmentConfig>> updateConfig(AutoAssignmentConfig config) async {
    try {
      final url = '$_autoAssignmentEndpoint/config';
      final body = config.toJson();

      final response = await _authService.authenticatedRequest('PUT', url, body: body);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<AutoAssignmentConfig>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final configJson = jsonDecode(response.body);
        final updatedConfig = AutoAssignmentConfig.fromJson(configJson);
        return ApiResponse<AutoAssignmentConfig>.success(updatedConfig);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors de la mise à jour de la configuration';
        return ApiResponse<AutoAssignmentConfig>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<AutoAssignmentConfig>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Enable or disable auto-assignment
  Future<ApiResponse<AutoAssignmentConfig>> toggleAutoAssignment(bool enabled) async {
    try {
      final url = '$_autoAssignmentEndpoint/config/toggle';
      final body = {
        'isEnabled': enabled,
      };

      final response = await _authService.authenticatedRequest('PUT', url, body: body);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<AutoAssignmentConfig>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final configJson = jsonDecode(response.body);
        final config = AutoAssignmentConfig.fromJson(configJson);
        return ApiResponse<AutoAssignmentConfig>.success(config);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors de la modification du statut';
        return ApiResponse<AutoAssignmentConfig>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<AutoAssignmentConfig>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Get auto-assignment statistics
  Future<ApiResponse<AutoAssignmentStats>> getStatistics({
    DateTime? fromDate,
    DateTime? toDate,
  }) async {
    try {
      final queryParams = <String, String>{};

      if (fromDate != null) {
        queryParams['fromDate'] = fromDate.toIso8601String();
      }

      if (toDate != null) {
        queryParams['toDate'] = toDate.toIso8601String();
      }

      final uri = Uri.parse('$_autoAssignmentEndpoint/statistics').replace(queryParameters: queryParams);
      final response = await _authService.authenticatedRequest('GET', uri.toString());

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<AutoAssignmentStats>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final statsJson = jsonDecode(response.body);
        final statistics = AutoAssignmentStats.fromJson(statsJson);
        return ApiResponse<AutoAssignmentStats>.success(statistics);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement des statistiques';
        return ApiResponse<AutoAssignmentStats>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<AutoAssignmentStats>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Get auto-assignment rules
  Future<ApiResponse<List<AutoAssignmentRule>>> getRules({
    bool? isActive,
    int page = 1,
    int pageSize = 20,
  }) async {
    try {
      final queryParams = <String, String>{
        'page': page.toString(),
        'pageSize': pageSize.toString(),
      };

      if (isActive != null) {
        queryParams['isActive'] = isActive.toString();
      }

      final uri = Uri.parse('$_autoAssignmentEndpoint/rules').replace(queryParameters: queryParams);
      final response = await _authService.authenticatedRequest('GET', uri.toString());

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<List<AutoAssignmentRule>>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final List<dynamic> rulesJson = jsonDecode(response.body);
        final rules = rulesJson.map((json) => AutoAssignmentRule.fromJson(json)).toList();
        return ApiResponse<List<AutoAssignmentRule>>.success(rules);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement des règles';
        return ApiResponse<List<AutoAssignmentRule>>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<List<AutoAssignmentRule>>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Create a new auto-assignment rule
  Future<ApiResponse<AutoAssignmentRule>> createRule(AutoAssignmentRule rule) async {
    try {
      final url = '$_autoAssignmentEndpoint/rules';
      final body = rule.toJson();

      final response = await _authService.authenticatedRequest('POST', url, body: body);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<AutoAssignmentRule>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200 || response.statusCode == 201) {
        final ruleJson = jsonDecode(response.body);
        final createdRule = AutoAssignmentRule.fromJson(ruleJson);
        return ApiResponse<AutoAssignmentRule>.success(createdRule);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors de la création de la règle';
        return ApiResponse<AutoAssignmentRule>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<AutoAssignmentRule>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Update an auto-assignment rule
  Future<ApiResponse<AutoAssignmentRule>> updateRule(int ruleId, AutoAssignmentRule rule) async {
    try {
      final url = '$_autoAssignmentEndpoint/rules/$ruleId';
      final body = rule.toJson();

      final response = await _authService.authenticatedRequest('PUT', url, body: body);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<AutoAssignmentRule>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final ruleJson = jsonDecode(response.body);
        final updatedRule = AutoAssignmentRule.fromJson(ruleJson);
        return ApiResponse<AutoAssignmentRule>.success(updatedRule);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors de la mise à jour de la règle';
        return ApiResponse<AutoAssignmentRule>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<AutoAssignmentRule>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Delete an auto-assignment rule
  Future<ApiResponse<void>> deleteRule(int ruleId) async {
    try {
      final url = '$_autoAssignmentEndpoint/rules/$ruleId';
      final response = await _authService.authenticatedRequest('DELETE', url);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<void>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200 || response.statusCode == 204) {
        return ApiResponse<void>.success(null);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors de la suppression de la règle';
        return ApiResponse<void>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<void>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Toggle rule active status
  Future<ApiResponse<AutoAssignmentRule>> toggleRule(int ruleId, bool isActive) async {
    try {
      final url = '$_autoAssignmentEndpoint/rules/$ruleId/toggle';
      final body = {
        'isActive': isActive,
      };

      final response = await _authService.authenticatedRequest('PUT', url, body: body);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<AutoAssignmentRule>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final ruleJson = jsonDecode(response.body);
        final rule = AutoAssignmentRule.fromJson(ruleJson);
        return ApiResponse<AutoAssignmentRule>.success(rule);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors de la modification du statut de la règle';
        return ApiResponse<AutoAssignmentRule>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<AutoAssignmentRule>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Test auto-assignment for a specific order
  Future<ApiResponse<Map<String, dynamic>>> testAssignment(int orderId) async {
    try {
      final url = '$_autoAssignmentEndpoint/test/$orderId';
      final response = await _authService.authenticatedRequest('POST', url);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<Map<String, dynamic>>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final testResult = jsonDecode(response.body) as Map<String, dynamic>;
        return ApiResponse<Map<String, dynamic>>.success(testResult);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du test d\'assignation';
        return ApiResponse<Map<String, dynamic>>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<Map<String, dynamic>>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Manually trigger auto-assignment for pending orders
  Future<ApiResponse<Map<String, dynamic>>> triggerAssignment({
    List<int>? orderIds,
    List<String>? statuses,
    int? cityId,
  }) async {
    try {
      final url = '$_autoAssignmentEndpoint/trigger';
      final body = <String, dynamic>{};

      if (orderIds != null && orderIds.isNotEmpty) {
        body['orderIds'] = orderIds;
      }

      if (statuses != null && statuses.isNotEmpty) {
        body['statuses'] = statuses;
      }

      if (cityId != null) {
        body['cityId'] = cityId;
      }

      final response = await _authService.authenticatedRequest('POST', url, body: body);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<Map<String, dynamic>>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body) as Map<String, dynamic>;
        return ApiResponse<Map<String, dynamic>>.success(result);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du déclenchement de l\'assignation';
        return ApiResponse<Map<String, dynamic>>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<Map<String, dynamic>>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Get assignment history/logs
  Future<ApiResponse<List<Map<String, dynamic>>>> getAssignmentHistory({
    DateTime? fromDate,
    DateTime? toDate,
    int? orderId,
    int? transporterId,
    bool? successful,
    int page = 1,
    int pageSize = 20,
  }) async {
    try {
      final queryParams = <String, String>{
        'page': page.toString(),
        'pageSize': pageSize.toString(),
      };

      if (fromDate != null) {
        queryParams['fromDate'] = fromDate.toIso8601String();
      }

      if (toDate != null) {
        queryParams['toDate'] = toDate.toIso8601String();
      }

      if (orderId != null) {
        queryParams['orderId'] = orderId.toString();
      }

      if (transporterId != null) {
        queryParams['transporterId'] = transporterId.toString();
      }

      if (successful != null) {
        queryParams['successful'] = successful.toString();
      }

      final uri = Uri.parse('$_autoAssignmentEndpoint/history').replace(queryParameters: queryParams);
      final response = await _authService.authenticatedRequest('GET', uri.toString());

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<List<Map<String, dynamic>>>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final List<dynamic> historyJson = jsonDecode(response.body);
        final history = historyJson.cast<Map<String, dynamic>>();
        return ApiResponse<List<Map<String, dynamic>>>.success(history);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement de l\'historique';
        return ApiResponse<List<Map<String, dynamic>>>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<List<Map<String, dynamic>>>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Reset auto-assignment statistics
  Future<ApiResponse<void>> resetStatistics() async {
    try {
      final url = '$_autoAssignmentEndpoint/statistics/reset';
      final response = await _authService.authenticatedRequest('POST', url);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<void>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200 || response.statusCode == 204) {
        return ApiResponse<void>.success(null);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors de la réinitialisation des statistiques';
        return ApiResponse<void>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<void>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }
}