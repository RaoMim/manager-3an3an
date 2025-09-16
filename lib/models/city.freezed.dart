// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
mixin _$City {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  int get orderCount => throw _privateConstructorUsedError;
  int get activeTransporters => throw _privateConstructorUsedError;
  double get deliveryFee => throw _privateConstructorUsedError;
  String? get province => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this City to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res, City>;
  @useResult
  $Res call({
    int id,
    String name,
    bool isActive,
    int orderCount,
    int activeTransporters,
    double deliveryFee,
    String? province,
    String? region,
    double? latitude,
    double? longitude,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$CityCopyWithImpl<$Res, $Val extends City>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isActive = null,
    Object? orderCount = null,
    Object? activeTransporters = null,
    Object? deliveryFee = null,
    Object? province = freezed,
    Object? region = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            orderCount: null == orderCount
                ? _value.orderCount
                : orderCount // ignore: cast_nullable_to_non_nullable
                      as int,
            activeTransporters: null == activeTransporters
                ? _value.activeTransporters
                : activeTransporters // ignore: cast_nullable_to_non_nullable
                      as int,
            deliveryFee: null == deliveryFee
                ? _value.deliveryFee
                : deliveryFee // ignore: cast_nullable_to_non_nullable
                      as double,
            province: freezed == province
                ? _value.province
                : province // ignore: cast_nullable_to_non_nullable
                      as String?,
            region: freezed == region
                ? _value.region
                : region // ignore: cast_nullable_to_non_nullable
                      as String?,
            latitude: freezed == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                      as double?,
            longitude: freezed == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                      as double?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CityImplCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$CityImplCopyWith(
    _$CityImpl value,
    $Res Function(_$CityImpl) then,
  ) = __$$CityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    bool isActive,
    int orderCount,
    int activeTransporters,
    double deliveryFee,
    String? province,
    String? region,
    double? latitude,
    double? longitude,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$CityImplCopyWithImpl<$Res>
    extends _$CityCopyWithImpl<$Res, _$CityImpl>
    implements _$$CityImplCopyWith<$Res> {
  __$$CityImplCopyWithImpl(_$CityImpl _value, $Res Function(_$CityImpl) _then)
    : super(_value, _then);

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isActive = null,
    Object? orderCount = null,
    Object? activeTransporters = null,
    Object? deliveryFee = null,
    Object? province = freezed,
    Object? region = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$CityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        orderCount: null == orderCount
            ? _value.orderCount
            : orderCount // ignore: cast_nullable_to_non_nullable
                  as int,
        activeTransporters: null == activeTransporters
            ? _value.activeTransporters
            : activeTransporters // ignore: cast_nullable_to_non_nullable
                  as int,
        deliveryFee: null == deliveryFee
            ? _value.deliveryFee
            : deliveryFee // ignore: cast_nullable_to_non_nullable
                  as double,
        province: freezed == province
            ? _value.province
            : province // ignore: cast_nullable_to_non_nullable
                  as String?,
        region: freezed == region
            ? _value.region
            : region // ignore: cast_nullable_to_non_nullable
                  as String?,
        latitude: freezed == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double?,
        longitude: freezed == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CityImpl implements _City {
  const _$CityImpl({
    required this.id,
    required this.name,
    required this.isActive,
    this.orderCount = 0,
    this.activeTransporters = 0,
    this.deliveryFee = 0.0,
    this.province,
    this.region,
    this.latitude,
    this.longitude,
    this.createdAt,
    this.updatedAt,
  });

  factory _$CityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final bool isActive;
  @override
  @JsonKey()
  final int orderCount;
  @override
  @JsonKey()
  final int activeTransporters;
  @override
  @JsonKey()
  final double deliveryFee;
  @override
  final String? province;
  @override
  final String? region;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'City(id: $id, name: $name, isActive: $isActive, orderCount: $orderCount, activeTransporters: $activeTransporters, deliveryFee: $deliveryFee, province: $province, region: $region, latitude: $latitude, longitude: $longitude, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.orderCount, orderCount) ||
                other.orderCount == orderCount) &&
            (identical(other.activeTransporters, activeTransporters) ||
                other.activeTransporters == activeTransporters) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    isActive,
    orderCount,
    activeTransporters,
    deliveryFee,
    province,
    region,
    latitude,
    longitude,
    createdAt,
    updatedAt,
  );

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      __$$CityImplCopyWithImpl<_$CityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityImplToJson(this);
  }
}

abstract class _City implements City {
  const factory _City({
    required final int id,
    required final String name,
    required final bool isActive,
    final int orderCount,
    final int activeTransporters,
    final double deliveryFee,
    final String? province,
    final String? region,
    final double? latitude,
    final double? longitude,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$CityImpl;

  factory _City.fromJson(Map<String, dynamic> json) = _$CityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  bool get isActive;
  @override
  int get orderCount;
  @override
  int get activeTransporters;
  @override
  double get deliveryFee;
  @override
  String? get province;
  @override
  String? get region;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CityStatistics _$CityStatisticsFromJson(Map<String, dynamic> json) {
  return _CityStatistics.fromJson(json);
}

/// @nodoc
mixin _$CityStatistics {
  int get totalCities => throw _privateConstructorUsedError;
  int get activeCities => throw _privateConstructorUsedError;
  int get totalOrders => throw _privateConstructorUsedError;
  int get activeTransporters => throw _privateConstructorUsedError;
  double get averageDeliveryFee => throw _privateConstructorUsedError;

  /// Serializes this CityStatistics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CityStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityStatisticsCopyWith<CityStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityStatisticsCopyWith<$Res> {
  factory $CityStatisticsCopyWith(
    CityStatistics value,
    $Res Function(CityStatistics) then,
  ) = _$CityStatisticsCopyWithImpl<$Res, CityStatistics>;
  @useResult
  $Res call({
    int totalCities,
    int activeCities,
    int totalOrders,
    int activeTransporters,
    double averageDeliveryFee,
  });
}

/// @nodoc
class _$CityStatisticsCopyWithImpl<$Res, $Val extends CityStatistics>
    implements $CityStatisticsCopyWith<$Res> {
  _$CityStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CityStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCities = null,
    Object? activeCities = null,
    Object? totalOrders = null,
    Object? activeTransporters = null,
    Object? averageDeliveryFee = null,
  }) {
    return _then(
      _value.copyWith(
            totalCities: null == totalCities
                ? _value.totalCities
                : totalCities // ignore: cast_nullable_to_non_nullable
                      as int,
            activeCities: null == activeCities
                ? _value.activeCities
                : activeCities // ignore: cast_nullable_to_non_nullable
                      as int,
            totalOrders: null == totalOrders
                ? _value.totalOrders
                : totalOrders // ignore: cast_nullable_to_non_nullable
                      as int,
            activeTransporters: null == activeTransporters
                ? _value.activeTransporters
                : activeTransporters // ignore: cast_nullable_to_non_nullable
                      as int,
            averageDeliveryFee: null == averageDeliveryFee
                ? _value.averageDeliveryFee
                : averageDeliveryFee // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CityStatisticsImplCopyWith<$Res>
    implements $CityStatisticsCopyWith<$Res> {
  factory _$$CityStatisticsImplCopyWith(
    _$CityStatisticsImpl value,
    $Res Function(_$CityStatisticsImpl) then,
  ) = __$$CityStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int totalCities,
    int activeCities,
    int totalOrders,
    int activeTransporters,
    double averageDeliveryFee,
  });
}

/// @nodoc
class __$$CityStatisticsImplCopyWithImpl<$Res>
    extends _$CityStatisticsCopyWithImpl<$Res, _$CityStatisticsImpl>
    implements _$$CityStatisticsImplCopyWith<$Res> {
  __$$CityStatisticsImplCopyWithImpl(
    _$CityStatisticsImpl _value,
    $Res Function(_$CityStatisticsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CityStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCities = null,
    Object? activeCities = null,
    Object? totalOrders = null,
    Object? activeTransporters = null,
    Object? averageDeliveryFee = null,
  }) {
    return _then(
      _$CityStatisticsImpl(
        totalCities: null == totalCities
            ? _value.totalCities
            : totalCities // ignore: cast_nullable_to_non_nullable
                  as int,
        activeCities: null == activeCities
            ? _value.activeCities
            : activeCities // ignore: cast_nullable_to_non_nullable
                  as int,
        totalOrders: null == totalOrders
            ? _value.totalOrders
            : totalOrders // ignore: cast_nullable_to_non_nullable
                  as int,
        activeTransporters: null == activeTransporters
            ? _value.activeTransporters
            : activeTransporters // ignore: cast_nullable_to_non_nullable
                  as int,
        averageDeliveryFee: null == averageDeliveryFee
            ? _value.averageDeliveryFee
            : averageDeliveryFee // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CityStatisticsImpl implements _CityStatistics {
  const _$CityStatisticsImpl({
    required this.totalCities,
    required this.activeCities,
    required this.totalOrders,
    required this.activeTransporters,
    this.averageDeliveryFee = 0.0,
  });

  factory _$CityStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityStatisticsImplFromJson(json);

  @override
  final int totalCities;
  @override
  final int activeCities;
  @override
  final int totalOrders;
  @override
  final int activeTransporters;
  @override
  @JsonKey()
  final double averageDeliveryFee;

  @override
  String toString() {
    return 'CityStatistics(totalCities: $totalCities, activeCities: $activeCities, totalOrders: $totalOrders, activeTransporters: $activeTransporters, averageDeliveryFee: $averageDeliveryFee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityStatisticsImpl &&
            (identical(other.totalCities, totalCities) ||
                other.totalCities == totalCities) &&
            (identical(other.activeCities, activeCities) ||
                other.activeCities == activeCities) &&
            (identical(other.totalOrders, totalOrders) ||
                other.totalOrders == totalOrders) &&
            (identical(other.activeTransporters, activeTransporters) ||
                other.activeTransporters == activeTransporters) &&
            (identical(other.averageDeliveryFee, averageDeliveryFee) ||
                other.averageDeliveryFee == averageDeliveryFee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalCities,
    activeCities,
    totalOrders,
    activeTransporters,
    averageDeliveryFee,
  );

  /// Create a copy of CityStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityStatisticsImplCopyWith<_$CityStatisticsImpl> get copyWith =>
      __$$CityStatisticsImplCopyWithImpl<_$CityStatisticsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CityStatisticsImplToJson(this);
  }
}

abstract class _CityStatistics implements CityStatistics {
  const factory _CityStatistics({
    required final int totalCities,
    required final int activeCities,
    required final int totalOrders,
    required final int activeTransporters,
    final double averageDeliveryFee,
  }) = _$CityStatisticsImpl;

  factory _CityStatistics.fromJson(Map<String, dynamic> json) =
      _$CityStatisticsImpl.fromJson;

  @override
  int get totalCities;
  @override
  int get activeCities;
  @override
  int get totalOrders;
  @override
  int get activeTransporters;
  @override
  double get averageDeliveryFee;

  /// Create a copy of CityStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityStatisticsImplCopyWith<_$CityStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
