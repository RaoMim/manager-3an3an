import 'dart:async';
import 'dart:developer' as developer;
import 'dart:isolate';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../services/cache_service.dart';
import '../services/orders_service.dart';
import '../services/transporter_service.dart';
import '../services/city_service.dart';
import '../models/order.dart';
import '../models/transporter.dart';
import '../models/city.dart';

/// Comprehensive performance optimization service using 2025 best practices
class PerformanceService {
  static PerformanceService? _instance;
  static PerformanceService get instance => _instance ??= PerformanceService._();

  PerformanceService._();

  // Background fetch timers
  Timer? _backgroundFetchTimer;
  Timer? _cacheCleanupTimer;
  Timer? _memoryOptimizationTimer;

  // Performance metrics
  final Map<String, DateTime> _performanceMarkers = {};
  final List<PerformanceMetric> _metrics = [];
  
  // Services
  late final CacheService _cacheService;
  late final OrdersService _ordersService;
  late final TransporterService _transporterService;
  late final CityService _cityService;

  /// Initialize performance service
  Future<void> initialize() async {
    _cacheService = CacheService.instance;
    _ordersService = OrdersService();
    _transporterService = TransporterService();
    _cityService = CityService();
    
    await _cacheService.initialize();
    _startBackgroundOptimizations();
    _startPerformanceMonitoring();
    
    developer.log('🚀 PerformanceService initialized');
  }

  /// Start background data fetching and caching
  void _startBackgroundOptimizations() {
    // Background data fetch every 5 minutes
    _backgroundFetchTimer = Timer.periodic(
      const Duration(minutes: 5),
      (timer) => _performBackgroundFetch(),
    );

    // Cache cleanup every 30 minutes
    _cacheCleanupTimer = Timer.periodic(
      const Duration(minutes: 30),
      (timer) => _performCacheCleanup(),
    );

    // Memory optimization every 15 minutes
    _memoryOptimizationTimer = Timer.periodic(
      const Duration(minutes: 15),
      (timer) => _performMemoryOptimization(),
    );

    developer.log('⚡ Background optimizations started');
  }

  /// Start performance monitoring
  void _startPerformanceMonitoring() {
    if (kDebugMode) {
      Timer.periodic(const Duration(minutes: 1), (timer) {
        _logPerformanceMetrics();
      });
    }
  }

  /// Preload critical data in background
  Future<void> preloadCriticalData() async {
    try {
      startPerformanceMarker('preload_critical_data');
      
      // Preload in parallel for better performance
      final futures = <Future>[];
      
      // Preload cities (less frequently changing data)
      futures.add(_preloadCities());
      
      // Preload recent orders
      futures.add(_preloadRecentOrders());
      
      // Preload available transporters
      futures.add(_preloadAvailableTransporters());
      
      await Future.wait(futures);
      
      endPerformanceMarker('preload_critical_data');
      developer.log('✅ Critical data preloaded successfully');
    } catch (e) {
      developer.log('❌ Error preloading critical data: $e');
    }
  }

  /// Smart cache strategy for orders
  Future<List<Order>> getOrdersWithCache({
    int page = 1,
    String? status,
    String? search,
    bool forceRefresh = false,
  }) async {
    try {
      startPerformanceMarker('get_orders_with_cache');
      
      // Try cache first unless forced refresh
      if (!forceRefresh) {
        final cachedOrders = await _cacheService.getCachedOrders(
          page: page,
          status: status,
          search: search,
        );
        
        if (cachedOrders != null) {
          endPerformanceMarker('get_orders_with_cache');
          _recordMetric('cache_hit', 'orders', cachedOrders.length);
          return cachedOrders;
        }
      }
      
      // Fetch from API
      final response = await _ordersService.getOrders(
        page: page,
        status: status,
        search: search,
      );
      
      if (response.isSuccess && response.data != null) {
        final orders = response.data!;
        
        // Cache the results
        await _cacheService.cacheOrders(
          orders,
          page: page,
          status: status,
          search: search,
        );
        
        endPerformanceMarker('get_orders_with_cache');
        _recordMetric('api_call', 'orders', orders.length);
        return orders;
      }
      
      endPerformanceMarker('get_orders_with_cache');
      return [];
    } catch (e) {
      endPerformanceMarker('get_orders_with_cache');
      developer.log('❌ Error getting orders with cache: $e');
      return [];
    }
  }

  /// Smart cache strategy for transporters
  Future<List<Transporter>> getTransportersWithCache({
    String? status,
    int? cityId,
    bool? availableOnly,
    bool forceRefresh = false,
  }) async {
    try {
      startPerformanceMarker('get_transporters_with_cache');
      
      // Try cache first unless forced refresh
      if (!forceRefresh) {
        final cachedTransporters = await _cacheService.getCachedTransporters(
          status: status,
          cityId: cityId,
          availableOnly: availableOnly,
        );
        
        if (cachedTransporters != null) {
          endPerformanceMarker('get_transporters_with_cache');
          _recordMetric('cache_hit', 'transporters', cachedTransporters.length);
          return cachedTransporters;
        }
      }
      
      // Fetch from API
      final response = await _transporterService.getTransporters(
        status: status,
        cityId: cityId,
        availableOnly: availableOnly,
      );
      
      if (response.isSuccess && response.data != null) {
        final transporters = response.data!;
        
        // Cache the results
        await _cacheService.cacheTransporters(
          transporters,
          status: status,
          cityId: cityId,
          availableOnly: availableOnly,
        );
        
        endPerformanceMarker('get_transporters_with_cache');
        _recordMetric('api_call', 'transporters', transporters.length);
        return transporters;
      }
      
      endPerformanceMarker('get_transporters_with_cache');
      return [];
    } catch (e) {
      endPerformanceMarker('get_transporters_with_cache');
      developer.log('❌ Error getting transporters with cache: $e');
      return [];
    }
  }

  /// Smart cache strategy for cities
  Future<List<City>> getCitiesWithCache({bool forceRefresh = false}) async {
    try {
      startPerformanceMarker('get_cities_with_cache');
      
      // Try cache first unless forced refresh
      if (!forceRefresh) {
        final cachedCities = await _cacheService.getCachedCities();
        
        if (cachedCities != null) {
          endPerformanceMarker('get_cities_with_cache');
          _recordMetric('cache_hit', 'cities', cachedCities.length);
          return cachedCities;
        }
      }
      
      // Fetch from API
      final response = await _cityService.getCities();
      
      if (response.isSuccess && response.data != null) {
        final cities = response.data!;
        
        // Cache the results
        await _cacheService.cacheCities(cities);
        
        endPerformanceMarker('get_cities_with_cache');
        _recordMetric('api_call', 'cities', cities.length);
        return cities;
      }
      
      endPerformanceMarker('get_cities_with_cache');
      return [];
    } catch (e) {
      endPerformanceMarker('get_cities_with_cache');
      developer.log('❌ Error getting cities with cache: $e');
      return [];
    }
  }

  /// Optimized pagination loading
  Future<List<Order>> loadMoreOrders({
    required int currentPage,
    String? status,
    String? search,
  }) async {
    try {
      final nextPage = currentPage + 1;
      
      // Check if next page is already cached
      final cachedOrders = await _cacheService.getCachedOrders(
        page: nextPage,
        status: status,
        search: search,
      );
      
      if (cachedOrders != null) {
        developer.log('📦 Loading more orders from cache (page $nextPage)');
        return cachedOrders;
      }
      
      // Fetch next page from API
      developer.log('🌐 Loading more orders from API (page $nextPage)');
      return await getOrdersWithCache(
        page: nextPage,
        status: status,
        search: search,
        forceRefresh: true,
      );
    } catch (e) {
      developer.log('❌ Error loading more orders: $e');
      return [];
    }
  }

  /// Background data fetch
  Future<void> _performBackgroundFetch() async {
    if (kDebugMode) {
      developer.log('🔄 Performing background data fetch');
    }
    
    try {
      // Fetch latest data in background without affecting UI
      final futures = <Future>[];
      
      // Refresh recent orders
      futures.add(_refreshRecentOrders());
      
      // Refresh available transporters
      futures.add(_refreshAvailableTransporters());
      
      // Refresh statistics
      futures.add(_refreshStatistics());
      
      await Future.wait(futures);
      
      if (kDebugMode) {
        developer.log('✅ Background fetch completed');
      }
    } catch (e) {
      developer.log('❌ Background fetch error: $e');
    }
  }

  /// Cache cleanup
  Future<void> _performCacheCleanup() async {
    try {
      final cacheInfo = await _cacheService.getCacheInfo();
      final sizeMB = double.tryParse(cacheInfo['sizeMB'] ?? '0') ?? 0;
      
      // Clean cache if it's too large (> 50MB)
      if (sizeMB > 50) {
        developer.log('🧹 Cache size is ${sizeMB}MB, performing cleanup');
        await _cacheService.clearAllCache();
        
        // Preload critical data again
        await preloadCriticalData();
      }
    } catch (e) {
      developer.log('❌ Cache cleanup error: $e');
    }
  }

  /// Memory optimization
  Future<void> _performMemoryOptimization() async {
    try {
      // Force garbage collection
      if (kDebugMode) {
        developer.log('🧹 Performing memory optimization');
      }
      
      // Clear old performance metrics
      _cleanOldMetrics();
      
      // Clear old performance markers
      _cleanOldMarkers();
      
      // Suggest system garbage collection
      await _requestGarbageCollection();
      
    } catch (e) {
      developer.log('❌ Memory optimization error: $e');
    }
  }

  /// Preload methods
  Future<void> _preloadCities() async {
    await getCitiesWithCache();
  }

  Future<void> _preloadRecentOrders() async {
    await getOrdersWithCache(page: 1);
  }

  Future<void> _preloadAvailableTransporters() async {
    await getTransportersWithCache(availableOnly: true);
  }

  /// Refresh methods
  Future<void> _refreshRecentOrders() async {
    await getOrdersWithCache(page: 1, forceRefresh: true);
  }

  Future<void> _refreshAvailableTransporters() async {
    await getTransportersWithCache(availableOnly: true, forceRefresh: true);
  }

  Future<void> _refreshStatistics() async {
    // This would call statistics API and cache the results
    // Implementation depends on your statistics API
    try {
      // Example implementation
      final statistics = <String, dynamic>{
        'timestamp': DateTime.now().millisecondsSinceEpoch,
        'orders_count': 0, // Would come from API
        'transporters_count': 0, // Would come from API
      };
      
      await _cacheService.cacheStatistics(statistics);
    } catch (e) {
      developer.log('❌ Error refreshing statistics: $e');
    }
  }

  /// Performance tracking
  void startPerformanceMarker(String name) {
    _performanceMarkers[name] = DateTime.now();
  }

  void endPerformanceMarker(String name) {
    final startTime = _performanceMarkers[name];
    if (startTime != null) {
      final duration = DateTime.now().difference(startTime);
      _recordMetric('performance', name, duration.inMilliseconds);
      _performanceMarkers.remove(name);
      
      if (kDebugMode && duration.inMilliseconds > 1000) {
        developer.log('⚠️ Slow operation: $name took ${duration.inMilliseconds}ms');
      }
    }
  }

  void _recordMetric(String type, String operation, int value) {
    _metrics.add(PerformanceMetric(
      type: type,
      operation: operation,
      value: value,
      timestamp: DateTime.now(),
    ));
    
    // Keep only last 100 metrics
    if (_metrics.length > 100) {
      _metrics.removeAt(0);
    }
  }

  void _logPerformanceMetrics() {
    if (_metrics.isNotEmpty) {
      final recent = _metrics.where(
        (m) => DateTime.now().difference(m.timestamp).inMinutes < 5,
      ).toList();
      
      if (recent.isNotEmpty) {
        final cacheHits = recent.where((m) => m.type == 'cache_hit').length;
        final apiCalls = recent.where((m) => m.type == 'api_call').length;
        final avgPerformance = recent
            .where((m) => m.type == 'performance')
            .map((m) => m.value)
            .fold(0, (a, b) => a + b) / 
            recent.where((m) => m.type == 'performance').length;
        
        developer.log(
          '📊 Performance (5min): Cache hits: $cacheHits, API calls: $apiCalls, Avg response: ${avgPerformance.toStringAsFixed(1)}ms',
        );
      }
    }
  }

  void _cleanOldMetrics() {
    _metrics.removeWhere(
      (metric) => DateTime.now().difference(metric.timestamp).inHours > 1,
    );
  }

  void _cleanOldMarkers() {
    final now = DateTime.now();
    _performanceMarkers.removeWhere(
      (key, value) => now.difference(value).inMinutes > 5,
    );
  }

  Future<void> _requestGarbageCollection() async {
    // Request garbage collection (platform-specific)
    if (defaultTargetPlatform == TargetPlatform.android) {
      try {
        await const MethodChannel('flutter/system')
            .invokeMethod('System.gc');
      } catch (e) {
        // Ignore platform channel errors
      }
    }
  }

  /// Invalidate cache when data changes
  Future<void> invalidateOrdersCache() async {
    await _cacheService.invalidateOrdersCache();
    developer.log('🗑️ Orders cache invalidated');
  }

  Future<void> invalidateTransportersCache() async {
    await _cacheService.invalidateTransportersCache();
    developer.log('🗑️ Transporters cache invalidated');
  }

  /// Get performance statistics
  Map<String, dynamic> getPerformanceStats() {
    final now = DateTime.now();
    final recent = _metrics.where(
      (m) => now.difference(m.timestamp).inMinutes < 30,
    ).toList();
    
    final cacheHitRate = recent.isEmpty 
        ? 0.0 
        : recent.where((m) => m.type == 'cache_hit').length / 
          (recent.where((m) => m.type == 'cache_hit').length + 
           recent.where((m) => m.type == 'api_call').length);
    
    return {
      'cache_hit_rate': (cacheHitRate * 100).toStringAsFixed(1),
      'total_operations': recent.length,
      'cache_hits': recent.where((m) => m.type == 'cache_hit').length,
      'api_calls': recent.where((m) => m.type == 'api_call').length,
      'avg_response_time': recent
          .where((m) => m.type == 'performance')
          .map((m) => m.value)
          .isEmpty ? 0 : recent
          .where((m) => m.type == 'performance')
          .map((m) => m.value)
          .reduce((a, b) => a + b) ~/
          recent.where((m) => m.type == 'performance').length,
    };
  }

  /// Dispose resources
  void dispose() {
    _backgroundFetchTimer?.cancel();
    _cacheCleanupTimer?.cancel();
    _memoryOptimizationTimer?.cancel();
    
    _performanceMarkers.clear();
    _metrics.clear();
    
    developer.log('🛑 PerformanceService disposed');
  }
}

/// Performance metric data class
class PerformanceMetric {
  final String type;
  final String operation;
  final int value;
  final DateTime timestamp;

  PerformanceMetric({
    required this.type,
    required this.operation,
    required this.value,
    required this.timestamp,
  });
}

/// Widget optimization utilities
class WidgetOptimizer {
  /// Create optimized cached network image
  static Widget optimizedNetworkImage(
    String url, {
    double? width,
    double? height,
    BoxFit? fit,
    Widget? placeholder,
    Widget? errorWidget,
  }) {
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      fit: fit ?? BoxFit.cover,
      placeholder: placeholder ?? const Center(child: CircularProgressIndicator()),
      errorWidget: errorWidget ?? (context, url, error) => const Icon(Icons.error),
      cacheManager: AppCacheManager.instance,
      memCacheWidth: width?.toInt(),
      memCacheHeight: height?.toInt(),
    );
  }

  /// Create optimized card widget
  static Widget optimizedCard({
    required Widget child,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
  }) {
    return _OptimizedCard(
      margin: margin,
      padding: padding,
      child: child,
    );
  }

  /// Create optimized list tile
  static Widget optimizedListTile({
    Widget? leading,
    required Widget title,
    Widget? subtitle,
    Widget? trailing,
    VoidCallback? onTap,
  }) {
    return _OptimizedListTile(
      leading: leading,
      title: title,
      subtitle: subtitle,
      trailing: trailing,
      onTap: onTap,
    );
  }
}

/// Const-optimized card widget
class _OptimizedCard extends StatelessWidget {
  const _OptimizedCard({
    required this.child,
    this.margin,
    this.padding,
  });

  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: margin,
      child: padding != null
          ? Padding(padding: padding!, child: child)
          : child,
    );
  }
}

/// Const-optimized list tile widget
class _OptimizedListTile extends StatelessWidget {
  const _OptimizedListTile({
    this.leading,
    required this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
  });

  final Widget? leading;
  final Widget title;
  final Widget? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: title,
      subtitle: subtitle,
      trailing: trailing,
      onTap: onTap,
    );
  }
}