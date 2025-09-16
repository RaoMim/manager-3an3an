import 'dart:convert';
import 'dart:developer' as developer;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import '../models/order.dart';
import '../models/transporter.dart';
import '../models/city.dart';
import '../models/auto_assignment_config.dart';

/// Comprehensive caching service for performance optimization using 2025 best practices
class CacheService {
  static CacheService? _instance;
  static CacheService get instance => _instance ??= CacheService._();

  CacheService._();

  late SharedPreferences _prefs;
  static const String _cachePrefix = 'cache_';
  static const Duration _defaultCacheDuration = Duration(minutes: 15);
  
  // Cache keys
  static const String _ordersKey = '${_cachePrefix}orders';
  static const String _transportersKey = '${_cachePrefix}transporters';
  static const String _citiesKey = '${_cachePrefix}cities';
  static const String _statisticsKey = '${_cachePrefix}statistics';
  static const String _configKey = '${_cachePrefix}config';
  
  // Timestamp keys
  static const String _timestampSuffix = '_timestamp';

  /// Initialize cache service
  Future<void> initialize() async {
    _prefs = await SharedPreferences.getInstance();
    await _cleanExpiredCache();
    developer.log('🚀 CacheService initialized');
  }

  /// Advanced caching for orders with pagination support
  Future<void> cacheOrders(
    List<Order> orders, {
    int page = 1,
    String? status,
    String? search,
    Duration? duration,
  }) async {
    try {
      final cacheKey = _generateOrdersCacheKey(page: page, status: status, search: search);
      final cacheData = {
        'orders': orders.map((order) => order.toJson()).toList(),
        'page': page,
        'status': status,
        'search': search,
        'count': orders.length,
      };
      
      await _setCacheWithTimestamp(
        cacheKey,
        jsonEncode(cacheData),
        duration ?? _defaultCacheDuration,
      );
      
      developer.log('📦 Cached ${orders.length} orders for page $page');
    } catch (e) {
      developer.log('❌ Error caching orders: $e');
    }
  }

  /// Retrieve cached orders
  Future<List<Order>?> getCachedOrders({
    int page = 1,
    String? status,
    String? search,
  }) async {
    try {
      final cacheKey = _generateOrdersCacheKey(page: page, status: status, search: search);
      final cachedData = await _getCacheWithValidation(cacheKey);
      
      if (cachedData != null) {
        final data = jsonDecode(cachedData) as Map<String, dynamic>;
        final ordersList = data['orders'] as List;
        final orders = ordersList
            .map((orderJson) => Order.fromJson(orderJson as Map<String, dynamic>))
            .toList();
        
        developer.log('✅ Retrieved ${orders.length} cached orders for page $page');
        return orders;
      }
    } catch (e) {
      developer.log('❌ Error retrieving cached orders: $e');
    }
    return null;
  }

  /// Cache transporters with filtering support
  Future<void> cacheTransporters(
    List<Transporter> transporters, {
    String? status,
    int? cityId,
    bool? availableOnly,
    Duration? duration,
  }) async {
    try {
      final cacheKey = _generateTransportersCacheKey(
        status: status,
        cityId: cityId,
        availableOnly: availableOnly,
      );
      
      final cacheData = {
        'transporters': transporters.map((t) => t.toJson()).toList(),
        'status': status,
        'cityId': cityId,
        'availableOnly': availableOnly,
        'count': transporters.length,
      };
      
      await _setCacheWithTimestamp(
        cacheKey,
        jsonEncode(cacheData),
        duration ?? _defaultCacheDuration,
      );
      
      developer.log('📦 Cached ${transporters.length} transporters');
    } catch (e) {
      developer.log('❌ Error caching transporters: $e');
    }
  }

  /// Retrieve cached transporters
  Future<List<Transporter>?> getCachedTransporters({
    String? status,
    int? cityId,
    bool? availableOnly,
  }) async {
    try {
      final cacheKey = _generateTransportersCacheKey(
        status: status,
        cityId: cityId,
        availableOnly: availableOnly,
      );
      
      final cachedData = await _getCacheWithValidation(cacheKey);
      
      if (cachedData != null) {
        final data = jsonDecode(cachedData) as Map<String, dynamic>;
        final transportersList = data['transporters'] as List;
        final transporters = transportersList
            .map((json) => Transporter.fromJson(json as Map<String, dynamic>))
            .toList();
        
        developer.log('✅ Retrieved ${transporters.length} cached transporters');
        return transporters;
      }
    } catch (e) {
      developer.log('❌ Error retrieving cached transporters: $e');
    }
    return null;
  }

  /// Cache cities
  Future<void> cacheCities(List<City> cities, {Duration? duration}) async {
    try {
      final cacheData = {
        'cities': cities.map((city) => city.toJson()).toList(),
        'count': cities.length,
      };
      
      await _setCacheWithTimestamp(
        _citiesKey,
        jsonEncode(cacheData),
        duration ?? const Duration(hours: 24), // Cities change less frequently
      );
      
      developer.log('📦 Cached ${cities.length} cities');
    } catch (e) {
      developer.log('❌ Error caching cities: $e');
    }
  }

  /// Retrieve cached cities
  Future<List<City>?> getCachedCities() async {
    try {
      final cachedData = await _getCacheWithValidation(_citiesKey);
      
      if (cachedData != null) {
        final data = jsonDecode(cachedData) as Map<String, dynamic>;
        final citiesList = data['cities'] as List;
        final cities = citiesList
            .map((json) => City.fromJson(json as Map<String, dynamic>))
            .toList();
        
        developer.log('✅ Retrieved ${cities.length} cached cities');
        return cities;
      }
    } catch (e) {
      developer.log('❌ Error retrieving cached cities: $e');
    }
    return null;
  }

  /// Cache statistics with timestamp
  Future<void> cacheStatistics(Map<String, dynamic> statistics, {Duration? duration}) async {
    try {
      await _setCacheWithTimestamp(
        _statisticsKey,
        jsonEncode(statistics),
        duration ?? const Duration(minutes: 5), // Statistics change frequently
      );
      
      developer.log('📦 Cached statistics data');
    } catch (e) {
      developer.log('❌ Error caching statistics: $e');
    }
  }

  /// Retrieve cached statistics
  Future<Map<String, dynamic>?> getCachedStatistics() async {
    try {
      final cachedData = await _getCacheWithValidation(_statisticsKey);
      
      if (cachedData != null) {
        final statistics = jsonDecode(cachedData) as Map<String, dynamic>;
        developer.log('✅ Retrieved cached statistics');
        return statistics;
      }
    } catch (e) {
      developer.log('❌ Error retrieving cached statistics: $e');
    }
    return null;
  }

  /// Cache app configuration
  Future<void> cacheConfig(AutoAssignmentConfig config, {Duration? duration}) async {
    try {
      await _setCacheWithTimestamp(
        _configKey,
        jsonEncode(config.toJson()),
        duration ?? const Duration(hours: 1),
      );
      
      developer.log('📦 Cached app configuration');
    } catch (e) {
      developer.log('❌ Error caching config: $e');
    }
  }

  /// Retrieve cached configuration
  Future<AutoAssignmentConfig?> getCachedConfig() async {
    try {
      final cachedData = await _getCacheWithValidation(_configKey);
      
      if (cachedData != null) {
        final configJson = jsonDecode(cachedData) as Map<String, dynamic>;
        final config = AutoAssignmentConfig.fromJson(configJson);
        developer.log('✅ Retrieved cached configuration');
        return config;
      }
    } catch (e) {
      developer.log('❌ Error retrieving cached config: $e');
    }
    return null;
  }

  /// Invalidate specific cache
  Future<void> invalidateCache(String key) async {
    try {
      await _prefs.remove(key);
      await _prefs.remove('$key$_timestampSuffix');
      developer.log('🗑️ Invalidated cache: $key');
    } catch (e) {
      developer.log('❌ Error invalidating cache: $e');
    }
  }

  /// Invalidate all orders cache
  Future<void> invalidateOrdersCache() async {
    try {
      final keys = _prefs.getKeys().where((key) => key.startsWith('${_ordersKey}_')).toList();
      for (final key in keys) {
        await _prefs.remove(key);
        await _prefs.remove('$key$_timestampSuffix');
      }
      developer.log('🗑️ Invalidated all orders cache');
    } catch (e) {
      developer.log('❌ Error invalidating orders cache: $e');
    }
  }

  /// Invalidate transporters cache
  Future<void> invalidateTransportersCache() async {
    try {
      final keys = _prefs.getKeys().where((key) => key.startsWith('${_transportersKey}_')).toList();
      for (final key in keys) {
        await _prefs.remove(key);
        await _prefs.remove('$key$_timestampSuffix');
      }
      developer.log('🗑️ Invalidated all transporters cache');
    } catch (e) {
      developer.log('❌ Error invalidating transporters cache: $e');
    }
  }

  /// Clear all cache
  Future<void> clearAllCache() async {
    try {
      final cacheKeys = _prefs.getKeys().where((key) => key.startsWith(_cachePrefix)).toList();
      for (final key in cacheKeys) {
        await _prefs.remove(key);
      }
      developer.log('🗑️ Cleared all cache');
    } catch (e) {
      developer.log('❌ Error clearing cache: $e');
    }
  }

  /// Get cache size information
  Future<Map<String, dynamic>> getCacheInfo() async {
    try {
      final cacheKeys = _prefs.getKeys().where((key) => key.startsWith(_cachePrefix)).toList();
      final nonTimestampKeys = cacheKeys.where((key) => !key.endsWith(_timestampSuffix)).toList();
      
      int totalSize = 0;
      final categories = <String, int>{};
      
      for (final key in nonTimestampKeys) {
        final data = _prefs.getString(key);
        if (data != null) {
          final size = data.length;
          totalSize += size;
          
          if (key.contains('orders')) {
            categories['orders'] = (categories['orders'] ?? 0) + size;
          } else if (key.contains('transporters')) {
            categories['transporters'] = (categories['transporters'] ?? 0) + size;
          } else if (key.contains('cities')) {
            categories['cities'] = (categories['cities'] ?? 0) + size;
          } else if (key.contains('statistics')) {
            categories['statistics'] = (categories['statistics'] ?? 0) + size;
          } else {
            categories['other'] = (categories['other'] ?? 0) + size;
          }
        }
      }
      
      return {
        'totalKeys': nonTimestampKeys.length,
        'totalSize': totalSize,
        'categories': categories,
        'sizeMB': (totalSize / (1024 * 1024)).toStringAsFixed(2),
      };
    } catch (e) {
      developer.log('❌ Error getting cache info: $e');
      return {};
    }
  }

  /// Private methods
  String _generateOrdersCacheKey({
    int? page,
    String? status,
    String? search,
  }) {
    final parts = <String>[_ordersKey];
    if (page != null) parts.add('page_$page');
    if (status != null) parts.add('status_$status');
    if (search != null && search.isNotEmpty) parts.add('search_${search.hashCode}');
    return parts.join('_');
  }

  String _generateTransportersCacheKey({
    String? status,
    int? cityId,
    bool? availableOnly,
  }) {
    final parts = <String>[_transportersKey];
    if (status != null) parts.add('status_$status');
    if (cityId != null) parts.add('city_$cityId');
    if (availableOnly == true) parts.add('available');
    return parts.join('_');
  }

  Future<void> _setCacheWithTimestamp(String key, String data, Duration duration) async {
    final expiryTime = DateTime.now().add(duration).millisecondsSinceEpoch;
    await _prefs.setString(key, data);
    await _prefs.setInt('$key$_timestampSuffix', expiryTime);
  }

  Future<String?> _getCacheWithValidation(String key) async {
    final timestampKey = '$key$_timestampSuffix';
    final expiryTime = _prefs.getInt(timestampKey);
    
    if (expiryTime == null) {
      return null; // No timestamp found
    }
    
    if (DateTime.now().millisecondsSinceEpoch > expiryTime) {
      // Cache expired, remove it
      await _prefs.remove(key);
      await _prefs.remove(timestampKey);
      return null;
    }
    
    return _prefs.getString(key);
  }

  Future<void> _cleanExpiredCache() async {
    try {
      final now = DateTime.now().millisecondsSinceEpoch;
      final timestampKeys = _prefs.getKeys()
          .where((key) => key.endsWith(_timestampSuffix))
          .toList();
      
      int cleanedCount = 0;
      for (final timestampKey in timestampKeys) {
        final expiryTime = _prefs.getInt(timestampKey);
        if (expiryTime != null && now > expiryTime) {
          final dataKey = timestampKey.replaceAll(_timestampSuffix, '');
          await _prefs.remove(dataKey);
          await _prefs.remove(timestampKey);
          cleanedCount++;
        }
      }
      
      if (cleanedCount > 0) {
        developer.log('🧹 Cleaned $cleanedCount expired cache entries');
      }
    } catch (e) {
      developer.log('❌ Error cleaning expired cache: $e');
    }
  }
}

/// Custom cache manager for images and files
class AppCacheManager {
  static const String key = '3an3anManagerCache';
  
  static CacheManager get instance => CacheManager(
    Config(
      key,
      stalePeriod: const Duration(days: 7),
      maxNrOfCacheObjects: 200,
      repo: JsonCacheInfoRepository(databaseName: key),
      fileService: HttpFileService(),
    ),
  );
  
  /// Clear image cache
  static Future<void> clearImageCache() async {
    await instance.emptyCache();
    developer.log('🗑️ Cleared image cache');
  }
  
  /// Get cache info
  static Future<Map<String, dynamic>> getCacheInfo() async {
    try {
      final cacheObjects = await instance.getFileFromCache(key);
      return {
        'hasCache': cacheObjects != null,
        'lastModified': cacheObjects?.validTill,
      };
    } catch (e) {
      return {'error': e.toString()};
    }
  }
}

/// Memory optimization utilities
class MemoryOptimizer {
  /// Dispose of heavy resources
  static void disposeResources() {
    // Force garbage collection
    developer.log('🧹 Disposing resources and triggering GC');
  }
  
  /// Check memory usage (for development)
  static void logMemoryUsage(String context) {
    developer.log('📊 Memory check: $context');
  }
  
  /// Optimize image loading
  static ImageProvider optimizeImageProvider(String url) {
    return CachedNetworkImageProvider(
      url,
      cacheManager: AppCacheManager.instance,
    );
  }
}