import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/order.dart';
import '../models/api_response.dart';
import 'auth_service.dart';

class OrdersService {
  static const String _baseUrl = 'https://akl.3an3an.ma/api';
  static const String _ordersEndpoint = '$_baseUrl/Order';
  static const int defaultPageSize = 15;

  final AuthService _authService = AuthService();

  /// Fetch orders with optional filtering and pagination
  Future<ApiResponse<List<Order>>> getOrders({
    int page = 1,
    int pageSize = defaultPageSize,
    String? status,
    String? search,
    int? cityId,
    DateTime? fromDate,
    DateTime? toDate,
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

      if (search != null && search.isNotEmpty) {
        queryParams['search'] = search;
      }

      if (cityId != null) {
        queryParams['cityId'] = cityId.toString();
      }

      if (fromDate != null) {
        queryParams['fromDate'] = fromDate.toIso8601String();
      }

      if (toDate != null) {
        queryParams['toDate'] = toDate.toIso8601String();
      }

      // Build URL with query parameters
      final uri = Uri.parse(_ordersEndpoint).replace(queryParameters: queryParams);

      // Make authenticated request
      final response = await _authService.authenticatedRequest('GET', uri.toString());

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<List<Order>>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final List<dynamic> ordersJson = jsonDecode(response.body);
        final orders = ordersJson.map((json) => Order.fromJson(json)).toList();
        
        return ApiResponse<List<Order>>.success(orders);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement des commandes';
        return ApiResponse<List<Order>>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<List<Order>>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Get a specific order by ID
  Future<ApiResponse<Order>> getOrderById(int orderId) async {
    try {
      final url = '$_ordersEndpoint/$orderId';
      final response = await _authService.authenticatedRequest('GET', url);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<Order>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final orderJson = jsonDecode(response.body);
        final order = Order.fromJson(orderJson);
        return ApiResponse<Order>.success(order);
      } else if (response.statusCode == 404) {
        return ApiResponse<Order>.error('Commande non trouvée');
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement de la commande';
        return ApiResponse<Order>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<Order>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Update order status
  Future<ApiResponse<Order>> updateOrderStatus(int orderId, String newStatus, {String? note}) async {
    try {
      final url = '$_ordersEndpoint/$orderId/status';
      final body = {
        'status': newStatus,
        if (note != null && note.isNotEmpty) 'note': note,
      };

      final response = await _authService.authenticatedRequest('PUT', url, body: body);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<Order>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final orderJson = jsonDecode(response.body);
        final order = Order.fromJson(orderJson);
        return ApiResponse<Order>.success(order);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors de la mise à jour du statut';
        return ApiResponse<Order>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<Order>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Assign transporter to order
  Future<ApiResponse<Order>> assignTransporter(int orderId, int transporterId) async {
    try {
      final url = '$_ordersEndpoint/$orderId/assign';
      final body = {
        'transporterId': transporterId,
      };

      final response = await _authService.authenticatedRequest('PUT', url, body: body);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<Order>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final orderJson = jsonDecode(response.body);
        final order = Order.fromJson(orderJson);
        return ApiResponse<Order>.success(order);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors de l\'assignation du transporteur';
        return ApiResponse<Order>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<Order>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Get order statistics for dashboard
  Future<ApiResponse<OrderStatistics>> getOrderStatistics({
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

      final uri = Uri.parse('$_ordersEndpoint/statistics').replace(queryParameters: queryParams);
      final response = await _authService.authenticatedRequest('GET', uri.toString());

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<OrderStatistics>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final statsJson = jsonDecode(response.body);
        final statistics = OrderStatistics.fromJson(statsJson);
        return ApiResponse<OrderStatistics>.success(statistics);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement des statistiques';
        return ApiResponse<OrderStatistics>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<OrderStatistics>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Search orders by client name, phone, or order ID
  Future<ApiResponse<List<Order>>> searchOrders(String query, {int page = 1, int pageSize = defaultPageSize}) async {
    return getOrders(
      page: page,
      pageSize: pageSize,
      search: query,
    );
  }

  /// Get orders by status
  Future<ApiResponse<List<Order>>> getOrdersByStatus(String status, {int page = 1, int pageSize = defaultPageSize}) async {
    return getOrders(
      page: page,
      pageSize: pageSize,
      status: status,
    );
  }

  /// Get today's orders
  Future<ApiResponse<List<Order>>> getTodaysOrders({int page = 1, int pageSize = defaultPageSize}) async {
    final today = DateTime.now();
    final startOfDay = DateTime(today.year, today.month, today.day);
    final endOfDay = DateTime(today.year, today.month, today.day, 23, 59, 59);

    return getOrders(
      page: page,
      pageSize: pageSize,
      fromDate: startOfDay,
      toDate: endOfDay,
    );
  }

  /// Cancel order
  Future<ApiResponse<Order>> cancelOrder(int orderId, String reason) async {
    try {
      final url = '$_ordersEndpoint/$orderId/cancel';
      final body = {
        'reason': reason,
      };

      final response = await _authService.authenticatedRequest('PUT', url, body: body);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<Order>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final orderJson = jsonDecode(response.body);
        final order = Order.fromJson(orderJson);
        return ApiResponse<Order>.success(order);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors de l\'annulation de la commande';
        return ApiResponse<Order>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<Order>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Change/reassign transporter for an order
  Future<ApiResponse<Order>> changeTransporter(int orderId, int newTransporterId, {String? reason}) async {
    try {
      final url = '$_ordersEndpoint/$orderId/change-transporter';
      final body = {
        'transporterId': newTransporterId,
        if (reason != null && reason.isNotEmpty) 'reason': reason,
      };

      final response = await _authService.authenticatedRequest('PUT', url, body: body);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<Order>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final orderJson = jsonDecode(response.body);
        final order = Order.fromJson(orderJson);
        return ApiResponse<Order>.success(order);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du changement de transporteur';
        return ApiResponse<Order>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<Order>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Bulk update order statuses
  Future<ApiResponse<List<Order>>> bulkUpdateStatus(List<int> orderIds, String newStatus, {String? note}) async {
    try {
      final url = '$_ordersEndpoint/bulk/status';
      final body = {
        'orderIds': orderIds,
        'status': newStatus,
        if (note != null && note.isNotEmpty) 'note': note,
      };

      final response = await _authService.authenticatedRequest('PUT', url, body: body);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<List<Order>>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final List<dynamic> ordersJson = jsonDecode(response.body);
        final orders = ordersJson.map((json) => Order.fromJson(json)).toList();
        return ApiResponse<List<Order>>.success(orders);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors de la mise à jour groupée';
        return ApiResponse<List<Order>>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<List<Order>>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Bulk assign transporter to orders
  Future<ApiResponse<List<Order>>> bulkAssignTransporter(List<int> orderIds, int transporterId) async {
    try {
      final url = '$_ordersEndpoint/bulk/assign';
      final body = {
        'orderIds': orderIds,
        'transporterId': transporterId,
      };

      final response = await _authService.authenticatedRequest('PUT', url, body: body);

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<List<Order>>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final List<dynamic> ordersJson = jsonDecode(response.body);
        final orders = ordersJson.map((json) => Order.fromJson(json)).toList();
        return ApiResponse<List<Order>>.success(orders);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors de l\'assignation groupée';
        return ApiResponse<List<Order>>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<List<Order>>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Get orders by date range with advanced filtering
  Future<ApiResponse<List<Order>>> getOrdersByDateRange({
    required DateTime fromDate,
    required DateTime toDate,
    int page = 1,
    int pageSize = defaultPageSize,
    String? status,
    int? cityId,
    int? transporterId,
    String? sortBy = 'createdAt',
    String? sortOrder = 'desc',
  }) async {
    return getOrders(
      page: page,
      pageSize: pageSize,
      status: status,
      cityId: cityId,
      fromDate: fromDate,
      toDate: toDate,
    );
  }

  /// Get unassigned orders (orders without transporter)
  Future<ApiResponse<List<Order>>> getUnassignedOrders({
    int page = 1,
    int pageSize = defaultPageSize,
    int? cityId,
  }) async {
    try {
      final queryParams = <String, String>{
        'page': page.toString(),
        'pageSize': pageSize.toString(),
        'unassigned': 'true',
      };

      if (cityId != null) {
        queryParams['cityId'] = cityId.toString();
      }

      final uri = Uri.parse(_ordersEndpoint).replace(queryParameters: queryParams);
      final response = await _authService.authenticatedRequest('GET', uri.toString());

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<List<Order>>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final List<dynamic> ordersJson = jsonDecode(response.body);
        final orders = ordersJson.map((json) => Order.fromJson(json)).toList();
        return ApiResponse<List<Order>>.success(orders);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement des commandes non assignées';
        return ApiResponse<List<Order>>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<List<Order>>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Get overdue orders
  Future<ApiResponse<List<Order>>> getOverdueOrders({
    int page = 1,
    int pageSize = defaultPageSize,
  }) async {
    try {
      final queryParams = <String, String>{
        'page': page.toString(),
        'pageSize': pageSize.toString(),
        'overdue': 'true',
      };

      final uri = Uri.parse(_ordersEndpoint).replace(queryParameters: queryParams);
      final response = await _authService.authenticatedRequest('GET', uri.toString());

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<List<Order>>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final List<dynamic> ordersJson = jsonDecode(response.body);
        final orders = ordersJson.map((json) => Order.fromJson(json)).toList();
        return ApiResponse<List<Order>>.success(orders);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement des commandes en retard';
        return ApiResponse<List<Order>>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<List<Order>>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Get orders by transporter
  Future<ApiResponse<List<Order>>> getOrdersByTransporter(int transporterId, {
    int page = 1,
    int pageSize = defaultPageSize,
    String? status,
  }) async {
    try {
      final queryParams = <String, String>{
        'page': page.toString(),
        'pageSize': pageSize.toString(),
        'transporterId': transporterId.toString(),
      };

      if (status != null && status.isNotEmpty && status != 'all') {
        queryParams['status'] = status;
      }

      final uri = Uri.parse(_ordersEndpoint).replace(queryParameters: queryParams);
      final response = await _authService.authenticatedRequest('GET', uri.toString());

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<List<Order>>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final List<dynamic> ordersJson = jsonDecode(response.body);
        final orders = ordersJson.map((json) => Order.fromJson(json)).toList();
        return ApiResponse<List<Order>>.success(orders);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement des commandes du transporteur';
        return ApiResponse<List<Order>>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<List<Order>>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Get priority orders (high value or urgent)
  Future<ApiResponse<List<Order>>> getPriorityOrders({
    int page = 1,
    int pageSize = defaultPageSize,
    double? minValue,
  }) async {
    try {
      final queryParams = <String, String>{
        'page': page.toString(),
        'pageSize': pageSize.toString(),
        'priority': 'true',
      };

      if (minValue != null) {
        queryParams['minValue'] = minValue.toString();
      }

      final uri = Uri.parse(_ordersEndpoint).replace(queryParameters: queryParams);
      final response = await _authService.authenticatedRequest('GET', uri.toString());

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<List<Order>>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final List<dynamic> ordersJson = jsonDecode(response.body);
        final orders = ordersJson.map((json) => Order.fromJson(json)).toList();
        return ApiResponse<List<Order>>.success(orders);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement des commandes prioritaires';
        return ApiResponse<List<Order>>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<List<Order>>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Export orders to CSV/Excel
  Future<ApiResponse<String>> exportOrders({
    String format = 'csv', // 'csv' or 'excel'
    DateTime? fromDate,
    DateTime? toDate,
    String? status,
    int? cityId,
  }) async {
    try {
      final queryParams = <String, String>{
        'format': format,
      };

      if (fromDate != null) {
        queryParams['fromDate'] = fromDate.toIso8601String();
      }

      if (toDate != null) {
        queryParams['toDate'] = toDate.toIso8601String();
      }

      if (status != null && status.isNotEmpty && status != 'all') {
        queryParams['status'] = status;
      }

      if (cityId != null) {
        queryParams['cityId'] = cityId.toString();
      }

      final uri = Uri.parse('$_ordersEndpoint/export').replace(queryParameters: queryParams);
      final response = await _authService.authenticatedRequest('GET', uri.toString());

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<String>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final exportResult = jsonDecode(response.body);
        final downloadUrl = exportResult['downloadUrl'] as String? ?? exportResult['url'] as String;
        return ApiResponse<String>.success(downloadUrl);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors de l\'export des commandes';
        return ApiResponse<String>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<String>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }

  /// Get detailed order analytics
  Future<ApiResponse<Map<String, dynamic>>> getOrderAnalytics({
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

      final uri = Uri.parse('$_ordersEndpoint/analytics').replace(queryParameters: queryParams);
      final response = await _authService.authenticatedRequest('GET', uri.toString());

      if (response.statusCode == 401) {
        await _authService.logout();
        return ApiResponse<Map<String, dynamic>>.error('Votre session a expiré. Veuillez vous reconnecter.');
      }

      if (response.statusCode == 200) {
        final analytics = jsonDecode(response.body) as Map<String, dynamic>;
        return ApiResponse<Map<String, dynamic>>.success(analytics);
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['Message'] ?? errorData['message'] ?? 'Erreur lors du chargement des analyses';
        return ApiResponse<Map<String, dynamic>>.error(errorMessage);
      }
    } catch (e) {
      return ApiResponse<Map<String, dynamic>>.error('Erreur de connexion. Veuillez réessayer.');
    }
  }
}

/// Order statistics model
class OrderStatistics {
  final int totalOrders;
  final int activeOrders;
  final int deliveredToday;
  final int returnedToday;
  final int pendingOrders;
  final double todaysRevenue;
  final double totalRevenue;

  OrderStatistics({
    required this.totalOrders,
    required this.activeOrders,
    required this.deliveredToday,
    required this.returnedToday,
    required this.pendingOrders,
    required this.todaysRevenue,
    required this.totalRevenue,
  });

  factory OrderStatistics.fromJson(Map<String, dynamic> json) {
    return OrderStatistics(
      totalOrders: json['TotalOrders'] ?? json['totalOrders'] ?? 0,
      activeOrders: json['ActiveOrders'] ?? json['activeOrders'] ?? 0,
      deliveredToday: json['DeliveredToday'] ?? json['deliveredToday'] ?? 0,
      returnedToday: json['ReturnedToday'] ?? json['returnedToday'] ?? 0,
      pendingOrders: json['PendingOrders'] ?? json['pendingOrders'] ?? 0,
      todaysRevenue: (json['TodaysRevenue'] ?? json['todaysRevenue'] ?? 0).toDouble(),
      totalRevenue: (json['TotalRevenue'] ?? json['totalRevenue'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'TotalOrders': totalOrders,
      'ActiveOrders': activeOrders,
      'DeliveredToday': deliveredToday,
      'ReturnedToday': returnedToday,
      'PendingOrders': pendingOrders,
      'TodaysRevenue': todaysRevenue,
      'TotalRevenue': totalRevenue,
    };
  }
}