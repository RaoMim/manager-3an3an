// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_assignment_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AutoAssignmentConfigImpl _$$AutoAssignmentConfigImplFromJson(
  Map<String, dynamic> json,
) => _$AutoAssignmentConfigImpl(
  id: (json['id'] as num).toInt(),
  isEnabled: json['isEnabled'] as bool,
  maxDistanceKm: (json['maxDistanceKm'] as num?)?.toDouble() ?? 5.0,
  maxRetryAttempts: (json['maxRetryAttempts'] as num?)?.toInt() ?? 3,
  retryDelaySeconds: (json['retryDelaySeconds'] as num?)?.toInt() ?? 30,
  considerTransporterRating: json['considerTransporterRating'] as bool? ?? true,
  minTransporterRating:
      (json['minTransporterRating'] as num?)?.toDouble() ?? 4.0,
  considerDeliveryHistory: json['considerDeliveryHistory'] as bool? ?? true,
  minCompletedDeliveries:
      (json['minCompletedDeliveries'] as num?)?.toInt() ?? 10,
  prioritizeNearbyTransporters:
      json['prioritizeNearbyTransporters'] as bool? ?? true,
  avoidBlockedTransporters: json['avoidBlockedTransporters'] as bool? ?? true,
  requireOnlineStatus: json['requireOnlineStatus'] as bool? ?? true,
  triggeredOrderStatuses:
      (json['triggeredOrderStatuses'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const ['confirmed'],
  excludedCityIds:
      (json['excludedCityIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [],
  priorityCityIds:
      (json['priorityCityIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [],
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  lastModifiedBy: json['lastModifiedBy'] as String?,
);

Map<String, dynamic> _$$AutoAssignmentConfigImplToJson(
  _$AutoAssignmentConfigImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'isEnabled': instance.isEnabled,
  'maxDistanceKm': instance.maxDistanceKm,
  'maxRetryAttempts': instance.maxRetryAttempts,
  'retryDelaySeconds': instance.retryDelaySeconds,
  'considerTransporterRating': instance.considerTransporterRating,
  'minTransporterRating': instance.minTransporterRating,
  'considerDeliveryHistory': instance.considerDeliveryHistory,
  'minCompletedDeliveries': instance.minCompletedDeliveries,
  'prioritizeNearbyTransporters': instance.prioritizeNearbyTransporters,
  'avoidBlockedTransporters': instance.avoidBlockedTransporters,
  'requireOnlineStatus': instance.requireOnlineStatus,
  'triggeredOrderStatuses': instance.triggeredOrderStatuses,
  'excludedCityIds': instance.excludedCityIds,
  'priorityCityIds': instance.priorityCityIds,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'lastModifiedBy': instance.lastModifiedBy,
};

_$AutoAssignmentRuleImpl _$$AutoAssignmentRuleImplFromJson(
  Map<String, dynamic> json,
) => _$AutoAssignmentRuleImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  condition: json['condition'] as String,
  priority: (json['priority'] as num).toInt(),
  isActive: json['isActive'] as bool,
  description: json['description'] as String?,
  parameters: json['parameters'] as Map<String, dynamic>?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$AutoAssignmentRuleImplToJson(
  _$AutoAssignmentRuleImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'condition': instance.condition,
  'priority': instance.priority,
  'isActive': instance.isActive,
  'description': instance.description,
  'parameters': instance.parameters,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

_$AutoAssignmentStatsImpl _$$AutoAssignmentStatsImplFromJson(
  Map<String, dynamic> json,
) => _$AutoAssignmentStatsImpl(
  totalAttempts: (json['totalAttempts'] as num?)?.toInt() ?? 0,
  successfulAssignments: (json['successfulAssignments'] as num?)?.toInt() ?? 0,
  failedAssignments: (json['failedAssignments'] as num?)?.toInt() ?? 0,
  successRate: (json['successRate'] as num?)?.toDouble() ?? 0.0,
  averageAssignmentTimeSeconds:
      (json['averageAssignmentTimeSeconds'] as num?)?.toDouble() ?? 0.0,
  totalOrdersProcessed: (json['totalOrdersProcessed'] as num?)?.toInt() ?? 0,
  lastProcessedAt: json['lastProcessedAt'] == null
      ? null
      : DateTime.parse(json['lastProcessedAt'] as String),
  periodStart: json['periodStart'] == null
      ? null
      : DateTime.parse(json['periodStart'] as String),
  periodEnd: json['periodEnd'] == null
      ? null
      : DateTime.parse(json['periodEnd'] as String),
);

Map<String, dynamic> _$$AutoAssignmentStatsImplToJson(
  _$AutoAssignmentStatsImpl instance,
) => <String, dynamic>{
  'totalAttempts': instance.totalAttempts,
  'successfulAssignments': instance.successfulAssignments,
  'failedAssignments': instance.failedAssignments,
  'successRate': instance.successRate,
  'averageAssignmentTimeSeconds': instance.averageAssignmentTimeSeconds,
  'totalOrdersProcessed': instance.totalOrdersProcessed,
  'lastProcessedAt': instance.lastProcessedAt?.toIso8601String(),
  'periodStart': instance.periodStart?.toIso8601String(),
  'periodEnd': instance.periodEnd?.toIso8601String(),
};
