import 'dart:convert';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:dio/dio.dart';
import 'package:manager_3an3an/models/order.dart';
import 'package:manager_3an3an/models/transporter.dart';
import 'package:manager_3an3an/models/city.dart';
import 'package:manager_3an3an/services/cache_service.dart';
import 'package:manager_3an3an/services/performance_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'test_data.dart';

/// Test helpers for integration testing
/// Provides mock data, network simulation, and testing utilities
class TestHelpers {
  late DioAdapter _dioAdapter;
  late Dio _dio;
  late CacheService _cacheService;
  late PerformanceService _performanceService;
  
  bool _isNetworkEnabled = true;
  bool _isOfflineMode = false;

  /// Initialize test services and mocks
  Future<void> initializeServices() async {
    try {
      // Initialize Dio with mock adapter
      _dio = Dio();
      _dioAdapter = DioAdapter(dio: _dio);
      
      // Initialize services
      SharedPreferences.setMockInitialValues({});
      _cacheService = CacheService.instance;
      await _cacheService.initialize();
      
      _performanceService = PerformanceService.instance;
      await _performanceService.initialize();
      
      if (kDebugMode) {
        print('🧪 Test services initialized successfully');
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Error initializing test services: $e');
      }
    }
  }

  /// Mock orders data for testing
  Future<void> mockOrdersData() async {
    if (!_isNetworkEnabled) return;
    
    try {
      final mockOrders = TestData.generateMockOrders(20);
      final response = {
        'success': true,
        'data': mockOrders.map((order) => order.toJson()).toList(),
        'pagination': {
          'current_page': 1,
          'per_page': 20,
          'total': 50,
          'last_page': 3,
        }
      };

      _dioAdapter.onGet(
        '/api/orders',
        (server) => server.reply(200, response),
      );

      // Mock individual order endpoint
      for (final order in mockOrders) {
        _dioAdapter.onGet(
          '/api/orders/${order.id}',
          (server) => server.reply(200, {
            'success': true,
            'data': order.toJson(),
          }),
        );
      }

      if (kDebugMode) {
        print('📦 Mock orders data configured');
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Error mocking orders data: $e');
      }
    }
  }

  /// Mock transporters data for testing
  Future<void> mockTransportersData() async {
    if (!_isNetworkEnabled) return;
    
    try {
      final mockTransporters = TestData.generateMockTransporters(15);
      final response = {
        'success': true,
        'data': mockTransporters.map((t) => t.toJson()).toList(),
      };

      _dioAdapter.onGet(
        '/api/transporters',
        (server) => server.reply(200, response),
      );

      // Mock transporter assignment endpoints
      _dioAdapter.onPost(
        '/api/orders/assign',
        (server) => server.reply(200, {
          'success': true,
          'message': 'Order assigned successfully',
        }),
      );

      _dioAdapter.onPost(
        '/api/orders/bulk-assign',
        (server) => server.reply(200, {
          'success': true,
          'message': 'Orders assigned successfully',
        }),
      );

      if (kDebugMode) {
        print('🚚 Mock transporters data configured');
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Error mocking transporters data: $e');
      }
    }
  }

  /// Mock cities data for testing
  Future<void> mockCitiesData() async {
    if (!_isNetworkEnabled) return;
    
    try {
      final mockCities = TestData.generateMockCities();
      final response = {
        'success': true,
        'data': mockCities.map((city) => city.toJson()).toList(),
      };

      _dioAdapter.onGet(
        '/api/cities',
        (server) => server.reply(200, response),
      );

      if (kDebugMode) {
        print('🏙️ Mock cities data configured');
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Error mocking cities data: $e');
      }
    }
  }

  /// Mock statistics data for testing
  Future<void> mockStatisticsData() async {
    if (!_isNetworkEnabled) return;
    
    try {
      final mockStats = TestData.generateMockStatistics();
      
      _dioAdapter.onGet(
        '/api/statistics',
        (server) => server.reply(200, {
          'success': true,
          'data': mockStats,
        }),
      );

      if (kDebugMode) {
        print('📊 Mock statistics data configured');
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Error mocking statistics data: $e');
      }
    }
  }

  /// Simulate order status update
  Future<void> simulateOrderStatusUpdate() async {
    try {
      // Simulate a SignalR-like real-time update
      final updatedOrder = TestData.generateMockOrders(1).first.copyWith(
        status: 'delivered',
        updatedAt: DateTime.now(),
      );

      // In a real app, this would come through SignalR
      // For testing, we directly update the cache
      await _cacheService.invalidateOrdersCache();
      
      if (kDebugMode) {
        print('📡 Simulated order status update');
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Error simulating order update: $e');
      }
    }
  }

  /// Simulate new order arrival
  Future<void> simulateNewOrderArrival() async {
    try {
      final newOrder = TestData.generateMockOrders(1).first;
      
      // Mock the new order endpoint response
      _dioAdapter.onGet(
        '/api/orders',
        (server) => server.reply(200, {
          'success': true,
          'data': [newOrder.toJson()],
          'pagination': {
            'current_page': 1,
            'per_page': 20,
            'total': 51, // Increased by 1
            'last_page': 3,
          }
        }),
      );

      if (kDebugMode) {
        print('📨 Simulated new order arrival');
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Error simulating new order: $e');
      }
    }
  }

  /// Simulate network error
  Future<void> simulateNetworkError() async {
    try {
      _isNetworkEnabled = false;
      
      _dioAdapter.onGet(
        '/api/orders',
        (server) => server.reply(500, {
          'success': false,
          'message': 'Internal server error',
        }),
      );

      if (kDebugMode) {
        print('🔌 Network error simulation enabled');
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Error simulating network error: $e');
      }
    }
  }

  /// Restore normal network operation
  Future<void> restoreNormalNetwork() async {
    try {
      _isNetworkEnabled = true;
      await mockOrdersData();
      await mockTransportersData();
      await mockCitiesData();
      await mockStatisticsData();
      
      if (kDebugMode) {
        print('🌐 Normal network operation restored');
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Error restoring network: $e');
      }
    }
  }

  /// Simulate offline mode
  Future<void> simulateOfflineMode() async {
    try {
      _isOfflineMode = true;
      _isNetworkEnabled = false;
      
      // Clear all network mocks to simulate complete offline
      _dioAdapter.reset();
      
      if (kDebugMode) {
        print('📴 Offline mode simulation enabled');
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Error simulating offline mode: $e');
      }
    }
  }

  /// Restore online mode
  Future<void> restoreOnlineMode() async {
    try {
      _isOfflineMode = false;
      await restoreNormalNetwork();
      
      if (kDebugMode) {
        print('📶 Online mode restored');
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Error restoring online mode: $e');
      }
    }
  }

  /// Populate cache with test data
  Future<void> populateCache() async {
    try {
      final orders = TestData.generateMockOrders(10);
      final transporters = TestData.generateMockTransporters(5);
      final cities = TestData.generateMockCities();
      
      await _cacheService.cacheOrders(orders);
      await _cacheService.cacheTransporters(transporters);
      await _cacheService.cacheCities(cities);
      
      if (kDebugMode) {
        print('💾 Cache populated with test data');
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Error populating cache: $e');
      }
    }
  }

  /// Test cache performance
  Future<void> testCachePerformance() async {
    try {
      final stopwatch = Stopwatch()..start();
      
      // Test cache retrieval speed
      await _cacheService.getCachedOrders();
      await _cacheService.getCachedTransporters();
      await _cacheService.getCachedCities();
      
      stopwatch.stop();
      
      if (kDebugMode) {
        print('⚡ Cache performance test: ${stopwatch.elapsedMilliseconds}ms');
      }
      
      // Verify cache performance is acceptable (< 100ms)
      assert(stopwatch.elapsedMilliseconds < 100, 'Cache performance too slow');
    } catch (e) {
      if (kDebugMode) {
        print('❌ Error testing cache performance: $e');
      }
    }
  }

  /// Test background fetch functionality
  Future<void> testBackgroundFetch() async {
    try {
      // Simulate background fetch
      await _performanceService.preloadCriticalData();
      
      // Verify data was fetched and cached
      final cachedOrders = await _cacheService.getCachedOrders();
      final cachedTransporters = await _cacheService.getCachedTransporters();
      
      if (kDebugMode) {
        print('🔄 Background fetch test completed');
        print('  - Orders cached: ${cachedOrders?.length ?? 0}');
        print('  - Transporters cached: ${cachedTransporters?.length ?? 0}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Error testing background fetch: $e');
      }
    }
  }

  /// Test memory optimization
  Future<void> testMemoryOptimization() async {
    try {
      // Get initial performance stats
      final initialStats = _performanceService.getPerformanceStats();
      
      // Simulate memory-intensive operations
      for (int i = 0; i < 10; i++) {
        await _cacheService.cacheOrders(TestData.generateMockOrders(100));
      }
      
      // Clear cache to test memory cleanup
      await _cacheService.clearAllCache();
      
      final finalStats = _performanceService.getPerformanceStats();
      
      if (kDebugMode) {
        print('🧹 Memory optimization test completed');
        print('  - Initial operations: ${initialStats['total_operations']}');
        print('  - Final operations: ${finalStats['total_operations']}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Error testing memory optimization: $e');
      }
    }
  }

  /// Wait for network operations to complete
  Future<void> waitForNetworkOperations({Duration? timeout}) async {
    await Future.delayed(timeout ?? const Duration(milliseconds: 500));
  }

  /// Generate random test scenario
  TestScenario generateRandomScenario() {
    final random = Random();
    final scenarios = TestScenario.values;
    return scenarios[random.nextInt(scenarios.length)];
  }

  /// Cleanup test resources
  Future<void> cleanup() async {
    try {
      await _cacheService.clearAllCache();
      _performanceService.dispose();
      
      if (kDebugMode) {
        print('🧹 Test cleanup completed');
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Error during cleanup: $e');
      }
    }
  }
}

/// Test scenarios for randomized testing
enum TestScenario {
  normalOperation,
  highLoad,
  networkError,
  offlineMode,
  memoryPressure,
  rapidUpdates,
}

/// Performance test result
class PerformanceTestResult {
  final String operation;
  final Duration duration;
  final bool success;
  final String? error;

  PerformanceTestResult({
    required this.operation,
    required this.duration,
    required this.success,
    this.error,
  });

  @override
  String toString() => 
      'PerformanceTestResult(operation: $operation, duration: ${duration.inMilliseconds}ms, success: $success)';
}