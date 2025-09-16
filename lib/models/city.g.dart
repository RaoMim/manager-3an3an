// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  isActive: json['isActive'] as bool,
  orderCount: (json['orderCount'] as num?)?.toInt() ?? 0,
  activeTransporters: (json['activeTransporters'] as num?)?.toInt() ?? 0,
  deliveryFee: (json['deliveryFee'] as num?)?.toDouble() ?? 0.0,
  province: json['province'] as String?,
  region: json['region'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isActive': instance.isActive,
      'orderCount': instance.orderCount,
      'activeTransporters': instance.activeTransporters,
      'deliveryFee': instance.deliveryFee,
      'province': instance.province,
      'region': instance.region,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$CityStatisticsImpl _$$CityStatisticsImplFromJson(Map<String, dynamic> json) =>
    _$CityStatisticsImpl(
      totalCities: (json['totalCities'] as num).toInt(),
      activeCities: (json['activeCities'] as num).toInt(),
      totalOrders: (json['totalOrders'] as num).toInt(),
      activeTransporters: (json['activeTransporters'] as num).toInt(),
      averageDeliveryFee:
          (json['averageDeliveryFee'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$CityStatisticsImplToJson(
  _$CityStatisticsImpl instance,
) => <String, dynamic>{
  'totalCities': instance.totalCities,
  'activeCities': instance.activeCities,
  'totalOrders': instance.totalOrders,
  'activeTransporters': instance.activeTransporters,
  'averageDeliveryFee': instance.averageDeliveryFee,
};
