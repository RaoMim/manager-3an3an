import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:manager_3an3an/main.dart' as app;
import 'package:manager_3an3an/services/cache_service.dart';
import 'package:manager_3an3an/services/performance_service.dart';

import 'helpers/test_data.dart';
import 'helpers/test_helpers.dart';

/// Performance-focused integration tests
/// Tests app performance under various load conditions and optimization scenarios
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Performance Integration Tests', () {
    late TestHelpers testHelpers;
    late PerformanceService performanceService;
    late CacheService cacheService;

    setUpAll(() async {
      testHelpers = TestHelpers();
      await testHelpers.initializeServices();
      
      performanceService = PerformanceService.instance;
      cacheService = CacheService.instance;
    });

    tearDownAll(() async {
      await testHelpers.cleanup();
    });

    testWidgets('Cache Performance Test', (tester) async {
      await _testCachePerformance(tester, testHelpers);
    });

    testWidgets('Memory Usage Test', (tester) async {
      await _testMemoryUsage(tester, testHelpers);
    });

    testWidgets('UI Responsiveness Test', (tester) async {
      await _testUIResponsiveness(tester, testHelpers);
    });

    testWidgets('Network Performance Test', (tester) async {
      await _testNetworkPerformance(tester, testHelpers);
    });

    testWidgets('Background Operations Test', (tester) async {
      await _testBackgroundOperations(tester, testHelpers);
    });

    testWidgets('Large Dataset Performance Test', (tester) async {
      await _testLargeDatasetPerformance(tester, testHelpers);
    });

    testWidgets('Concurrent Operations Test', (tester) async {
      await _testConcurrentOperations(tester, testHelpers);
    });
  });
}

/// Test cache performance with various data sizes
Future<void> _testCachePerformance(WidgetTester tester, TestHelpers helpers) async {
  final performanceBenchmarks = <String, Duration>{};
  
  // Test small dataset (10 orders)
  var stopwatch = Stopwatch()..start();
  final smallOrders = TestData.generateMockOrders(10);
  await CacheService.instance.cacheOrders(smallOrders);
  stopwatch.stop();
  performanceBenchmarks['cache_small_dataset'] = stopwatch.elapsed;
  
  // Test medium dataset (100 orders)
  stopwatch = Stopwatch()..start();
  final mediumOrders = TestData.generateMockOrders(100);
  await CacheService.instance.cacheOrders(mediumOrders);
  stopwatch.stop();
  performanceBenchmarks['cache_medium_dataset'] = stopwatch.elapsed;
  
  // Test large dataset (1000 orders)
  stopwatch = Stopwatch()..start();
  final largeOrders = TestData.generateMockOrders(1000);
  await CacheService.instance.cacheOrders(largeOrders);
  stopwatch.stop();
  performanceBenchmarks['cache_large_dataset'] = stopwatch.elapsed;
  
  // Test cache retrieval performance
  stopwatch = Stopwatch()..start();
  await CacheService.instance.getCachedOrders();
  stopwatch.stop();
  performanceBenchmarks['cache_retrieval'] = stopwatch.elapsed;
  
  // Verify performance benchmarks
  for (final entry in performanceBenchmarks.entries) {
    if (kDebugMode) {
      print('🏁 ${entry.key}: ${entry.value.inMilliseconds}ms');
    }
    
    // Cache operations should be fast (< 500ms for large datasets)
    expect(entry.value.inMilliseconds, lessThan(500),
        reason: '${entry.key} took too long: ${entry.value.inMilliseconds}ms');
  }
}

/// Test memory usage patterns
Future<void> _testMemoryUsage(WidgetTester tester, TestHelpers helpers) async {
  app.main();
  await tester.pumpAndSettle();
  
  // Simulate heavy memory usage
  final initialCacheInfo = await CacheService.instance.getCacheInfo();
  
  // Load large datasets multiple times
  for (int i = 0; i < 10; i++) {
    final orders = TestData.generateMockOrders(500);
    await CacheService.instance.cacheOrders(orders, page: i + 1);
    await tester.pump(); // Allow UI to update
  }
  
  final postLoadCacheInfo = await CacheService.instance.getCacheInfo();
  
  // Test memory cleanup
  await CacheService.instance.clearAllCache();
  final postCleanupCacheInfo = await CacheService.instance.getCacheInfo();
  
  if (kDebugMode) {
    print('📊 Memory Usage Test Results:');
    print('  Initial cache size: ${initialCacheInfo['sizeMB'] ?? '0'} MB');
    print('  Post-load cache size: ${postLoadCacheInfo['sizeMB'] ?? '0'} MB');
    print('  Post-cleanup cache size: ${postCleanupCacheInfo['sizeMB'] ?? '0'} MB');
  }
  
  // Verify memory cleanup works
  final postCleanupSize = double.tryParse(postCleanupCacheInfo['sizeMB'] ?? '0') ?? 0;
  expect(postCleanupSize, lessThan(1.0), reason: 'Cache not properly cleaned up');
}

/// Test UI responsiveness under load
Future<void> _testUIResponsiveness(WidgetTester tester, TestHelpers helpers) async {
  await helpers.mockOrdersData();
  app.main();
  await tester.pumpAndSettle();
  
  // Test scroll performance
  final scrollStartTime = DateTime.now();
  final scrollController = find.byType(Scrollable);
  
  if (scrollController.evaluate().isNotEmpty) {
    for (int i = 0; i < 10; i++) {
      await tester.drag(scrollController.first, const Offset(0, -200));
      await tester.pump(const Duration(milliseconds: 16)); // 60 FPS
    }
  }
  
  final scrollEndTime = DateTime.now();
  final scrollDuration = scrollEndTime.difference(scrollStartTime);
  
  if (kDebugMode) {
    print('📱 UI Responsiveness Test:');
    print('  Scroll performance: ${scrollDuration.inMilliseconds}ms');
  }
  
  // UI should remain responsive (< 1000ms for 10 scroll operations)
  expect(scrollDuration.inMilliseconds, lessThan(1000),
      reason: 'UI scroll performance is poor: ${scrollDuration.inMilliseconds}ms');
  
  // Test tap responsiveness
  final orderCards = find.byType(Card);
  if (orderCards.evaluate().isNotEmpty) {
    final tapStartTime = DateTime.now();
    
    // Rapid tap test
    for (int i = 0; i < 5 && i < orderCards.evaluate().length; i++) {
      await tester.tap(orderCards.at(i));
      await tester.pump(const Duration(milliseconds: 16));
    }
    
    final tapEndTime = DateTime.now();
    final tapDuration = tapEndTime.difference(tapStartTime);
    
    if (kDebugMode) {
      print('  Tap responsiveness: ${tapDuration.inMilliseconds}ms');
    }
    
    expect(tapDuration.inMilliseconds, lessThan(500),
        reason: 'Tap responsiveness is poor: ${tapDuration.inMilliseconds}ms');
  }
}

/// Test network performance and optimization
Future<void> _testNetworkPerformance(WidgetTester tester, TestHelpers helpers) async {
  // Test network request performance
  final networkBenchmarks = <String, Duration>{};
  
  // Test orders loading performance
  var stopwatch = Stopwatch()..start();
  await helpers.mockOrdersData();
  stopwatch.stop();
  networkBenchmarks['orders_loading'] = stopwatch.elapsed;
  
  // Test transporters loading performance
  stopwatch = Stopwatch()..start();
  await helpers.mockTransportersData();
  stopwatch.stop();
  networkBenchmarks['transporters_loading'] = stopwatch.elapsed;
  
  // Test concurrent requests
  stopwatch = Stopwatch()..start();
  await Future.wait([
    helpers.mockOrdersData(),
    helpers.mockTransportersData(),
    helpers.mockCitiesData(),
    helpers.mockStatisticsData(),
  ]);
  stopwatch.stop();
  networkBenchmarks['concurrent_requests'] = stopwatch.elapsed;
  
  for (final entry in networkBenchmarks.entries) {
    if (kDebugMode) {
      print('🌐 ${entry.key}: ${entry.value.inMilliseconds}ms');
    }
    
    // Network operations should be reasonably fast
    expect(entry.value.inMilliseconds, lessThan(2000),
        reason: '${entry.key} took too long: ${entry.value.inMilliseconds}ms');
  }
}

/// Test background operations performance
Future<void> _testBackgroundOperations(WidgetTester tester, TestHelpers helpers) async {
  final performanceService = PerformanceService.instance;
  
  // Test background data preloading
  final stopwatch = Stopwatch()..start();
  await performanceService.preloadCriticalData();
  stopwatch.stop();
  
  if (kDebugMode) {
    print('🔄 Background operations test:');
    print('  Preload duration: ${stopwatch.elapsedMilliseconds}ms');
  }
  
  // Background operations should not block UI
  expect(stopwatch.elapsedMilliseconds, lessThan(5000),
      reason: 'Background preload took too long: ${stopwatch.elapsedMilliseconds}ms');
  
  // Test performance stats collection
  final stats = performanceService.getPerformanceStats();
  expect(stats, isNotEmpty, reason: 'Performance stats should be available');
  expect(stats['total_operations'], greaterThan(0), reason: 'Should have recorded operations');
}

/// Test performance with large datasets
Future<void> _testLargeDatasetPerformance(WidgetTester tester, TestHelpers helpers) async {
  // Generate large dataset
  final largeOrderSet = TestData.generateMockOrders(2000);
  final largeTransporterSet = TestData.generateMockTransporters(200);
  
  // Test caching large datasets
  final cacheStopwatch = Stopwatch()..start();
  await CacheService.instance.cacheOrders(largeOrderSet);
  await CacheService.instance.cacheTransporters(largeTransporterSet);
  cacheStopwatch.stop();
  
  // Test retrieving large datasets
  final retrievalStopwatch = Stopwatch()..start();
  final cachedOrders = await CacheService.instance.getCachedOrders();
  final cachedTransporters = await CacheService.instance.getCachedTransporters();
  retrievalStopwatch.stop();
  
  if (kDebugMode) {
    print('📚 Large dataset performance:');
    print('  Cache 2000 orders + 200 transporters: ${cacheStopwatch.elapsedMilliseconds}ms');
    print('  Retrieve cached data: ${retrievalStopwatch.elapsedMilliseconds}ms');
    print('  Orders retrieved: ${cachedOrders?.length ?? 0}');
    print('  Transporters retrieved: ${cachedTransporters?.length ?? 0}');
  }
  
  // Large dataset operations should still be reasonable
  expect(cacheStopwatch.elapsedMilliseconds, lessThan(3000),
      reason: 'Large dataset caching too slow: ${cacheStopwatch.elapsedMilliseconds}ms');
  expect(retrievalStopwatch.elapsedMilliseconds, lessThan(1000),
      reason: 'Large dataset retrieval too slow: ${retrievalStopwatch.elapsedMilliseconds}ms');
}

/// Test concurrent operations performance
Future<void> _testConcurrentOperations(WidgetTester tester, TestHelpers helpers) async {
  // Test multiple concurrent cache operations
  final concurrentStopwatch = Stopwatch()..start();
  
  final futures = <Future>[];
  for (int i = 0; i < 10; i++) {
    futures.add(CacheService.instance.cacheOrders(
      TestData.generateMockOrders(100),
      page: i + 1,
    ));
  }
  
  await Future.wait(futures);
  concurrentStopwatch.stop();
  
  // Test concurrent retrievals
  final retrievalStopwatch = Stopwatch()..start();
  final retrievalFutures = <Future>[];
  for (int i = 0; i < 10; i++) {
    retrievalFutures.add(CacheService.instance.getCachedOrders(page: i + 1));
  }
  
  await Future.wait(retrievalFutures);
  retrievalStopwatch.stop();
  
  if (kDebugMode) {
    print('⚡ Concurrent operations performance:');
    print('  10 concurrent cache operations: ${concurrentStopwatch.elapsedMilliseconds}ms');
    print('  10 concurrent retrievals: ${retrievalStopwatch.elapsedMilliseconds}ms');
  }
  
  // Concurrent operations should be efficient
  expect(concurrentStopwatch.elapsedMilliseconds, lessThan(5000),
      reason: 'Concurrent caching too slow: ${concurrentStopwatch.elapsedMilliseconds}ms');
  expect(retrievalStopwatch.elapsedMilliseconds, lessThan(2000),
      reason: 'Concurrent retrieval too slow: ${retrievalStopwatch.elapsedMilliseconds}ms');
}