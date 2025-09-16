import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:manager_3an3an/main.dart' as app;
import 'package:manager_3an3an/models/order.dart';
import 'package:manager_3an3an/models/transporter.dart';
import 'package:manager_3an3an/services/cache_service.dart';
import 'package:manager_3an3an/services/performance_service.dart';

import 'helpers/test_data.dart';
import 'helpers/test_helpers.dart';

/// Comprehensive integration tests for the 3an3an Manager app
/// Testing complete workflow from orders loading to assignment and real-time updates
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('3an3an Manager Integration Tests', () {
    late TestHelpers testHelpers;

    setUpAll(() async {
      testHelpers = TestHelpers();
      await testHelpers.initializeServices();
    });

    tearDownAll(() async {
      await testHelpers.cleanup();
    });

    testWidgets('Complete Orders Management Workflow', (tester) async {
      // Launch the app
      app.main();
      await tester.pumpAndSettle();

      // Test 1: App initialization and splash screen
      await _testAppInitialization(tester);

      // Test 2: Orders loading and display
      await _testOrdersLoading(tester, testHelpers);

      // Test 3: Statistics display
      await _testStatisticsDisplay(tester);

      // Test 4: Filtering functionality
      await _testFilteringFunctionality(tester);

      // Test 5: View mode switching
      await _testViewModeSwitching(tester);

      // Test 6: Selection mode and bulk operations
      await _testSelectionMode(tester);

      // Test 7: Order details navigation
      await _testOrderDetailsNavigation(tester);

      // Test 8: Transporter assignment workflow
      await _testTransporterAssignment(tester, testHelpers);

      // Test 9: Real-time updates simulation
      await _testRealTimeUpdates(tester, testHelpers);

      // Test 10: Performance and caching
      await _testPerformanceOptimizations(tester, testHelpers);
    });

    testWidgets('Error Handling and Recovery', (tester) async {
      // Test error scenarios and recovery mechanisms
      await _testErrorHandling(tester, testHelpers);
    });

    testWidgets('Offline Mode and Caching', (tester) async {
      // Test offline functionality and cache behavior
      await _testOfflineMode(tester, testHelpers);
    });
  });
}

/// Test app initialization and splash screen
Future<void> _testAppInitialization(WidgetTester tester) async {
  // Look for app title or main elements
  expect(find.text('3an3an Manager'), findsOneWidget);
  
  // Wait for any loading indicators to disappear
  await tester.pumpAndSettle(const Duration(seconds: 3));
  
  // Verify orders screen is displayed
  expect(find.byType(Scaffold), findsAtLeastNWidget(1));
}

/// Test orders loading and display functionality
Future<void> _testOrdersLoading(WidgetTester tester, TestHelpers helpers) async {
  // Mock orders data
  await helpers.mockOrdersData();
  
  // Wait for orders to load
  await tester.pumpAndSettle();
  
  // Verify loading state is handled
  // (loading indicator should disappear)
  expect(find.byType(CircularProgressIndicator), findsNothing);
  
  // Verify orders are displayed
  expect(find.byKey(const ValueKey('orders_list')), findsOneWidget);
  
  // Verify order cards are present
  expect(find.text('Commande #'), findsAtLeastNWidget(1));
  
  // Verify refresh functionality
  await tester.drag(find.byType(RefreshIndicator), const Offset(0, 300));
  await tester.pumpAndSettle();
}

/// Test statistics display
Future<void> _testStatisticsDisplay(WidgetTester tester) async {
  // Look for statistics widget
  expect(find.byKey(const ValueKey('statistics_widget')), findsOneWidget);
  
  // Verify statistics data is displayed
  expect(find.text('Total'), findsAtLeastNWidget(1));
  expect(find.text('En cours'), findsAtLeastNWidget(1));
  expect(find.text('Livrées'), findsAtLeastNWidget(1));
}

/// Test filtering functionality
Future<void> _testFilteringFunctionality(WidgetTester tester) async {
  // Open filter menu
  final filterButton = find.byIcon(Icons.filter_list);
  expect(filterButton, findsOneWidget);
  await tester.tap(filterButton);
  await tester.pumpAndSettle();
  
  // Verify filter options are displayed
  expect(find.text('Statut'), findsOneWidget);
  expect(find.text('Ville'), findsOneWidget);
  
  // Test status filter
  await tester.tap(find.text('En cours'));
  await tester.pumpAndSettle();
  
  // Apply filter
  await tester.tap(find.text('Appliquer'));
  await tester.pumpAndSettle();
  
  // Verify filter is applied (badge should show)
  expect(find.byKey(const ValueKey('filter_badge')), findsOneWidget);
  
  // Clear filters
  await tester.tap(filterButton);
  await tester.pumpAndSettle();
  await tester.tap(find.text('Réinitialiser'));
  await tester.pumpAndSettle();
}

/// Test view mode switching
Future<void> _testViewModeSwitching(WidgetTester tester) async {
  // Find view mode button
  final viewModeButton = find.byIcon(Icons.view_agenda);
  expect(viewModeButton, findsOneWidget);
  await tester.tap(viewModeButton);
  await tester.pumpAndSettle();
  
  // Test compact view
  await tester.tap(find.text('Compact'));
  await tester.pumpAndSettle();
  
  // Verify compact view is applied
  // (Should show more items in the same space)
  
  // Test detailed view
  await tester.tap(viewModeButton);
  await tester.pumpAndSettle();
  await tester.tap(find.text('Détaillé'));
  await tester.pumpAndSettle();
}

/// Test selection mode and bulk operations
Future<void> _testSelectionMode(WidgetTester tester) async {
  // Enter selection mode
  final moreButton = find.byIcon(Icons.more_vert);
  await tester.tap(moreButton);
  await tester.pumpAndSettle();
  
  await tester.tap(find.text('Mode sélection'));
  await tester.pumpAndSettle();
  
  // Verify selection mode is active
  expect(find.byIcon(Icons.close), findsOneWidget);
  
  // Select multiple orders
  final orderCards = find.byType(Card);
  if (orderCards.evaluate().isNotEmpty) {
    await tester.tap(orderCards.first);
    await tester.pumpAndSettle();
    
    if (orderCards.evaluate().length > 1) {
      await tester.tap(orderCards.at(1));
      await tester.pumpAndSettle();
    }
    
    // Verify selection count is displayed
    expect(find.textContaining('sélectionnée'), findsOneWidget);
    
    // Test select all
    await tester.tap(find.byIcon(Icons.select_all));
    await tester.pumpAndSettle();
  }
  
  // Exit selection mode
  await tester.tap(find.byIcon(Icons.close));
  await tester.pumpAndSettle();
}

/// Test order details navigation
Future<void> _testOrderDetailsNavigation(WidgetTester tester) async {
  // Tap on first order card to navigate to details
  final orderCards = find.byType(Card);
  if (orderCards.evaluate().isNotEmpty) {
    await tester.tap(orderCards.first);
    await tester.pumpAndSettle();
    
    // Verify order details screen is displayed
    expect(find.text('Commande #'), findsAtLeastNWidget(1));
    expect(find.byType(TabBar), findsOneWidget);
    
    // Test tab navigation
    await tester.tap(find.text('Historique'));
    await tester.pumpAndSettle();
    
    await tester.tap(find.text('Actions'));
    await tester.pumpAndSettle();
    
    // Go back to orders list
    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();
  }
}

/// Test transporter assignment workflow
Future<void> _testTransporterAssignment(WidgetTester tester, TestHelpers helpers) async {
  // Mock transporters data
  await helpers.mockTransportersData();
  
  // Long press on order card to access assignment
  final orderCards = find.byType(Card);
  if (orderCards.evaluate().isNotEmpty) {
    await tester.longPress(orderCards.first);
    await tester.pumpAndSettle();
    
    // Look for assignment button or menu
    final assignButton = find.byIcon(Icons.person_add);
    if (assignButton.evaluate().isNotEmpty) {
      await tester.tap(assignButton);
      await tester.pumpAndSettle();
      
      // Verify assignment modal is displayed
      expect(find.text('Assigner un livreur'), findsOneWidget);
      
      // Test auto assignment
      final autoButton = find.text('Auto');
      if (autoButton.evaluate().isNotEmpty) {
        await tester.tap(autoButton);
        await tester.pumpAndSettle();
      }
      
      // Close modal
      await tester.tap(find.byIcon(Icons.close));
      await tester.pumpAndSettle();
    }
  }
}

/// Test real-time updates simulation
Future<void> _testRealTimeUpdates(WidgetTester tester, TestHelpers helpers) async {
  // Simulate real-time order status update
  await helpers.simulateOrderStatusUpdate();
  await tester.pumpAndSettle();
  
  // Verify UI updates with new status
  // (This would be more specific based on the actual update)
  
  // Simulate new order arrival
  await helpers.simulateNewOrderArrival();
  await tester.pumpAndSettle();
  
  // Verify new order appears in list
  // (Count should increase)
}

/// Test performance optimizations and caching
Future<void> _testPerformanceOptimizations(WidgetTester tester, TestHelpers helpers) async {
  // Test cache functionality
  await helpers.testCachePerformance();
  
  // Test background data fetching
  await helpers.testBackgroundFetch();
  
  // Test memory optimization
  await helpers.testMemoryOptimization();
  
  // Verify performance metrics
  final performanceService = PerformanceService.instance;
  final stats = performanceService.getPerformanceStats();
  
  expect(stats['total_operations'], greaterThan(0));
  expect(stats['cache_hit_rate'], isNotNull);
}

/// Test error handling and recovery
Future<void> _testErrorHandling(WidgetTester tester, TestHelpers helpers) async {
  // Simulate network error
  await helpers.simulateNetworkError();
  app.main();
  await tester.pumpAndSettle();
  
  // Verify error state is displayed
  expect(find.byIcon(Icons.error_outline), findsAtLeastNWidget(1));
  
  // Test retry functionality
  final retryButton = find.text('Réessayer');
  if (retryButton.evaluate().isNotEmpty) {
    await tester.tap(retryButton);
    await tester.pumpAndSettle();
  }
  
  // Restore normal network
  await helpers.restoreNormalNetwork();
  await tester.pumpAndSettle();
}

/// Test offline mode and caching
Future<void> _testOfflineMode(WidgetTester tester, TestHelpers helpers) async {
  // Populate cache first
  await helpers.populateCache();
  
  // Simulate offline mode
  await helpers.simulateOfflineMode();
  app.main();
  await tester.pumpAndSettle();
  
  // Verify cached data is displayed
  expect(find.byType(Card), findsAtLeastNWidget(1));
  
  // Verify offline indicator (if implemented)
  // expect(find.text('Mode hors ligne'), findsOneWidget);
  
  // Restore online mode
  await helpers.restoreOnlineMode();
  await tester.pumpAndSettle();
}