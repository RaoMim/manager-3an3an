import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auto_assignment_config.freezed.dart';
part 'auto_assignment_config.g.dart';

@freezed
sealed class AutoAssignmentConfig with _$AutoAssignmentConfig {
  const factory AutoAssignmentConfig({
    required int id,
    required bool isEnabled,
    @Default(5.0) double maxDistanceKm,
    @Default(3) int maxRetryAttempts,
    @Default(30) int retryDelaySeconds,
    @Default(true) bool considerTransporterRating,
    @Default(4.0) double minTransporterRating,
    @Default(true) bool considerDeliveryHistory,
    @Default(10) int minCompletedDeliveries,
    @Default(true) bool prioritizeNearbyTransporters,
    @Default(true) bool avoidBlockedTransporters,
    @Default(true) bool requireOnlineStatus,
    @Default(['confirmed']) List<String> triggeredOrderStatuses,
    @Default([]) List<int> excludedCityIds,
    @Default([]) List<int> priorityCityIds,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? lastModifiedBy,
  }) = _AutoAssignmentConfig;

  factory AutoAssignmentConfig.fromJson(Map<String, Object?> json) => 
      _$AutoAssignmentConfigFromJson(json);
}

@freezed
sealed class AutoAssignmentRule with _$AutoAssignmentRule {
  const factory AutoAssignmentRule({
    required int id,
    required String name,
    required String condition,
    required int priority,
    required bool isActive,
    String? description,
    Map<String, dynamic>? parameters,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _AutoAssignmentRule;

  factory AutoAssignmentRule.fromJson(Map<String, Object?> json) => 
      _$AutoAssignmentRuleFromJson(json);
}

@freezed
sealed class AutoAssignmentStats with _$AutoAssignmentStats {
  const factory AutoAssignmentStats({
    @Default(0) int totalAttempts,
    @Default(0) int successfulAssignments,
    @Default(0) int failedAssignments,
    @Default(0.0) double successRate,
    @Default(0.0) double averageAssignmentTimeSeconds,
    @Default(0) int totalOrdersProcessed,
    DateTime? lastProcessedAt,
    DateTime? periodStart,
    DateTime? periodEnd,
  }) = _AutoAssignmentStats;

  factory AutoAssignmentStats.fromJson(Map<String, Object?> json) => 
      _$AutoAssignmentStatsFromJson(json);
}

/// AutoAssignmentConfig extensions for UI helpers
extension AutoAssignmentConfigX on AutoAssignmentConfig {
  /// Get status display name
  String get statusDisplayName => isEnabled ? 'Activé' : 'Désactivé';
  
  /// Get status color for UI
  String get statusColor => isEnabled ? '#66BB6A' : '#EF5350';
  
  /// Get formatted max distance
  String get formattedMaxDistance => '${maxDistanceKm.toStringAsFixed(1)} km';
  
  /// Get formatted retry delay
  String get formattedRetryDelay => '${retryDelaySeconds}s';
  
  /// Get min rating display
  String get formattedMinRating => '${minTransporterRating.toStringAsFixed(1)}/5';
  
  /// Check if config has restrictive settings
  bool get hasRestrictiveSettings => 
      maxDistanceKm < 10.0 || 
      minTransporterRating > 4.5 || 
      minCompletedDeliveries > 20;
  
  /// Get configuration summary for display
  String get configurationSummary {
    final features = <String>[];
    
    if (prioritizeNearbyTransporters) features.add('Proximité');
    if (considerTransporterRating) features.add('Notation');
    if (considerDeliveryHistory) features.add('Historique');
    if (avoidBlockedTransporters) features.add('Filtrage');
    
    return features.isNotEmpty ? features.join(', ') : 'Configuration de base';
  }
  
  /// Get triggered statuses display
  String get triggeredStatusesDisplay => 
      triggeredOrderStatuses.map((s) => s.toUpperCase()).join(', ');
}

/// AutoAssignmentStats extensions for UI helpers
extension AutoAssignmentStatsX on AutoAssignmentStats {
  /// Get formatted success rate
  String get formattedSuccessRate => '${(successRate * 100).toStringAsFixed(1)}%';
  
  /// Get formatted average time
  String get formattedAverageTime => '${averageAssignmentTimeSeconds.toStringAsFixed(1)}s';
  
  /// Check if performance is good
  bool get hasGoodPerformance => successRate >= 0.8 && averageAssignmentTimeSeconds <= 30;
  
  /// Get performance status
  String get performanceStatus {
    if (successRate >= 0.9) return 'Excellent';
    if (successRate >= 0.8) return 'Bon';
    if (successRate >= 0.6) return 'Moyen';
    return 'Faible';
  }
  
  /// Get performance color
  String get performanceColor {
    if (successRate >= 0.8) return '#66BB6A';
    if (successRate >= 0.6) return '#FFA726';
    return '#EF5350';
  }
}