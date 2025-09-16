// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auto_assignment_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AutoAssignmentConfig _$AutoAssignmentConfigFromJson(Map<String, dynamic> json) {
  return _AutoAssignmentConfig.fromJson(json);
}

/// @nodoc
mixin _$AutoAssignmentConfig {
  int get id => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;
  double get maxDistanceKm => throw _privateConstructorUsedError;
  int get maxRetryAttempts => throw _privateConstructorUsedError;
  int get retryDelaySeconds => throw _privateConstructorUsedError;
  bool get considerTransporterRating => throw _privateConstructorUsedError;
  double get minTransporterRating => throw _privateConstructorUsedError;
  bool get considerDeliveryHistory => throw _privateConstructorUsedError;
  int get minCompletedDeliveries => throw _privateConstructorUsedError;
  bool get prioritizeNearbyTransporters => throw _privateConstructorUsedError;
  bool get avoidBlockedTransporters => throw _privateConstructorUsedError;
  bool get requireOnlineStatus => throw _privateConstructorUsedError;
  List<String> get triggeredOrderStatuses => throw _privateConstructorUsedError;
  List<int> get excludedCityIds => throw _privateConstructorUsedError;
  List<int> get priorityCityIds => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get lastModifiedBy => throw _privateConstructorUsedError;

  /// Serializes this AutoAssignmentConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AutoAssignmentConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutoAssignmentConfigCopyWith<AutoAssignmentConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoAssignmentConfigCopyWith<$Res> {
  factory $AutoAssignmentConfigCopyWith(
    AutoAssignmentConfig value,
    $Res Function(AutoAssignmentConfig) then,
  ) = _$AutoAssignmentConfigCopyWithImpl<$Res, AutoAssignmentConfig>;
  @useResult
  $Res call({
    int id,
    bool isEnabled,
    double maxDistanceKm,
    int maxRetryAttempts,
    int retryDelaySeconds,
    bool considerTransporterRating,
    double minTransporterRating,
    bool considerDeliveryHistory,
    int minCompletedDeliveries,
    bool prioritizeNearbyTransporters,
    bool avoidBlockedTransporters,
    bool requireOnlineStatus,
    List<String> triggeredOrderStatuses,
    List<int> excludedCityIds,
    List<int> priorityCityIds,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? lastModifiedBy,
  });
}

/// @nodoc
class _$AutoAssignmentConfigCopyWithImpl<
  $Res,
  $Val extends AutoAssignmentConfig
>
    implements $AutoAssignmentConfigCopyWith<$Res> {
  _$AutoAssignmentConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutoAssignmentConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isEnabled = null,
    Object? maxDistanceKm = null,
    Object? maxRetryAttempts = null,
    Object? retryDelaySeconds = null,
    Object? considerTransporterRating = null,
    Object? minTransporterRating = null,
    Object? considerDeliveryHistory = null,
    Object? minCompletedDeliveries = null,
    Object? prioritizeNearbyTransporters = null,
    Object? avoidBlockedTransporters = null,
    Object? requireOnlineStatus = null,
    Object? triggeredOrderStatuses = null,
    Object? excludedCityIds = null,
    Object? priorityCityIds = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? lastModifiedBy = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            isEnabled: null == isEnabled
                ? _value.isEnabled
                : isEnabled // ignore: cast_nullable_to_non_nullable
                      as bool,
            maxDistanceKm: null == maxDistanceKm
                ? _value.maxDistanceKm
                : maxDistanceKm // ignore: cast_nullable_to_non_nullable
                      as double,
            maxRetryAttempts: null == maxRetryAttempts
                ? _value.maxRetryAttempts
                : maxRetryAttempts // ignore: cast_nullable_to_non_nullable
                      as int,
            retryDelaySeconds: null == retryDelaySeconds
                ? _value.retryDelaySeconds
                : retryDelaySeconds // ignore: cast_nullable_to_non_nullable
                      as int,
            considerTransporterRating: null == considerTransporterRating
                ? _value.considerTransporterRating
                : considerTransporterRating // ignore: cast_nullable_to_non_nullable
                      as bool,
            minTransporterRating: null == minTransporterRating
                ? _value.minTransporterRating
                : minTransporterRating // ignore: cast_nullable_to_non_nullable
                      as double,
            considerDeliveryHistory: null == considerDeliveryHistory
                ? _value.considerDeliveryHistory
                : considerDeliveryHistory // ignore: cast_nullable_to_non_nullable
                      as bool,
            minCompletedDeliveries: null == minCompletedDeliveries
                ? _value.minCompletedDeliveries
                : minCompletedDeliveries // ignore: cast_nullable_to_non_nullable
                      as int,
            prioritizeNearbyTransporters: null == prioritizeNearbyTransporters
                ? _value.prioritizeNearbyTransporters
                : prioritizeNearbyTransporters // ignore: cast_nullable_to_non_nullable
                      as bool,
            avoidBlockedTransporters: null == avoidBlockedTransporters
                ? _value.avoidBlockedTransporters
                : avoidBlockedTransporters // ignore: cast_nullable_to_non_nullable
                      as bool,
            requireOnlineStatus: null == requireOnlineStatus
                ? _value.requireOnlineStatus
                : requireOnlineStatus // ignore: cast_nullable_to_non_nullable
                      as bool,
            triggeredOrderStatuses: null == triggeredOrderStatuses
                ? _value.triggeredOrderStatuses
                : triggeredOrderStatuses // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            excludedCityIds: null == excludedCityIds
                ? _value.excludedCityIds
                : excludedCityIds // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            priorityCityIds: null == priorityCityIds
                ? _value.priorityCityIds
                : priorityCityIds // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            lastModifiedBy: freezed == lastModifiedBy
                ? _value.lastModifiedBy
                : lastModifiedBy // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AutoAssignmentConfigImplCopyWith<$Res>
    implements $AutoAssignmentConfigCopyWith<$Res> {
  factory _$$AutoAssignmentConfigImplCopyWith(
    _$AutoAssignmentConfigImpl value,
    $Res Function(_$AutoAssignmentConfigImpl) then,
  ) = __$$AutoAssignmentConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    bool isEnabled,
    double maxDistanceKm,
    int maxRetryAttempts,
    int retryDelaySeconds,
    bool considerTransporterRating,
    double minTransporterRating,
    bool considerDeliveryHistory,
    int minCompletedDeliveries,
    bool prioritizeNearbyTransporters,
    bool avoidBlockedTransporters,
    bool requireOnlineStatus,
    List<String> triggeredOrderStatuses,
    List<int> excludedCityIds,
    List<int> priorityCityIds,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? lastModifiedBy,
  });
}

/// @nodoc
class __$$AutoAssignmentConfigImplCopyWithImpl<$Res>
    extends _$AutoAssignmentConfigCopyWithImpl<$Res, _$AutoAssignmentConfigImpl>
    implements _$$AutoAssignmentConfigImplCopyWith<$Res> {
  __$$AutoAssignmentConfigImplCopyWithImpl(
    _$AutoAssignmentConfigImpl _value,
    $Res Function(_$AutoAssignmentConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AutoAssignmentConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isEnabled = null,
    Object? maxDistanceKm = null,
    Object? maxRetryAttempts = null,
    Object? retryDelaySeconds = null,
    Object? considerTransporterRating = null,
    Object? minTransporterRating = null,
    Object? considerDeliveryHistory = null,
    Object? minCompletedDeliveries = null,
    Object? prioritizeNearbyTransporters = null,
    Object? avoidBlockedTransporters = null,
    Object? requireOnlineStatus = null,
    Object? triggeredOrderStatuses = null,
    Object? excludedCityIds = null,
    Object? priorityCityIds = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? lastModifiedBy = freezed,
  }) {
    return _then(
      _$AutoAssignmentConfigImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        isEnabled: null == isEnabled
            ? _value.isEnabled
            : isEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        maxDistanceKm: null == maxDistanceKm
            ? _value.maxDistanceKm
            : maxDistanceKm // ignore: cast_nullable_to_non_nullable
                  as double,
        maxRetryAttempts: null == maxRetryAttempts
            ? _value.maxRetryAttempts
            : maxRetryAttempts // ignore: cast_nullable_to_non_nullable
                  as int,
        retryDelaySeconds: null == retryDelaySeconds
            ? _value.retryDelaySeconds
            : retryDelaySeconds // ignore: cast_nullable_to_non_nullable
                  as int,
        considerTransporterRating: null == considerTransporterRating
            ? _value.considerTransporterRating
            : considerTransporterRating // ignore: cast_nullable_to_non_nullable
                  as bool,
        minTransporterRating: null == minTransporterRating
            ? _value.minTransporterRating
            : minTransporterRating // ignore: cast_nullable_to_non_nullable
                  as double,
        considerDeliveryHistory: null == considerDeliveryHistory
            ? _value.considerDeliveryHistory
            : considerDeliveryHistory // ignore: cast_nullable_to_non_nullable
                  as bool,
        minCompletedDeliveries: null == minCompletedDeliveries
            ? _value.minCompletedDeliveries
            : minCompletedDeliveries // ignore: cast_nullable_to_non_nullable
                  as int,
        prioritizeNearbyTransporters: null == prioritizeNearbyTransporters
            ? _value.prioritizeNearbyTransporters
            : prioritizeNearbyTransporters // ignore: cast_nullable_to_non_nullable
                  as bool,
        avoidBlockedTransporters: null == avoidBlockedTransporters
            ? _value.avoidBlockedTransporters
            : avoidBlockedTransporters // ignore: cast_nullable_to_non_nullable
                  as bool,
        requireOnlineStatus: null == requireOnlineStatus
            ? _value.requireOnlineStatus
            : requireOnlineStatus // ignore: cast_nullable_to_non_nullable
                  as bool,
        triggeredOrderStatuses: null == triggeredOrderStatuses
            ? _value._triggeredOrderStatuses
            : triggeredOrderStatuses // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        excludedCityIds: null == excludedCityIds
            ? _value._excludedCityIds
            : excludedCityIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        priorityCityIds: null == priorityCityIds
            ? _value._priorityCityIds
            : priorityCityIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        lastModifiedBy: freezed == lastModifiedBy
            ? _value.lastModifiedBy
            : lastModifiedBy // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AutoAssignmentConfigImpl implements _AutoAssignmentConfig {
  const _$AutoAssignmentConfigImpl({
    required this.id,
    required this.isEnabled,
    this.maxDistanceKm = 5.0,
    this.maxRetryAttempts = 3,
    this.retryDelaySeconds = 30,
    this.considerTransporterRating = true,
    this.minTransporterRating = 4.0,
    this.considerDeliveryHistory = true,
    this.minCompletedDeliveries = 10,
    this.prioritizeNearbyTransporters = true,
    this.avoidBlockedTransporters = true,
    this.requireOnlineStatus = true,
    final List<String> triggeredOrderStatuses = const ['confirmed'],
    final List<int> excludedCityIds = const [],
    final List<int> priorityCityIds = const [],
    this.createdAt,
    this.updatedAt,
    this.lastModifiedBy,
  }) : _triggeredOrderStatuses = triggeredOrderStatuses,
       _excludedCityIds = excludedCityIds,
       _priorityCityIds = priorityCityIds;

  factory _$AutoAssignmentConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoAssignmentConfigImplFromJson(json);

  @override
  final int id;
  @override
  final bool isEnabled;
  @override
  @JsonKey()
  final double maxDistanceKm;
  @override
  @JsonKey()
  final int maxRetryAttempts;
  @override
  @JsonKey()
  final int retryDelaySeconds;
  @override
  @JsonKey()
  final bool considerTransporterRating;
  @override
  @JsonKey()
  final double minTransporterRating;
  @override
  @JsonKey()
  final bool considerDeliveryHistory;
  @override
  @JsonKey()
  final int minCompletedDeliveries;
  @override
  @JsonKey()
  final bool prioritizeNearbyTransporters;
  @override
  @JsonKey()
  final bool avoidBlockedTransporters;
  @override
  @JsonKey()
  final bool requireOnlineStatus;
  final List<String> _triggeredOrderStatuses;
  @override
  @JsonKey()
  List<String> get triggeredOrderStatuses {
    if (_triggeredOrderStatuses is EqualUnmodifiableListView)
      return _triggeredOrderStatuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_triggeredOrderStatuses);
  }

  final List<int> _excludedCityIds;
  @override
  @JsonKey()
  List<int> get excludedCityIds {
    if (_excludedCityIds is EqualUnmodifiableListView) return _excludedCityIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_excludedCityIds);
  }

  final List<int> _priorityCityIds;
  @override
  @JsonKey()
  List<int> get priorityCityIds {
    if (_priorityCityIds is EqualUnmodifiableListView) return _priorityCityIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_priorityCityIds);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? lastModifiedBy;

  @override
  String toString() {
    return 'AutoAssignmentConfig(id: $id, isEnabled: $isEnabled, maxDistanceKm: $maxDistanceKm, maxRetryAttempts: $maxRetryAttempts, retryDelaySeconds: $retryDelaySeconds, considerTransporterRating: $considerTransporterRating, minTransporterRating: $minTransporterRating, considerDeliveryHistory: $considerDeliveryHistory, minCompletedDeliveries: $minCompletedDeliveries, prioritizeNearbyTransporters: $prioritizeNearbyTransporters, avoidBlockedTransporters: $avoidBlockedTransporters, requireOnlineStatus: $requireOnlineStatus, triggeredOrderStatuses: $triggeredOrderStatuses, excludedCityIds: $excludedCityIds, priorityCityIds: $priorityCityIds, createdAt: $createdAt, updatedAt: $updatedAt, lastModifiedBy: $lastModifiedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoAssignmentConfigImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.maxDistanceKm, maxDistanceKm) ||
                other.maxDistanceKm == maxDistanceKm) &&
            (identical(other.maxRetryAttempts, maxRetryAttempts) ||
                other.maxRetryAttempts == maxRetryAttempts) &&
            (identical(other.retryDelaySeconds, retryDelaySeconds) ||
                other.retryDelaySeconds == retryDelaySeconds) &&
            (identical(
                  other.considerTransporterRating,
                  considerTransporterRating,
                ) ||
                other.considerTransporterRating == considerTransporterRating) &&
            (identical(other.minTransporterRating, minTransporterRating) ||
                other.minTransporterRating == minTransporterRating) &&
            (identical(
                  other.considerDeliveryHistory,
                  considerDeliveryHistory,
                ) ||
                other.considerDeliveryHistory == considerDeliveryHistory) &&
            (identical(other.minCompletedDeliveries, minCompletedDeliveries) ||
                other.minCompletedDeliveries == minCompletedDeliveries) &&
            (identical(
                  other.prioritizeNearbyTransporters,
                  prioritizeNearbyTransporters,
                ) ||
                other.prioritizeNearbyTransporters ==
                    prioritizeNearbyTransporters) &&
            (identical(
                  other.avoidBlockedTransporters,
                  avoidBlockedTransporters,
                ) ||
                other.avoidBlockedTransporters == avoidBlockedTransporters) &&
            (identical(other.requireOnlineStatus, requireOnlineStatus) ||
                other.requireOnlineStatus == requireOnlineStatus) &&
            const DeepCollectionEquality().equals(
              other._triggeredOrderStatuses,
              _triggeredOrderStatuses,
            ) &&
            const DeepCollectionEquality().equals(
              other._excludedCityIds,
              _excludedCityIds,
            ) &&
            const DeepCollectionEquality().equals(
              other._priorityCityIds,
              _priorityCityIds,
            ) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.lastModifiedBy, lastModifiedBy) ||
                other.lastModifiedBy == lastModifiedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    isEnabled,
    maxDistanceKm,
    maxRetryAttempts,
    retryDelaySeconds,
    considerTransporterRating,
    minTransporterRating,
    considerDeliveryHistory,
    minCompletedDeliveries,
    prioritizeNearbyTransporters,
    avoidBlockedTransporters,
    requireOnlineStatus,
    const DeepCollectionEquality().hash(_triggeredOrderStatuses),
    const DeepCollectionEquality().hash(_excludedCityIds),
    const DeepCollectionEquality().hash(_priorityCityIds),
    createdAt,
    updatedAt,
    lastModifiedBy,
  );

  /// Create a copy of AutoAssignmentConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoAssignmentConfigImplCopyWith<_$AutoAssignmentConfigImpl>
  get copyWith =>
      __$$AutoAssignmentConfigImplCopyWithImpl<_$AutoAssignmentConfigImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoAssignmentConfigImplToJson(this);
  }
}

abstract class _AutoAssignmentConfig implements AutoAssignmentConfig {
  const factory _AutoAssignmentConfig({
    required final int id,
    required final bool isEnabled,
    final double maxDistanceKm,
    final int maxRetryAttempts,
    final int retryDelaySeconds,
    final bool considerTransporterRating,
    final double minTransporterRating,
    final bool considerDeliveryHistory,
    final int minCompletedDeliveries,
    final bool prioritizeNearbyTransporters,
    final bool avoidBlockedTransporters,
    final bool requireOnlineStatus,
    final List<String> triggeredOrderStatuses,
    final List<int> excludedCityIds,
    final List<int> priorityCityIds,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final String? lastModifiedBy,
  }) = _$AutoAssignmentConfigImpl;

  factory _AutoAssignmentConfig.fromJson(Map<String, dynamic> json) =
      _$AutoAssignmentConfigImpl.fromJson;

  @override
  int get id;
  @override
  bool get isEnabled;
  @override
  double get maxDistanceKm;
  @override
  int get maxRetryAttempts;
  @override
  int get retryDelaySeconds;
  @override
  bool get considerTransporterRating;
  @override
  double get minTransporterRating;
  @override
  bool get considerDeliveryHistory;
  @override
  int get minCompletedDeliveries;
  @override
  bool get prioritizeNearbyTransporters;
  @override
  bool get avoidBlockedTransporters;
  @override
  bool get requireOnlineStatus;
  @override
  List<String> get triggeredOrderStatuses;
  @override
  List<int> get excludedCityIds;
  @override
  List<int> get priorityCityIds;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get lastModifiedBy;

  /// Create a copy of AutoAssignmentConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutoAssignmentConfigImplCopyWith<_$AutoAssignmentConfigImpl>
  get copyWith => throw _privateConstructorUsedError;
}

AutoAssignmentRule _$AutoAssignmentRuleFromJson(Map<String, dynamic> json) {
  return _AutoAssignmentRule.fromJson(json);
}

/// @nodoc
mixin _$AutoAssignmentRule {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get condition => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Map<String, dynamic>? get parameters => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AutoAssignmentRule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AutoAssignmentRule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutoAssignmentRuleCopyWith<AutoAssignmentRule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoAssignmentRuleCopyWith<$Res> {
  factory $AutoAssignmentRuleCopyWith(
    AutoAssignmentRule value,
    $Res Function(AutoAssignmentRule) then,
  ) = _$AutoAssignmentRuleCopyWithImpl<$Res, AutoAssignmentRule>;
  @useResult
  $Res call({
    int id,
    String name,
    String condition,
    int priority,
    bool isActive,
    String? description,
    Map<String, dynamic>? parameters,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$AutoAssignmentRuleCopyWithImpl<$Res, $Val extends AutoAssignmentRule>
    implements $AutoAssignmentRuleCopyWith<$Res> {
  _$AutoAssignmentRuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutoAssignmentRule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? condition = null,
    Object? priority = null,
    Object? isActive = null,
    Object? description = freezed,
    Object? parameters = freezed,
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
            condition: null == condition
                ? _value.condition
                : condition // ignore: cast_nullable_to_non_nullable
                      as String,
            priority: null == priority
                ? _value.priority
                : priority // ignore: cast_nullable_to_non_nullable
                      as int,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            parameters: freezed == parameters
                ? _value.parameters
                : parameters // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
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
abstract class _$$AutoAssignmentRuleImplCopyWith<$Res>
    implements $AutoAssignmentRuleCopyWith<$Res> {
  factory _$$AutoAssignmentRuleImplCopyWith(
    _$AutoAssignmentRuleImpl value,
    $Res Function(_$AutoAssignmentRuleImpl) then,
  ) = __$$AutoAssignmentRuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String condition,
    int priority,
    bool isActive,
    String? description,
    Map<String, dynamic>? parameters,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$AutoAssignmentRuleImplCopyWithImpl<$Res>
    extends _$AutoAssignmentRuleCopyWithImpl<$Res, _$AutoAssignmentRuleImpl>
    implements _$$AutoAssignmentRuleImplCopyWith<$Res> {
  __$$AutoAssignmentRuleImplCopyWithImpl(
    _$AutoAssignmentRuleImpl _value,
    $Res Function(_$AutoAssignmentRuleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AutoAssignmentRule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? condition = null,
    Object? priority = null,
    Object? isActive = null,
    Object? description = freezed,
    Object? parameters = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$AutoAssignmentRuleImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        condition: null == condition
            ? _value.condition
            : condition // ignore: cast_nullable_to_non_nullable
                  as String,
        priority: null == priority
            ? _value.priority
            : priority // ignore: cast_nullable_to_non_nullable
                  as int,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        parameters: freezed == parameters
            ? _value._parameters
            : parameters // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
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
class _$AutoAssignmentRuleImpl implements _AutoAssignmentRule {
  const _$AutoAssignmentRuleImpl({
    required this.id,
    required this.name,
    required this.condition,
    required this.priority,
    required this.isActive,
    this.description,
    final Map<String, dynamic>? parameters,
    this.createdAt,
    this.updatedAt,
  }) : _parameters = parameters;

  factory _$AutoAssignmentRuleImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoAssignmentRuleImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String condition;
  @override
  final int priority;
  @override
  final bool isActive;
  @override
  final String? description;
  final Map<String, dynamic>? _parameters;
  @override
  Map<String, dynamic>? get parameters {
    final value = _parameters;
    if (value == null) return null;
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'AutoAssignmentRule(id: $id, name: $name, condition: $condition, priority: $priority, isActive: $isActive, description: $description, parameters: $parameters, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoAssignmentRuleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(
              other._parameters,
              _parameters,
            ) &&
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
    condition,
    priority,
    isActive,
    description,
    const DeepCollectionEquality().hash(_parameters),
    createdAt,
    updatedAt,
  );

  /// Create a copy of AutoAssignmentRule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoAssignmentRuleImplCopyWith<_$AutoAssignmentRuleImpl> get copyWith =>
      __$$AutoAssignmentRuleImplCopyWithImpl<_$AutoAssignmentRuleImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoAssignmentRuleImplToJson(this);
  }
}

abstract class _AutoAssignmentRule implements AutoAssignmentRule {
  const factory _AutoAssignmentRule({
    required final int id,
    required final String name,
    required final String condition,
    required final int priority,
    required final bool isActive,
    final String? description,
    final Map<String, dynamic>? parameters,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$AutoAssignmentRuleImpl;

  factory _AutoAssignmentRule.fromJson(Map<String, dynamic> json) =
      _$AutoAssignmentRuleImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get condition;
  @override
  int get priority;
  @override
  bool get isActive;
  @override
  String? get description;
  @override
  Map<String, dynamic>? get parameters;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of AutoAssignmentRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutoAssignmentRuleImplCopyWith<_$AutoAssignmentRuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AutoAssignmentStats _$AutoAssignmentStatsFromJson(Map<String, dynamic> json) {
  return _AutoAssignmentStats.fromJson(json);
}

/// @nodoc
mixin _$AutoAssignmentStats {
  int get totalAttempts => throw _privateConstructorUsedError;
  int get successfulAssignments => throw _privateConstructorUsedError;
  int get failedAssignments => throw _privateConstructorUsedError;
  double get successRate => throw _privateConstructorUsedError;
  double get averageAssignmentTimeSeconds => throw _privateConstructorUsedError;
  int get totalOrdersProcessed => throw _privateConstructorUsedError;
  DateTime? get lastProcessedAt => throw _privateConstructorUsedError;
  DateTime? get periodStart => throw _privateConstructorUsedError;
  DateTime? get periodEnd => throw _privateConstructorUsedError;

  /// Serializes this AutoAssignmentStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AutoAssignmentStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutoAssignmentStatsCopyWith<AutoAssignmentStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoAssignmentStatsCopyWith<$Res> {
  factory $AutoAssignmentStatsCopyWith(
    AutoAssignmentStats value,
    $Res Function(AutoAssignmentStats) then,
  ) = _$AutoAssignmentStatsCopyWithImpl<$Res, AutoAssignmentStats>;
  @useResult
  $Res call({
    int totalAttempts,
    int successfulAssignments,
    int failedAssignments,
    double successRate,
    double averageAssignmentTimeSeconds,
    int totalOrdersProcessed,
    DateTime? lastProcessedAt,
    DateTime? periodStart,
    DateTime? periodEnd,
  });
}

/// @nodoc
class _$AutoAssignmentStatsCopyWithImpl<$Res, $Val extends AutoAssignmentStats>
    implements $AutoAssignmentStatsCopyWith<$Res> {
  _$AutoAssignmentStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutoAssignmentStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAttempts = null,
    Object? successfulAssignments = null,
    Object? failedAssignments = null,
    Object? successRate = null,
    Object? averageAssignmentTimeSeconds = null,
    Object? totalOrdersProcessed = null,
    Object? lastProcessedAt = freezed,
    Object? periodStart = freezed,
    Object? periodEnd = freezed,
  }) {
    return _then(
      _value.copyWith(
            totalAttempts: null == totalAttempts
                ? _value.totalAttempts
                : totalAttempts // ignore: cast_nullable_to_non_nullable
                      as int,
            successfulAssignments: null == successfulAssignments
                ? _value.successfulAssignments
                : successfulAssignments // ignore: cast_nullable_to_non_nullable
                      as int,
            failedAssignments: null == failedAssignments
                ? _value.failedAssignments
                : failedAssignments // ignore: cast_nullable_to_non_nullable
                      as int,
            successRate: null == successRate
                ? _value.successRate
                : successRate // ignore: cast_nullable_to_non_nullable
                      as double,
            averageAssignmentTimeSeconds: null == averageAssignmentTimeSeconds
                ? _value.averageAssignmentTimeSeconds
                : averageAssignmentTimeSeconds // ignore: cast_nullable_to_non_nullable
                      as double,
            totalOrdersProcessed: null == totalOrdersProcessed
                ? _value.totalOrdersProcessed
                : totalOrdersProcessed // ignore: cast_nullable_to_non_nullable
                      as int,
            lastProcessedAt: freezed == lastProcessedAt
                ? _value.lastProcessedAt
                : lastProcessedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            periodStart: freezed == periodStart
                ? _value.periodStart
                : periodStart // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            periodEnd: freezed == periodEnd
                ? _value.periodEnd
                : periodEnd // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AutoAssignmentStatsImplCopyWith<$Res>
    implements $AutoAssignmentStatsCopyWith<$Res> {
  factory _$$AutoAssignmentStatsImplCopyWith(
    _$AutoAssignmentStatsImpl value,
    $Res Function(_$AutoAssignmentStatsImpl) then,
  ) = __$$AutoAssignmentStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int totalAttempts,
    int successfulAssignments,
    int failedAssignments,
    double successRate,
    double averageAssignmentTimeSeconds,
    int totalOrdersProcessed,
    DateTime? lastProcessedAt,
    DateTime? periodStart,
    DateTime? periodEnd,
  });
}

/// @nodoc
class __$$AutoAssignmentStatsImplCopyWithImpl<$Res>
    extends _$AutoAssignmentStatsCopyWithImpl<$Res, _$AutoAssignmentStatsImpl>
    implements _$$AutoAssignmentStatsImplCopyWith<$Res> {
  __$$AutoAssignmentStatsImplCopyWithImpl(
    _$AutoAssignmentStatsImpl _value,
    $Res Function(_$AutoAssignmentStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AutoAssignmentStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAttempts = null,
    Object? successfulAssignments = null,
    Object? failedAssignments = null,
    Object? successRate = null,
    Object? averageAssignmentTimeSeconds = null,
    Object? totalOrdersProcessed = null,
    Object? lastProcessedAt = freezed,
    Object? periodStart = freezed,
    Object? periodEnd = freezed,
  }) {
    return _then(
      _$AutoAssignmentStatsImpl(
        totalAttempts: null == totalAttempts
            ? _value.totalAttempts
            : totalAttempts // ignore: cast_nullable_to_non_nullable
                  as int,
        successfulAssignments: null == successfulAssignments
            ? _value.successfulAssignments
            : successfulAssignments // ignore: cast_nullable_to_non_nullable
                  as int,
        failedAssignments: null == failedAssignments
            ? _value.failedAssignments
            : failedAssignments // ignore: cast_nullable_to_non_nullable
                  as int,
        successRate: null == successRate
            ? _value.successRate
            : successRate // ignore: cast_nullable_to_non_nullable
                  as double,
        averageAssignmentTimeSeconds: null == averageAssignmentTimeSeconds
            ? _value.averageAssignmentTimeSeconds
            : averageAssignmentTimeSeconds // ignore: cast_nullable_to_non_nullable
                  as double,
        totalOrdersProcessed: null == totalOrdersProcessed
            ? _value.totalOrdersProcessed
            : totalOrdersProcessed // ignore: cast_nullable_to_non_nullable
                  as int,
        lastProcessedAt: freezed == lastProcessedAt
            ? _value.lastProcessedAt
            : lastProcessedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        periodStart: freezed == periodStart
            ? _value.periodStart
            : periodStart // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        periodEnd: freezed == periodEnd
            ? _value.periodEnd
            : periodEnd // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AutoAssignmentStatsImpl implements _AutoAssignmentStats {
  const _$AutoAssignmentStatsImpl({
    this.totalAttempts = 0,
    this.successfulAssignments = 0,
    this.failedAssignments = 0,
    this.successRate = 0.0,
    this.averageAssignmentTimeSeconds = 0.0,
    this.totalOrdersProcessed = 0,
    this.lastProcessedAt,
    this.periodStart,
    this.periodEnd,
  });

  factory _$AutoAssignmentStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoAssignmentStatsImplFromJson(json);

  @override
  @JsonKey()
  final int totalAttempts;
  @override
  @JsonKey()
  final int successfulAssignments;
  @override
  @JsonKey()
  final int failedAssignments;
  @override
  @JsonKey()
  final double successRate;
  @override
  @JsonKey()
  final double averageAssignmentTimeSeconds;
  @override
  @JsonKey()
  final int totalOrdersProcessed;
  @override
  final DateTime? lastProcessedAt;
  @override
  final DateTime? periodStart;
  @override
  final DateTime? periodEnd;

  @override
  String toString() {
    return 'AutoAssignmentStats(totalAttempts: $totalAttempts, successfulAssignments: $successfulAssignments, failedAssignments: $failedAssignments, successRate: $successRate, averageAssignmentTimeSeconds: $averageAssignmentTimeSeconds, totalOrdersProcessed: $totalOrdersProcessed, lastProcessedAt: $lastProcessedAt, periodStart: $periodStart, periodEnd: $periodEnd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoAssignmentStatsImpl &&
            (identical(other.totalAttempts, totalAttempts) ||
                other.totalAttempts == totalAttempts) &&
            (identical(other.successfulAssignments, successfulAssignments) ||
                other.successfulAssignments == successfulAssignments) &&
            (identical(other.failedAssignments, failedAssignments) ||
                other.failedAssignments == failedAssignments) &&
            (identical(other.successRate, successRate) ||
                other.successRate == successRate) &&
            (identical(
                  other.averageAssignmentTimeSeconds,
                  averageAssignmentTimeSeconds,
                ) ||
                other.averageAssignmentTimeSeconds ==
                    averageAssignmentTimeSeconds) &&
            (identical(other.totalOrdersProcessed, totalOrdersProcessed) ||
                other.totalOrdersProcessed == totalOrdersProcessed) &&
            (identical(other.lastProcessedAt, lastProcessedAt) ||
                other.lastProcessedAt == lastProcessedAt) &&
            (identical(other.periodStart, periodStart) ||
                other.periodStart == periodStart) &&
            (identical(other.periodEnd, periodEnd) ||
                other.periodEnd == periodEnd));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalAttempts,
    successfulAssignments,
    failedAssignments,
    successRate,
    averageAssignmentTimeSeconds,
    totalOrdersProcessed,
    lastProcessedAt,
    periodStart,
    periodEnd,
  );

  /// Create a copy of AutoAssignmentStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoAssignmentStatsImplCopyWith<_$AutoAssignmentStatsImpl> get copyWith =>
      __$$AutoAssignmentStatsImplCopyWithImpl<_$AutoAssignmentStatsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoAssignmentStatsImplToJson(this);
  }
}

abstract class _AutoAssignmentStats implements AutoAssignmentStats {
  const factory _AutoAssignmentStats({
    final int totalAttempts,
    final int successfulAssignments,
    final int failedAssignments,
    final double successRate,
    final double averageAssignmentTimeSeconds,
    final int totalOrdersProcessed,
    final DateTime? lastProcessedAt,
    final DateTime? periodStart,
    final DateTime? periodEnd,
  }) = _$AutoAssignmentStatsImpl;

  factory _AutoAssignmentStats.fromJson(Map<String, dynamic> json) =
      _$AutoAssignmentStatsImpl.fromJson;

  @override
  int get totalAttempts;
  @override
  int get successfulAssignments;
  @override
  int get failedAssignments;
  @override
  double get successRate;
  @override
  double get averageAssignmentTimeSeconds;
  @override
  int get totalOrdersProcessed;
  @override
  DateTime? get lastProcessedAt;
  @override
  DateTime? get periodStart;
  @override
  DateTime? get periodEnd;

  /// Create a copy of AutoAssignmentStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutoAssignmentStatsImplCopyWith<_$AutoAssignmentStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
