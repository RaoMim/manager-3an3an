import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/city.dart';
import '../models/api_response.dart';
import 'auth_service.dart';

class CityService {
  static const String _baseUrl = 'https://akl.3an3an.ma/api';
  static const String _citiesEndpoint = '$_baseUrl/City';
  static const int defaultPageSize = 50;

  final AuthService _authService = AuthService();

  /// Fetch cities with optional filtering and pagination
  Future<ApiResponse<List<City>>> getCities({
    int page = 1,
    int pageSize = defaultPageSize,
    bool? isActive,
    String? search,
    String? province,
    String? region,
    bool orderByName = true,
  }) async {
    try {
      // Build query parameters
      final queryParams = <String, String>{
        'page': page.toString(),
        'pageSize': pageSize.toString(),
      };

      if (isActive != null) {
        queryParams['isActive'] = isActive.toString();
      }

      if (search != null && search.isNotEmpty) {
        queryParams['search'] = search;
      }

      if (province != null && province.isNotEmpty) {
        queryParams['province'] = province;
      }

      if (region != null && region.isNotEmpty) {
        queryParams['region'] = region;
      }

      if (orderByName) {
        queryParams['orderBy'] = 'name';
      }

      // Build URL with query parameters
      final uri = Uri.parse(_citiesEndpoint).replace(queryParameters: queryParams);

      // Make authenticated request
      final response = await _authService.authenticatedRequest('GET', uri.toString());

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<List<City>>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final List<dynamic> citiesJson = jsonDecode(response.body);
        final cities = citiesJson.map((json) => City.fromJson(json)).toList();
        
        return ApiResponse<List<City>>.success(cities);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement des villes';
        return ApiResponse<List<City>>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<List<City>>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Get all active cities (for filtering dropdowns)
  Future<ApiResponse<List<City>>> getActiveCities() async {
    return getCities(
      isActive: true,
      pageSize: 200, // Get all active cities
    );
  }

  /// Get a specific city by ID
  Future<ApiResponse<City>> getCityById(int cityId) async {
    try {
      final url = '$_citiesEndpoint/$cityId';
      final response = await _authService.authenticatedRequest('GET', url);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<City>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final cityJson = jsonDecode(response.body);
        final city = City.fromJson(cityJson);
        return ApiResponse<City>.success(city);
      } else if (response.statusCode == 404) {
        return ApiResponse<City>.error('Ville non trouvée');
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement de la ville';
        return ApiResponse<City>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<City>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Search cities by name
  Future<ApiResponse<List<City>>> searchCities(String query, {
    int page = 1, 
    int pageSize = 20,
    bool activeOnly = true,
  }) async {
    return getCities(
      page: page,
      pageSize: pageSize,
      search: query,
      isActive: activeOnly ? true : null,
    );
  }

  /// Get cities by province
  Future<ApiResponse<List<City>>> getCitiesByProvince(String province, {
    int page = 1, 
    int pageSize = defaultPageSize,
    bool activeOnly = true,
  }) async {
    return getCities(
      page: page,
      pageSize: pageSize,
      province: province,
      isActive: activeOnly ? true : null,
    );
  }

  /// Get cities by region
  Future<ApiResponse<List<City>>> getCitiesByRegion(String region, {
    int page = 1, 
    int pageSize = defaultPageSize,
    bool activeOnly = true,
  }) async {
    return getCities(
      page: page,
      pageSize: pageSize,
      region: region,
      isActive: activeOnly ? true : null,
    );
  }

  /// Get city statistics for dashboard
  Future<ApiResponse<CityStatistics>> getCityStatistics({
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

      final uri = Uri.parse('$_citiesEndpoint/statistics').replace(queryParameters: queryParams);
      final response = await _authService.authenticatedRequest('GET', uri.toString());

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<CityStatistics>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final statsJson = jsonDecode(response.body);
        final statistics = CityStatistics.fromJson(statsJson);
        return ApiResponse<CityStatistics>.success(statistics);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement des statistiques';
        return ApiResponse<CityStatistics>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<CityStatistics>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Update city active status
  Future<ApiResponse<City>> updateCityStatus(int cityId, bool isActive, {String? reason}) async {
    try {
      final url = '$_citiesEndpoint/$cityId/status';
      final body = {
        'isActive': isActive,
        if (reason != null && reason.isNotEmpty) 'reason': reason,
      };

      final response = await _authService.authenticatedRequest('PUT', url, body: body);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<City>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final cityJson = jsonDecode(response.body);
        final city = City.fromJson(cityJson);
        return ApiResponse<City>.success(city);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors de la mise à jour du statut';
        return ApiResponse<City>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<City>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Update city delivery fee
  Future<ApiResponse<City>> updateCityDeliveryFee(int cityId, double deliveryFee) async {
    try {
      final url = '$_citiesEndpoint/$cityId/delivery-fee';
      final body = {
        'deliveryFee': deliveryFee,
      };

      final response = await _authService.authenticatedRequest('PUT', url, body: body);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<City>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final cityJson = jsonDecode(response.body);
        final city = City.fromJson(cityJson);
        return ApiResponse<City>.success(city);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors de la mise à jour des frais de livraison';
        return ApiResponse<City>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<City>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Get cities with orders (cities that have orders)
  Future<ApiResponse<List<City>>> getCitiesWithOrders({
    DateTime? fromDate,
    DateTime? toDate,
  }) async {
    try {
      final queryParams = <String, String>{
        'withOrders': 'true',
      };

      if (fromDate != null) {
        queryParams['fromDate'] = fromDate.toIso8601String();
      }

      if (toDate != null) {
        queryParams['toDate'] = toDate.toIso8601String();
      }

      final uri = Uri.parse(_citiesEndpoint).replace(queryParameters: queryParams);
      final response = await _authService.authenticatedRequest('GET', uri.toString());

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<List<City>>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final List<dynamic> citiesJson = jsonDecode(response.body);
        final cities = citiesJson.map((json) => City.fromJson(json)).toList();
        return ApiResponse<List<City>>.success(cities);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement des villes avec commandes';
        return ApiResponse<List<City>>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<List<City>>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Get top performing cities by order count
  Future<ApiResponse<List<City>>> getTopPerformingCities({
    int limit = 10,
    DateTime? fromDate,
    DateTime? toDate,
  }) async {
    try {
      final queryParams = <String, String>{
        'top': limit.toString(),
        'orderBy': 'orderCount',
        'orderDirection': 'desc',
      };

      if (fromDate != null) {
        queryParams['fromDate'] = fromDate.toIso8601String();
      }

      if (toDate != null) {
        queryParams['toDate'] = toDate.toIso8601String();
      }

      final uri = Uri.parse(_citiesEndpoint).replace(queryParameters: queryParams);
      final response = await _authService.authenticatedRequest('GET', uri.toString());

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<List<City>>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final List<dynamic> citiesJson = jsonDecode(response.body);
        final cities = citiesJson.map((json) => City.fromJson(json)).toList();
        return ApiResponse<List<City>>.success(cities);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement des villes performantes';
        return ApiResponse<List<City>>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<List<City>>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Get all provinces (for filtering)
  Future<ApiResponse<List<String>>> getProvinces() async {
    try {
      final url = '$_citiesEndpoint/provinces';
      final response = await _authService.authenticatedRequest('GET', url);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<List<String>>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final List<dynamic> provincesJson = jsonDecode(response.body);
        final provinces = provincesJson.cast<String>();
        return ApiResponse<List<String>>.success(provinces);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement des provinces';
        return ApiResponse<List<String>>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<List<String>>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Get all regions (for filtering)
  Future<ApiResponse<List<String>>> getRegions() async {
    try {
      final url = '$_citiesEndpoint/regions';
      final response = await _authService.authenticatedRequest('GET', url);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<List<String>>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final List<dynamic> regionsJson = jsonDecode(response.body);
        final regions = regionsJson.cast<String>();
        return ApiResponse<List<String>>.success(regions);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement des régions';
        return ApiResponse<List<String>>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<List<String>>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }
}