import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/transporter.dart';
import '../models/api_response.dart';
import 'auth_service.dart';

class TransporterService {
  static const String _baseUrl = 'https://akl.3an3an.ma/api';
  static const String _transportersEndpoint = '$_baseUrl/Transporter';
  static const int defaultPageSize = 20;

  final AuthService _authService = AuthService();

  /// Fetch transporters with optional filtering and pagination
  Future<ApiResponse<List<Transporter>>> getTransporters({
    int page = 1,
    int pageSize = defaultPageSize,
    String? status,
    int? cityId,
    bool? isBlocked,
    bool? availableOnly,
    String? search,
    double? minRating,
    int? minDeliveries,
  }) async {
    try {
      // Build query parameters
      final queryParams = <String, String>{
        'page': page.toString(),
        'pageSize': pageSize.toString(),
      };

      if (status != null && status.isNotEmpty && status != 'all') {
        queryParams['status'] = status;
      }

      if (cityId != null) {
        queryParams['cityId'] = cityId.toString();
      }

      if (isBlocked != null) {
        queryParams['isBlocked'] = isBlocked.toString();
      }

      if (availableOnly == true) {
        queryParams['availableOnly'] = 'true';
      }

      if (search != null && search.isNotEmpty) {
        queryParams['search'] = search;
      }

      if (minRating != null) {
        queryParams['minRating'] = minRating.toString();
      }

      if (minDeliveries != null) {
        queryParams['minDeliveries'] = minDeliveries.toString();
      }

      // Build URL with query parameters
      final uri = Uri.parse(_transportersEndpoint).replace(queryParameters: queryParams);

      // Make authenticated request
      final response = await _authService.authenticatedRequest('GET', uri.toString());

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<List<Transporter>>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final List<dynamic> transportersJson = jsonDecode(response.body);
        final transporters = transportersJson.map((json) => Transporter.fromJson(json)).toList();
        
        return ApiResponse<List<Transporter>>.success(transporters);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement des transporteurs';
        return ApiResponse<List<Transporter>>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<List<Transporter>>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Get a specific transporter by ID
  Future<ApiResponse<Transporter>> getTransporterById(int transporterId) async {
    try {
      final url = '$_transportersEndpoint/$transporterId';
      final response = await _authService.authenticatedRequest('GET', url);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<Transporter>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final transporterJson = jsonDecode(response.body);
        final transporter = Transporter.fromJson(transporterJson);
        return ApiResponse<Transporter>.success(transporter);
      } else if (response.statusCode == 404) {
        return ApiResponse<Transporter>.error('Transporteur non trouvé');
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement du transporteur';
        return ApiResponse<Transporter>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<Transporter>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Get available transporters for order assignment
  Future<ApiResponse<List<Transporter>>> getAvailableTransporters({
    int? cityId,
    double? latitude,
    double? longitude,
    double? maxDistanceKm = 10.0,
  }) async {
    try {
      final queryParams = <String, String>{
        'availableOnly': 'true',
      };

      if (cityId != null) {
        queryParams['cityId'] = cityId.toString();
      }

      if (latitude != null && longitude != null) {
        queryParams['latitude'] = latitude.toString();
        queryParams['longitude'] = longitude.toString();
        queryParams['maxDistance'] = maxDistanceKm.toString();
      }

      final uri = Uri.parse('$_transportersEndpoint/available').replace(queryParameters: queryParams);
      final response = await _authService.authenticatedRequest('GET', uri.toString());

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<List<Transporter>>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final List<dynamic> transportersJson = jsonDecode(response.body);
        final transporters = transportersJson.map((json) => Transporter.fromJson(json)).toList();
        return ApiResponse<List<Transporter>>.success(transporters);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement des transporteurs disponibles';
        return ApiResponse<List<Transporter>>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<List<Transporter>>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Block or unblock a transporter
  Future<ApiResponse<Transporter>> updateTransporterBlockStatus(int transporterId, bool blocked, {String? reason}) async {
    try {
      final url = '$_transportersEndpoint/$transporterId/block';
      final body = {
        'blocked': blocked,
        if (reason != null && reason.isNotEmpty) 'reason': reason,
      };

      final response = await _authService.authenticatedRequest('PUT', url, body: body);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<Transporter>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final transporterJson = jsonDecode(response.body);
        final transporter = Transporter.fromJson(transporterJson);
        return ApiResponse<Transporter>.success(transporter);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors de la mise à jour du statut';
        return ApiResponse<Transporter>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<Transporter>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Update transporter status (online, offline, busy, etc.)
  Future<ApiResponse<Transporter>> updateTransporterStatus(int transporterId, String status) async {
    try {
      final url = '$_transportersEndpoint/$transporterId/status';
      final body = {
        'status': status,
      };

      final response = await _authService.authenticatedRequest('PUT', url, body: body);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<Transporter>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final transporterJson = jsonDecode(response.body);
        final transporter = Transporter.fromJson(transporterJson);
        return ApiResponse<Transporter>.success(transporter);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors de la mise à jour du statut';
        return ApiResponse<Transporter>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<Transporter>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Get transporter statistics for dashboard
  Future<ApiResponse<TransporterStatistics>> getTransporterStatistics({
    DateTime? fromDate,
    DateTime? toDate,
    int? cityId,
  }) async {
    try {
      final queryParams = <String, String>{};

      if (fromDate != null) {
        queryParams['fromDate'] = fromDate.toIso8601String();
      }

      if (toDate != null) {
        queryParams['toDate'] = toDate.toIso8601String();
      }

      if (cityId != null) {
        queryParams['cityId'] = cityId.toString();
      }

      final uri = Uri.parse('$_transportersEndpoint/statistics').replace(queryParameters: queryParams);
      final response = await _authService.authenticatedRequest('GET', uri.toString());

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<TransporterStatistics>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final statsJson = jsonDecode(response.body);
        final statistics = TransporterStatistics.fromJson(statsJson);
        return ApiResponse<TransporterStatistics>.success(statistics);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement des statistiques';
        return ApiResponse<TransporterStatistics>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<TransporterStatistics>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Update transporter location
  Future<ApiResponse<void>> updateTransporterLocation(
    int transporterId, 
    double latitude, 
    double longitude
  ) async {
    try {
      final url = '$_transportersEndpoint/$transporterId/location';
      final body = {
        'latitude': latitude,
        'longitude': longitude,
      };

      final response = await _authService.authenticatedRequest('PUT', url, body: body);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<void>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        return ApiResponse<void>.success(null);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors de la mise à jour de la localisation';
        return ApiResponse<void>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<void>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Search transporters by name, phone, or email
  Future<ApiResponse<List<Transporter>>> searchTransporters(String query, {int page = 1, int pageSize = defaultPageSize}) async {
    return getTransporters(
      page: page,
      pageSize: pageSize,
      search: query,
    );
  }

  /// Get transporters by status
  Future<ApiResponse<List<Transporter>>> getTransportersByStatus(String status, {int page = 1, int pageSize = defaultPageSize}) async {
    return getTransporters(
      page: page,
      pageSize: pageSize,
      status: status,
    );
  }

  /// Get blocked transporters
  Future<ApiResponse<List<Transporter>>> getBlockedTransporters({int page = 1, int pageSize = defaultPageSize}) async {
    return getTransporters(
      page: page,
      pageSize: pageSize,
      isBlocked: true,
    );
  }

  /// Get online transporters
  Future<ApiResponse<List<Transporter>>> getOnlineTransporters({int page = 1, int pageSize = defaultPageSize}) async {
    return getTransporters(
      page: page,
      pageSize: pageSize,
      status: 'en ligne',
    );
  }

  /// Get top rated transporters
  Future<ApiResponse<List<Transporter>>> getTopRatedTransporters({
    int page = 1, 
    int pageSize = defaultPageSize,
    double minRating = 4.0,
  }) async {
    return getTransporters(
      page: page,
      pageSize: pageSize,
      minRating: minRating,
    );
  }
}