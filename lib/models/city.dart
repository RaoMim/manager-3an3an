import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
sealed class City with _$City {
  const factory City({
    required int id,
    required String name,
    required bool isActive,
    @Default(0) int orderCount,
    @Default(0) int activeTransporters,
    @Default(0.0) double deliveryFee,
    String? province,
    String? region,
    double? latitude,
    double? longitude,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _City;

  factory City.fromJson(Map<String, Object?> json) => _$CityFromJson(json);
}

@freezed
sealed class CityStatistics with _$CityStatistics {
  const factory CityStatistics({
    required int totalCities,
    required int activeCities,
    required int totalOrders,
    required int activeTransporters,
    @Default(0.0) double averageDeliveryFee,
  }) = _CityStatistics;

  factory CityStatistics.fromJson(Map<String, Object?> json) => 
      _$CityStatisticsFromJson(json);
}

/// City extensions for UI helpers
extension CityX on City {
  /// Get display name for UI
  String get displayName => name;
  
  /// Get full location string (city + province)
  String get fullLocation => province != null ? '$name, $province' : name;
  
  /// Check if city is available for orders
  bool get isAvailable => isActive && activeTransporters > 0;
  
  /// Get formatted delivery fee
  String get formattedDeliveryFee => '${deliveryFee.toStringAsFixed(2)} MAD';
  
  /// Get status display name
  String get statusDisplayName => isActive ? 'Active' : 'Inactive';
  
  /// Get status color for UI
  String get statusColor => isActive ? '#66BB6A' : '#EF5350';
  
  /// Get orders count display
  String get ordersCountDisplay => '$orderCount commande${orderCount != 1 ? 's' : ''}';
  
  /// Get transporters count display
  String get transportersCountDisplay => 
      '$activeTransporters transporteur${activeTransporters != 1 ? 's' : ''}';
}