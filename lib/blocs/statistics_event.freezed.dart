// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StatisticsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )
    loadStatistics,
    required TResult Function() refreshStatistics,
    required TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )
    changePeriod,
    required TResult Function(int? cityId) filterByCity,
    required TResult Function(Map<String, dynamic> statisticsData)
    statisticsUpdatedFromSignalR,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadTransporterStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadCityStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadAutoAssignmentStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderAnalytics,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult? Function()? refreshStatistics,
    TResult? Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult? Function(int? cityId)? filterByCity,
    TResult? Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult Function()? refreshStatistics,
    TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult Function(int? cityId)? filterByCity,
    TResult Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadStatisticsEvent value) loadStatistics,
    required TResult Function(RefreshStatisticsEvent value) refreshStatistics,
    required TResult Function(ChangePeriodEvent value) changePeriod,
    required TResult Function(FilterByCityEvent value) filterByCity,
    required TResult Function(StatisticsUpdatedFromSignalREvent value)
    statisticsUpdatedFromSignalR,
    required TResult Function(LoadOrderStatisticsEvent value)
    loadOrderStatistics,
    required TResult Function(LoadTransporterStatisticsEvent value)
    loadTransporterStatistics,
    required TResult Function(LoadCityStatisticsEvent value) loadCityStatistics,
    required TResult Function(LoadAutoAssignmentStatisticsEvent value)
    loadAutoAssignmentStatistics,
    required TResult Function(LoadOrderAnalyticsEvent value) loadOrderAnalytics,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadStatisticsEvent value)? loadStatistics,
    TResult? Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult? Function(ChangePeriodEvent value)? changePeriod,
    TResult? Function(FilterByCityEvent value)? filterByCity,
    TResult? Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult? Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult? Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult? Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult? Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult? Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadStatisticsEvent value)? loadStatistics,
    TResult Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult Function(ChangePeriodEvent value)? changePeriod,
    TResult Function(FilterByCityEvent value)? filterByCity,
    TResult Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsEventCopyWith<$Res> {
  factory $StatisticsEventCopyWith(
    StatisticsEvent value,
    $Res Function(StatisticsEvent) then,
  ) = _$StatisticsEventCopyWithImpl<$Res, StatisticsEvent>;
}

/// @nodoc
class _$StatisticsEventCopyWithImpl<$Res, $Val extends StatisticsEvent>
    implements $StatisticsEventCopyWith<$Res> {
  _$StatisticsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadStatisticsEventImplCopyWith<$Res> {
  factory _$$LoadStatisticsEventImplCopyWith(
    _$LoadStatisticsEventImpl value,
    $Res Function(_$LoadStatisticsEventImpl) then,
  ) = __$$LoadStatisticsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    DateTime? fromDate,
    DateTime? toDate,
    int? cityId,
    bool isRefresh,
  });
}

/// @nodoc
class __$$LoadStatisticsEventImplCopyWithImpl<$Res>
    extends _$StatisticsEventCopyWithImpl<$Res, _$LoadStatisticsEventImpl>
    implements _$$LoadStatisticsEventImplCopyWith<$Res> {
  __$$LoadStatisticsEventImplCopyWithImpl(
    _$LoadStatisticsEventImpl _value,
    $Res Function(_$LoadStatisticsEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? cityId = freezed,
    Object? isRefresh = null,
  }) {
    return _then(
      _$LoadStatisticsEventImpl(
        fromDate: freezed == fromDate
            ? _value.fromDate
            : fromDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        toDate: freezed == toDate
            ? _value.toDate
            : toDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        cityId: freezed == cityId
            ? _value.cityId
            : cityId // ignore: cast_nullable_to_non_nullable
                  as int?,
        isRefresh: null == isRefresh
            ? _value.isRefresh
            : isRefresh // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$LoadStatisticsEventImpl implements LoadStatisticsEvent {
  const _$LoadStatisticsEventImpl({
    this.fromDate,
    this.toDate,
    this.cityId,
    this.isRefresh = false,
  });

  @override
  final DateTime? fromDate;
  @override
  final DateTime? toDate;
  @override
  final int? cityId;
  @override
  @JsonKey()
  final bool isRefresh;

  @override
  String toString() {
    return 'StatisticsEvent.loadStatistics(fromDate: $fromDate, toDate: $toDate, cityId: $cityId, isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadStatisticsEventImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fromDate, toDate, cityId, isRefresh);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadStatisticsEventImplCopyWith<_$LoadStatisticsEventImpl> get copyWith =>
      __$$LoadStatisticsEventImplCopyWithImpl<_$LoadStatisticsEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )
    loadStatistics,
    required TResult Function() refreshStatistics,
    required TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )
    changePeriod,
    required TResult Function(int? cityId) filterByCity,
    required TResult Function(Map<String, dynamic> statisticsData)
    statisticsUpdatedFromSignalR,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadTransporterStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadCityStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadAutoAssignmentStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderAnalytics,
  }) {
    return loadStatistics(fromDate, toDate, cityId, isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult? Function()? refreshStatistics,
    TResult? Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult? Function(int? cityId)? filterByCity,
    TResult? Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
  }) {
    return loadStatistics?.call(fromDate, toDate, cityId, isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult Function()? refreshStatistics,
    TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult Function(int? cityId)? filterByCity,
    TResult Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
    required TResult orElse(),
  }) {
    if (loadStatistics != null) {
      return loadStatistics(fromDate, toDate, cityId, isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadStatisticsEvent value) loadStatistics,
    required TResult Function(RefreshStatisticsEvent value) refreshStatistics,
    required TResult Function(ChangePeriodEvent value) changePeriod,
    required TResult Function(FilterByCityEvent value) filterByCity,
    required TResult Function(StatisticsUpdatedFromSignalREvent value)
    statisticsUpdatedFromSignalR,
    required TResult Function(LoadOrderStatisticsEvent value)
    loadOrderStatistics,
    required TResult Function(LoadTransporterStatisticsEvent value)
    loadTransporterStatistics,
    required TResult Function(LoadCityStatisticsEvent value) loadCityStatistics,
    required TResult Function(LoadAutoAssignmentStatisticsEvent value)
    loadAutoAssignmentStatistics,
    required TResult Function(LoadOrderAnalyticsEvent value) loadOrderAnalytics,
  }) {
    return loadStatistics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadStatisticsEvent value)? loadStatistics,
    TResult? Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult? Function(ChangePeriodEvent value)? changePeriod,
    TResult? Function(FilterByCityEvent value)? filterByCity,
    TResult? Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult? Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult? Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult? Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult? Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult? Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
  }) {
    return loadStatistics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadStatisticsEvent value)? loadStatistics,
    TResult Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult Function(ChangePeriodEvent value)? changePeriod,
    TResult Function(FilterByCityEvent value)? filterByCity,
    TResult Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
    required TResult orElse(),
  }) {
    if (loadStatistics != null) {
      return loadStatistics(this);
    }
    return orElse();
  }
}

abstract class LoadStatisticsEvent implements StatisticsEvent {
  const factory LoadStatisticsEvent({
    final DateTime? fromDate,
    final DateTime? toDate,
    final int? cityId,
    final bool isRefresh,
  }) = _$LoadStatisticsEventImpl;

  DateTime? get fromDate;
  DateTime? get toDate;
  int? get cityId;
  bool get isRefresh;

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadStatisticsEventImplCopyWith<_$LoadStatisticsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshStatisticsEventImplCopyWith<$Res> {
  factory _$$RefreshStatisticsEventImplCopyWith(
    _$RefreshStatisticsEventImpl value,
    $Res Function(_$RefreshStatisticsEventImpl) then,
  ) = __$$RefreshStatisticsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshStatisticsEventImplCopyWithImpl<$Res>
    extends _$StatisticsEventCopyWithImpl<$Res, _$RefreshStatisticsEventImpl>
    implements _$$RefreshStatisticsEventImplCopyWith<$Res> {
  __$$RefreshStatisticsEventImplCopyWithImpl(
    _$RefreshStatisticsEventImpl _value,
    $Res Function(_$RefreshStatisticsEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshStatisticsEventImpl implements RefreshStatisticsEvent {
  const _$RefreshStatisticsEventImpl();

  @override
  String toString() {
    return 'StatisticsEvent.refreshStatistics()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshStatisticsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )
    loadStatistics,
    required TResult Function() refreshStatistics,
    required TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )
    changePeriod,
    required TResult Function(int? cityId) filterByCity,
    required TResult Function(Map<String, dynamic> statisticsData)
    statisticsUpdatedFromSignalR,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadTransporterStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadCityStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadAutoAssignmentStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderAnalytics,
  }) {
    return refreshStatistics();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult? Function()? refreshStatistics,
    TResult? Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult? Function(int? cityId)? filterByCity,
    TResult? Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
  }) {
    return refreshStatistics?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult Function()? refreshStatistics,
    TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult Function(int? cityId)? filterByCity,
    TResult Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
    required TResult orElse(),
  }) {
    if (refreshStatistics != null) {
      return refreshStatistics();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadStatisticsEvent value) loadStatistics,
    required TResult Function(RefreshStatisticsEvent value) refreshStatistics,
    required TResult Function(ChangePeriodEvent value) changePeriod,
    required TResult Function(FilterByCityEvent value) filterByCity,
    required TResult Function(StatisticsUpdatedFromSignalREvent value)
    statisticsUpdatedFromSignalR,
    required TResult Function(LoadOrderStatisticsEvent value)
    loadOrderStatistics,
    required TResult Function(LoadTransporterStatisticsEvent value)
    loadTransporterStatistics,
    required TResult Function(LoadCityStatisticsEvent value) loadCityStatistics,
    required TResult Function(LoadAutoAssignmentStatisticsEvent value)
    loadAutoAssignmentStatistics,
    required TResult Function(LoadOrderAnalyticsEvent value) loadOrderAnalytics,
  }) {
    return refreshStatistics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadStatisticsEvent value)? loadStatistics,
    TResult? Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult? Function(ChangePeriodEvent value)? changePeriod,
    TResult? Function(FilterByCityEvent value)? filterByCity,
    TResult? Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult? Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult? Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult? Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult? Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult? Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
  }) {
    return refreshStatistics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadStatisticsEvent value)? loadStatistics,
    TResult Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult Function(ChangePeriodEvent value)? changePeriod,
    TResult Function(FilterByCityEvent value)? filterByCity,
    TResult Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
    required TResult orElse(),
  }) {
    if (refreshStatistics != null) {
      return refreshStatistics(this);
    }
    return orElse();
  }
}

abstract class RefreshStatisticsEvent implements StatisticsEvent {
  const factory RefreshStatisticsEvent() = _$RefreshStatisticsEventImpl;
}

/// @nodoc
abstract class _$$ChangePeriodEventImplCopyWith<$Res> {
  factory _$$ChangePeriodEventImplCopyWith(
    _$ChangePeriodEventImpl value,
    $Res Function(_$ChangePeriodEventImpl) then,
  ) = __$$ChangePeriodEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    StatisticsPeriod period,
    DateTime? customFromDate,
    DateTime? customToDate,
  });
}

/// @nodoc
class __$$ChangePeriodEventImplCopyWithImpl<$Res>
    extends _$StatisticsEventCopyWithImpl<$Res, _$ChangePeriodEventImpl>
    implements _$$ChangePeriodEventImplCopyWith<$Res> {
  __$$ChangePeriodEventImplCopyWithImpl(
    _$ChangePeriodEventImpl _value,
    $Res Function(_$ChangePeriodEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? customFromDate = freezed,
    Object? customToDate = freezed,
  }) {
    return _then(
      _$ChangePeriodEventImpl(
        period: null == period
            ? _value.period
            : period // ignore: cast_nullable_to_non_nullable
                  as StatisticsPeriod,
        customFromDate: freezed == customFromDate
            ? _value.customFromDate
            : customFromDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        customToDate: freezed == customToDate
            ? _value.customToDate
            : customToDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$ChangePeriodEventImpl implements ChangePeriodEvent {
  const _$ChangePeriodEventImpl({
    required this.period,
    this.customFromDate,
    this.customToDate,
  });

  @override
  final StatisticsPeriod period;
  @override
  final DateTime? customFromDate;
  @override
  final DateTime? customToDate;

  @override
  String toString() {
    return 'StatisticsEvent.changePeriod(period: $period, customFromDate: $customFromDate, customToDate: $customToDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePeriodEventImpl &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.customFromDate, customFromDate) ||
                other.customFromDate == customFromDate) &&
            (identical(other.customToDate, customToDate) ||
                other.customToDate == customToDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, period, customFromDate, customToDate);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePeriodEventImplCopyWith<_$ChangePeriodEventImpl> get copyWith =>
      __$$ChangePeriodEventImplCopyWithImpl<_$ChangePeriodEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )
    loadStatistics,
    required TResult Function() refreshStatistics,
    required TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )
    changePeriod,
    required TResult Function(int? cityId) filterByCity,
    required TResult Function(Map<String, dynamic> statisticsData)
    statisticsUpdatedFromSignalR,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadTransporterStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadCityStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadAutoAssignmentStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderAnalytics,
  }) {
    return changePeriod(period, customFromDate, customToDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult? Function()? refreshStatistics,
    TResult? Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult? Function(int? cityId)? filterByCity,
    TResult? Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
  }) {
    return changePeriod?.call(period, customFromDate, customToDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult Function()? refreshStatistics,
    TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult Function(int? cityId)? filterByCity,
    TResult Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
    required TResult orElse(),
  }) {
    if (changePeriod != null) {
      return changePeriod(period, customFromDate, customToDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadStatisticsEvent value) loadStatistics,
    required TResult Function(RefreshStatisticsEvent value) refreshStatistics,
    required TResult Function(ChangePeriodEvent value) changePeriod,
    required TResult Function(FilterByCityEvent value) filterByCity,
    required TResult Function(StatisticsUpdatedFromSignalREvent value)
    statisticsUpdatedFromSignalR,
    required TResult Function(LoadOrderStatisticsEvent value)
    loadOrderStatistics,
    required TResult Function(LoadTransporterStatisticsEvent value)
    loadTransporterStatistics,
    required TResult Function(LoadCityStatisticsEvent value) loadCityStatistics,
    required TResult Function(LoadAutoAssignmentStatisticsEvent value)
    loadAutoAssignmentStatistics,
    required TResult Function(LoadOrderAnalyticsEvent value) loadOrderAnalytics,
  }) {
    return changePeriod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadStatisticsEvent value)? loadStatistics,
    TResult? Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult? Function(ChangePeriodEvent value)? changePeriod,
    TResult? Function(FilterByCityEvent value)? filterByCity,
    TResult? Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult? Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult? Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult? Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult? Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult? Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
  }) {
    return changePeriod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadStatisticsEvent value)? loadStatistics,
    TResult Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult Function(ChangePeriodEvent value)? changePeriod,
    TResult Function(FilterByCityEvent value)? filterByCity,
    TResult Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
    required TResult orElse(),
  }) {
    if (changePeriod != null) {
      return changePeriod(this);
    }
    return orElse();
  }
}

abstract class ChangePeriodEvent implements StatisticsEvent {
  const factory ChangePeriodEvent({
    required final StatisticsPeriod period,
    final DateTime? customFromDate,
    final DateTime? customToDate,
  }) = _$ChangePeriodEventImpl;

  StatisticsPeriod get period;
  DateTime? get customFromDate;
  DateTime? get customToDate;

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePeriodEventImplCopyWith<_$ChangePeriodEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterByCityEventImplCopyWith<$Res> {
  factory _$$FilterByCityEventImplCopyWith(
    _$FilterByCityEventImpl value,
    $Res Function(_$FilterByCityEventImpl) then,
  ) = __$$FilterByCityEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? cityId});
}

/// @nodoc
class __$$FilterByCityEventImplCopyWithImpl<$Res>
    extends _$StatisticsEventCopyWithImpl<$Res, _$FilterByCityEventImpl>
    implements _$$FilterByCityEventImplCopyWith<$Res> {
  __$$FilterByCityEventImplCopyWithImpl(
    _$FilterByCityEventImpl _value,
    $Res Function(_$FilterByCityEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cityId = freezed}) {
    return _then(
      _$FilterByCityEventImpl(
        cityId: freezed == cityId
            ? _value.cityId
            : cityId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$FilterByCityEventImpl implements FilterByCityEvent {
  const _$FilterByCityEventImpl({this.cityId});

  @override
  final int? cityId;

  @override
  String toString() {
    return 'StatisticsEvent.filterByCity(cityId: $cityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByCityEventImpl &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityId);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByCityEventImplCopyWith<_$FilterByCityEventImpl> get copyWith =>
      __$$FilterByCityEventImplCopyWithImpl<_$FilterByCityEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )
    loadStatistics,
    required TResult Function() refreshStatistics,
    required TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )
    changePeriod,
    required TResult Function(int? cityId) filterByCity,
    required TResult Function(Map<String, dynamic> statisticsData)
    statisticsUpdatedFromSignalR,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadTransporterStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadCityStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadAutoAssignmentStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderAnalytics,
  }) {
    return filterByCity(cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult? Function()? refreshStatistics,
    TResult? Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult? Function(int? cityId)? filterByCity,
    TResult? Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
  }) {
    return filterByCity?.call(cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult Function()? refreshStatistics,
    TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult Function(int? cityId)? filterByCity,
    TResult Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
    required TResult orElse(),
  }) {
    if (filterByCity != null) {
      return filterByCity(cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadStatisticsEvent value) loadStatistics,
    required TResult Function(RefreshStatisticsEvent value) refreshStatistics,
    required TResult Function(ChangePeriodEvent value) changePeriod,
    required TResult Function(FilterByCityEvent value) filterByCity,
    required TResult Function(StatisticsUpdatedFromSignalREvent value)
    statisticsUpdatedFromSignalR,
    required TResult Function(LoadOrderStatisticsEvent value)
    loadOrderStatistics,
    required TResult Function(LoadTransporterStatisticsEvent value)
    loadTransporterStatistics,
    required TResult Function(LoadCityStatisticsEvent value) loadCityStatistics,
    required TResult Function(LoadAutoAssignmentStatisticsEvent value)
    loadAutoAssignmentStatistics,
    required TResult Function(LoadOrderAnalyticsEvent value) loadOrderAnalytics,
  }) {
    return filterByCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadStatisticsEvent value)? loadStatistics,
    TResult? Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult? Function(ChangePeriodEvent value)? changePeriod,
    TResult? Function(FilterByCityEvent value)? filterByCity,
    TResult? Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult? Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult? Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult? Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult? Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult? Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
  }) {
    return filterByCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadStatisticsEvent value)? loadStatistics,
    TResult Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult Function(ChangePeriodEvent value)? changePeriod,
    TResult Function(FilterByCityEvent value)? filterByCity,
    TResult Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
    required TResult orElse(),
  }) {
    if (filterByCity != null) {
      return filterByCity(this);
    }
    return orElse();
  }
}

abstract class FilterByCityEvent implements StatisticsEvent {
  const factory FilterByCityEvent({final int? cityId}) =
      _$FilterByCityEventImpl;

  int? get cityId;

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterByCityEventImplCopyWith<_$FilterByCityEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatisticsUpdatedFromSignalREventImplCopyWith<$Res> {
  factory _$$StatisticsUpdatedFromSignalREventImplCopyWith(
    _$StatisticsUpdatedFromSignalREventImpl value,
    $Res Function(_$StatisticsUpdatedFromSignalREventImpl) then,
  ) = __$$StatisticsUpdatedFromSignalREventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> statisticsData});
}

/// @nodoc
class __$$StatisticsUpdatedFromSignalREventImplCopyWithImpl<$Res>
    extends
        _$StatisticsEventCopyWithImpl<
          $Res,
          _$StatisticsUpdatedFromSignalREventImpl
        >
    implements _$$StatisticsUpdatedFromSignalREventImplCopyWith<$Res> {
  __$$StatisticsUpdatedFromSignalREventImplCopyWithImpl(
    _$StatisticsUpdatedFromSignalREventImpl _value,
    $Res Function(_$StatisticsUpdatedFromSignalREventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? statisticsData = null}) {
    return _then(
      _$StatisticsUpdatedFromSignalREventImpl(
        statisticsData: null == statisticsData
            ? _value._statisticsData
            : statisticsData // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$StatisticsUpdatedFromSignalREventImpl
    implements StatisticsUpdatedFromSignalREvent {
  const _$StatisticsUpdatedFromSignalREventImpl({
    required final Map<String, dynamic> statisticsData,
  }) : _statisticsData = statisticsData;

  final Map<String, dynamic> _statisticsData;
  @override
  Map<String, dynamic> get statisticsData {
    if (_statisticsData is EqualUnmodifiableMapView) return _statisticsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_statisticsData);
  }

  @override
  String toString() {
    return 'StatisticsEvent.statisticsUpdatedFromSignalR(statisticsData: $statisticsData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsUpdatedFromSignalREventImpl &&
            const DeepCollectionEquality().equals(
              other._statisticsData,
              _statisticsData,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_statisticsData),
  );

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsUpdatedFromSignalREventImplCopyWith<
    _$StatisticsUpdatedFromSignalREventImpl
  >
  get copyWith =>
      __$$StatisticsUpdatedFromSignalREventImplCopyWithImpl<
        _$StatisticsUpdatedFromSignalREventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )
    loadStatistics,
    required TResult Function() refreshStatistics,
    required TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )
    changePeriod,
    required TResult Function(int? cityId) filterByCity,
    required TResult Function(Map<String, dynamic> statisticsData)
    statisticsUpdatedFromSignalR,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadTransporterStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadCityStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadAutoAssignmentStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderAnalytics,
  }) {
    return statisticsUpdatedFromSignalR(statisticsData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult? Function()? refreshStatistics,
    TResult? Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult? Function(int? cityId)? filterByCity,
    TResult? Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
  }) {
    return statisticsUpdatedFromSignalR?.call(statisticsData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult Function()? refreshStatistics,
    TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult Function(int? cityId)? filterByCity,
    TResult Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
    required TResult orElse(),
  }) {
    if (statisticsUpdatedFromSignalR != null) {
      return statisticsUpdatedFromSignalR(statisticsData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadStatisticsEvent value) loadStatistics,
    required TResult Function(RefreshStatisticsEvent value) refreshStatistics,
    required TResult Function(ChangePeriodEvent value) changePeriod,
    required TResult Function(FilterByCityEvent value) filterByCity,
    required TResult Function(StatisticsUpdatedFromSignalREvent value)
    statisticsUpdatedFromSignalR,
    required TResult Function(LoadOrderStatisticsEvent value)
    loadOrderStatistics,
    required TResult Function(LoadTransporterStatisticsEvent value)
    loadTransporterStatistics,
    required TResult Function(LoadCityStatisticsEvent value) loadCityStatistics,
    required TResult Function(LoadAutoAssignmentStatisticsEvent value)
    loadAutoAssignmentStatistics,
    required TResult Function(LoadOrderAnalyticsEvent value) loadOrderAnalytics,
  }) {
    return statisticsUpdatedFromSignalR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadStatisticsEvent value)? loadStatistics,
    TResult? Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult? Function(ChangePeriodEvent value)? changePeriod,
    TResult? Function(FilterByCityEvent value)? filterByCity,
    TResult? Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult? Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult? Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult? Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult? Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult? Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
  }) {
    return statisticsUpdatedFromSignalR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadStatisticsEvent value)? loadStatistics,
    TResult Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult Function(ChangePeriodEvent value)? changePeriod,
    TResult Function(FilterByCityEvent value)? filterByCity,
    TResult Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
    required TResult orElse(),
  }) {
    if (statisticsUpdatedFromSignalR != null) {
      return statisticsUpdatedFromSignalR(this);
    }
    return orElse();
  }
}

abstract class StatisticsUpdatedFromSignalREvent implements StatisticsEvent {
  const factory StatisticsUpdatedFromSignalREvent({
    required final Map<String, dynamic> statisticsData,
  }) = _$StatisticsUpdatedFromSignalREventImpl;

  Map<String, dynamic> get statisticsData;

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticsUpdatedFromSignalREventImplCopyWith<
    _$StatisticsUpdatedFromSignalREventImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadOrderStatisticsEventImplCopyWith<$Res> {
  factory _$$LoadOrderStatisticsEventImplCopyWith(
    _$LoadOrderStatisticsEventImpl value,
    $Res Function(_$LoadOrderStatisticsEventImpl) then,
  ) = __$$LoadOrderStatisticsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? fromDate, DateTime? toDate, int? cityId});
}

/// @nodoc
class __$$LoadOrderStatisticsEventImplCopyWithImpl<$Res>
    extends _$StatisticsEventCopyWithImpl<$Res, _$LoadOrderStatisticsEventImpl>
    implements _$$LoadOrderStatisticsEventImplCopyWith<$Res> {
  __$$LoadOrderStatisticsEventImplCopyWithImpl(
    _$LoadOrderStatisticsEventImpl _value,
    $Res Function(_$LoadOrderStatisticsEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? cityId = freezed,
  }) {
    return _then(
      _$LoadOrderStatisticsEventImpl(
        fromDate: freezed == fromDate
            ? _value.fromDate
            : fromDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        toDate: freezed == toDate
            ? _value.toDate
            : toDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        cityId: freezed == cityId
            ? _value.cityId
            : cityId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$LoadOrderStatisticsEventImpl implements LoadOrderStatisticsEvent {
  const _$LoadOrderStatisticsEventImpl({
    this.fromDate,
    this.toDate,
    this.cityId,
  });

  @override
  final DateTime? fromDate;
  @override
  final DateTime? toDate;
  @override
  final int? cityId;

  @override
  String toString() {
    return 'StatisticsEvent.loadOrderStatistics(fromDate: $fromDate, toDate: $toDate, cityId: $cityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadOrderStatisticsEventImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromDate, toDate, cityId);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadOrderStatisticsEventImplCopyWith<_$LoadOrderStatisticsEventImpl>
  get copyWith =>
      __$$LoadOrderStatisticsEventImplCopyWithImpl<
        _$LoadOrderStatisticsEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )
    loadStatistics,
    required TResult Function() refreshStatistics,
    required TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )
    changePeriod,
    required TResult Function(int? cityId) filterByCity,
    required TResult Function(Map<String, dynamic> statisticsData)
    statisticsUpdatedFromSignalR,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadTransporterStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadCityStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadAutoAssignmentStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderAnalytics,
  }) {
    return loadOrderStatistics(fromDate, toDate, cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult? Function()? refreshStatistics,
    TResult? Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult? Function(int? cityId)? filterByCity,
    TResult? Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
  }) {
    return loadOrderStatistics?.call(fromDate, toDate, cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult Function()? refreshStatistics,
    TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult Function(int? cityId)? filterByCity,
    TResult Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
    required TResult orElse(),
  }) {
    if (loadOrderStatistics != null) {
      return loadOrderStatistics(fromDate, toDate, cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadStatisticsEvent value) loadStatistics,
    required TResult Function(RefreshStatisticsEvent value) refreshStatistics,
    required TResult Function(ChangePeriodEvent value) changePeriod,
    required TResult Function(FilterByCityEvent value) filterByCity,
    required TResult Function(StatisticsUpdatedFromSignalREvent value)
    statisticsUpdatedFromSignalR,
    required TResult Function(LoadOrderStatisticsEvent value)
    loadOrderStatistics,
    required TResult Function(LoadTransporterStatisticsEvent value)
    loadTransporterStatistics,
    required TResult Function(LoadCityStatisticsEvent value) loadCityStatistics,
    required TResult Function(LoadAutoAssignmentStatisticsEvent value)
    loadAutoAssignmentStatistics,
    required TResult Function(LoadOrderAnalyticsEvent value) loadOrderAnalytics,
  }) {
    return loadOrderStatistics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadStatisticsEvent value)? loadStatistics,
    TResult? Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult? Function(ChangePeriodEvent value)? changePeriod,
    TResult? Function(FilterByCityEvent value)? filterByCity,
    TResult? Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult? Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult? Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult? Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult? Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult? Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
  }) {
    return loadOrderStatistics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadStatisticsEvent value)? loadStatistics,
    TResult Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult Function(ChangePeriodEvent value)? changePeriod,
    TResult Function(FilterByCityEvent value)? filterByCity,
    TResult Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
    required TResult orElse(),
  }) {
    if (loadOrderStatistics != null) {
      return loadOrderStatistics(this);
    }
    return orElse();
  }
}

abstract class LoadOrderStatisticsEvent implements StatisticsEvent {
  const factory LoadOrderStatisticsEvent({
    final DateTime? fromDate,
    final DateTime? toDate,
    final int? cityId,
  }) = _$LoadOrderStatisticsEventImpl;

  DateTime? get fromDate;
  DateTime? get toDate;
  int? get cityId;

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadOrderStatisticsEventImplCopyWith<_$LoadOrderStatisticsEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadTransporterStatisticsEventImplCopyWith<$Res> {
  factory _$$LoadTransporterStatisticsEventImplCopyWith(
    _$LoadTransporterStatisticsEventImpl value,
    $Res Function(_$LoadTransporterStatisticsEventImpl) then,
  ) = __$$LoadTransporterStatisticsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? fromDate, DateTime? toDate, int? cityId});
}

/// @nodoc
class __$$LoadTransporterStatisticsEventImplCopyWithImpl<$Res>
    extends
        _$StatisticsEventCopyWithImpl<
          $Res,
          _$LoadTransporterStatisticsEventImpl
        >
    implements _$$LoadTransporterStatisticsEventImplCopyWith<$Res> {
  __$$LoadTransporterStatisticsEventImplCopyWithImpl(
    _$LoadTransporterStatisticsEventImpl _value,
    $Res Function(_$LoadTransporterStatisticsEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? cityId = freezed,
  }) {
    return _then(
      _$LoadTransporterStatisticsEventImpl(
        fromDate: freezed == fromDate
            ? _value.fromDate
            : fromDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        toDate: freezed == toDate
            ? _value.toDate
            : toDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        cityId: freezed == cityId
            ? _value.cityId
            : cityId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$LoadTransporterStatisticsEventImpl
    implements LoadTransporterStatisticsEvent {
  const _$LoadTransporterStatisticsEventImpl({
    this.fromDate,
    this.toDate,
    this.cityId,
  });

  @override
  final DateTime? fromDate;
  @override
  final DateTime? toDate;
  @override
  final int? cityId;

  @override
  String toString() {
    return 'StatisticsEvent.loadTransporterStatistics(fromDate: $fromDate, toDate: $toDate, cityId: $cityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTransporterStatisticsEventImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromDate, toDate, cityId);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTransporterStatisticsEventImplCopyWith<
    _$LoadTransporterStatisticsEventImpl
  >
  get copyWith =>
      __$$LoadTransporterStatisticsEventImplCopyWithImpl<
        _$LoadTransporterStatisticsEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )
    loadStatistics,
    required TResult Function() refreshStatistics,
    required TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )
    changePeriod,
    required TResult Function(int? cityId) filterByCity,
    required TResult Function(Map<String, dynamic> statisticsData)
    statisticsUpdatedFromSignalR,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadTransporterStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadCityStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadAutoAssignmentStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderAnalytics,
  }) {
    return loadTransporterStatistics(fromDate, toDate, cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult? Function()? refreshStatistics,
    TResult? Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult? Function(int? cityId)? filterByCity,
    TResult? Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
  }) {
    return loadTransporterStatistics?.call(fromDate, toDate, cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult Function()? refreshStatistics,
    TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult Function(int? cityId)? filterByCity,
    TResult Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
    required TResult orElse(),
  }) {
    if (loadTransporterStatistics != null) {
      return loadTransporterStatistics(fromDate, toDate, cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadStatisticsEvent value) loadStatistics,
    required TResult Function(RefreshStatisticsEvent value) refreshStatistics,
    required TResult Function(ChangePeriodEvent value) changePeriod,
    required TResult Function(FilterByCityEvent value) filterByCity,
    required TResult Function(StatisticsUpdatedFromSignalREvent value)
    statisticsUpdatedFromSignalR,
    required TResult Function(LoadOrderStatisticsEvent value)
    loadOrderStatistics,
    required TResult Function(LoadTransporterStatisticsEvent value)
    loadTransporterStatistics,
    required TResult Function(LoadCityStatisticsEvent value) loadCityStatistics,
    required TResult Function(LoadAutoAssignmentStatisticsEvent value)
    loadAutoAssignmentStatistics,
    required TResult Function(LoadOrderAnalyticsEvent value) loadOrderAnalytics,
  }) {
    return loadTransporterStatistics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadStatisticsEvent value)? loadStatistics,
    TResult? Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult? Function(ChangePeriodEvent value)? changePeriod,
    TResult? Function(FilterByCityEvent value)? filterByCity,
    TResult? Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult? Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult? Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult? Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult? Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult? Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
  }) {
    return loadTransporterStatistics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadStatisticsEvent value)? loadStatistics,
    TResult Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult Function(ChangePeriodEvent value)? changePeriod,
    TResult Function(FilterByCityEvent value)? filterByCity,
    TResult Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
    required TResult orElse(),
  }) {
    if (loadTransporterStatistics != null) {
      return loadTransporterStatistics(this);
    }
    return orElse();
  }
}

abstract class LoadTransporterStatisticsEvent implements StatisticsEvent {
  const factory LoadTransporterStatisticsEvent({
    final DateTime? fromDate,
    final DateTime? toDate,
    final int? cityId,
  }) = _$LoadTransporterStatisticsEventImpl;

  DateTime? get fromDate;
  DateTime? get toDate;
  int? get cityId;

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadTransporterStatisticsEventImplCopyWith<
    _$LoadTransporterStatisticsEventImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadCityStatisticsEventImplCopyWith<$Res> {
  factory _$$LoadCityStatisticsEventImplCopyWith(
    _$LoadCityStatisticsEventImpl value,
    $Res Function(_$LoadCityStatisticsEventImpl) then,
  ) = __$$LoadCityStatisticsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? fromDate, DateTime? toDate});
}

/// @nodoc
class __$$LoadCityStatisticsEventImplCopyWithImpl<$Res>
    extends _$StatisticsEventCopyWithImpl<$Res, _$LoadCityStatisticsEventImpl>
    implements _$$LoadCityStatisticsEventImplCopyWith<$Res> {
  __$$LoadCityStatisticsEventImplCopyWithImpl(
    _$LoadCityStatisticsEventImpl _value,
    $Res Function(_$LoadCityStatisticsEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fromDate = freezed, Object? toDate = freezed}) {
    return _then(
      _$LoadCityStatisticsEventImpl(
        fromDate: freezed == fromDate
            ? _value.fromDate
            : fromDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        toDate: freezed == toDate
            ? _value.toDate
            : toDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$LoadCityStatisticsEventImpl implements LoadCityStatisticsEvent {
  const _$LoadCityStatisticsEventImpl({this.fromDate, this.toDate});

  @override
  final DateTime? fromDate;
  @override
  final DateTime? toDate;

  @override
  String toString() {
    return 'StatisticsEvent.loadCityStatistics(fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCityStatisticsEventImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromDate, toDate);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCityStatisticsEventImplCopyWith<_$LoadCityStatisticsEventImpl>
  get copyWith =>
      __$$LoadCityStatisticsEventImplCopyWithImpl<
        _$LoadCityStatisticsEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )
    loadStatistics,
    required TResult Function() refreshStatistics,
    required TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )
    changePeriod,
    required TResult Function(int? cityId) filterByCity,
    required TResult Function(Map<String, dynamic> statisticsData)
    statisticsUpdatedFromSignalR,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadTransporterStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadCityStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadAutoAssignmentStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderAnalytics,
  }) {
    return loadCityStatistics(fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult? Function()? refreshStatistics,
    TResult? Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult? Function(int? cityId)? filterByCity,
    TResult? Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
  }) {
    return loadCityStatistics?.call(fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult Function()? refreshStatistics,
    TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult Function(int? cityId)? filterByCity,
    TResult Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
    required TResult orElse(),
  }) {
    if (loadCityStatistics != null) {
      return loadCityStatistics(fromDate, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadStatisticsEvent value) loadStatistics,
    required TResult Function(RefreshStatisticsEvent value) refreshStatistics,
    required TResult Function(ChangePeriodEvent value) changePeriod,
    required TResult Function(FilterByCityEvent value) filterByCity,
    required TResult Function(StatisticsUpdatedFromSignalREvent value)
    statisticsUpdatedFromSignalR,
    required TResult Function(LoadOrderStatisticsEvent value)
    loadOrderStatistics,
    required TResult Function(LoadTransporterStatisticsEvent value)
    loadTransporterStatistics,
    required TResult Function(LoadCityStatisticsEvent value) loadCityStatistics,
    required TResult Function(LoadAutoAssignmentStatisticsEvent value)
    loadAutoAssignmentStatistics,
    required TResult Function(LoadOrderAnalyticsEvent value) loadOrderAnalytics,
  }) {
    return loadCityStatistics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadStatisticsEvent value)? loadStatistics,
    TResult? Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult? Function(ChangePeriodEvent value)? changePeriod,
    TResult? Function(FilterByCityEvent value)? filterByCity,
    TResult? Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult? Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult? Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult? Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult? Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult? Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
  }) {
    return loadCityStatistics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadStatisticsEvent value)? loadStatistics,
    TResult Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult Function(ChangePeriodEvent value)? changePeriod,
    TResult Function(FilterByCityEvent value)? filterByCity,
    TResult Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
    required TResult orElse(),
  }) {
    if (loadCityStatistics != null) {
      return loadCityStatistics(this);
    }
    return orElse();
  }
}

abstract class LoadCityStatisticsEvent implements StatisticsEvent {
  const factory LoadCityStatisticsEvent({
    final DateTime? fromDate,
    final DateTime? toDate,
  }) = _$LoadCityStatisticsEventImpl;

  DateTime? get fromDate;
  DateTime? get toDate;

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadCityStatisticsEventImplCopyWith<_$LoadCityStatisticsEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAutoAssignmentStatisticsEventImplCopyWith<$Res> {
  factory _$$LoadAutoAssignmentStatisticsEventImplCopyWith(
    _$LoadAutoAssignmentStatisticsEventImpl value,
    $Res Function(_$LoadAutoAssignmentStatisticsEventImpl) then,
  ) = __$$LoadAutoAssignmentStatisticsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? fromDate, DateTime? toDate});
}

/// @nodoc
class __$$LoadAutoAssignmentStatisticsEventImplCopyWithImpl<$Res>
    extends
        _$StatisticsEventCopyWithImpl<
          $Res,
          _$LoadAutoAssignmentStatisticsEventImpl
        >
    implements _$$LoadAutoAssignmentStatisticsEventImplCopyWith<$Res> {
  __$$LoadAutoAssignmentStatisticsEventImplCopyWithImpl(
    _$LoadAutoAssignmentStatisticsEventImpl _value,
    $Res Function(_$LoadAutoAssignmentStatisticsEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fromDate = freezed, Object? toDate = freezed}) {
    return _then(
      _$LoadAutoAssignmentStatisticsEventImpl(
        fromDate: freezed == fromDate
            ? _value.fromDate
            : fromDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        toDate: freezed == toDate
            ? _value.toDate
            : toDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$LoadAutoAssignmentStatisticsEventImpl
    implements LoadAutoAssignmentStatisticsEvent {
  const _$LoadAutoAssignmentStatisticsEventImpl({this.fromDate, this.toDate});

  @override
  final DateTime? fromDate;
  @override
  final DateTime? toDate;

  @override
  String toString() {
    return 'StatisticsEvent.loadAutoAssignmentStatistics(fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAutoAssignmentStatisticsEventImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromDate, toDate);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAutoAssignmentStatisticsEventImplCopyWith<
    _$LoadAutoAssignmentStatisticsEventImpl
  >
  get copyWith =>
      __$$LoadAutoAssignmentStatisticsEventImplCopyWithImpl<
        _$LoadAutoAssignmentStatisticsEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )
    loadStatistics,
    required TResult Function() refreshStatistics,
    required TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )
    changePeriod,
    required TResult Function(int? cityId) filterByCity,
    required TResult Function(Map<String, dynamic> statisticsData)
    statisticsUpdatedFromSignalR,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadTransporterStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadCityStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadAutoAssignmentStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderAnalytics,
  }) {
    return loadAutoAssignmentStatistics(fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult? Function()? refreshStatistics,
    TResult? Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult? Function(int? cityId)? filterByCity,
    TResult? Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
  }) {
    return loadAutoAssignmentStatistics?.call(fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult Function()? refreshStatistics,
    TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult Function(int? cityId)? filterByCity,
    TResult Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
    required TResult orElse(),
  }) {
    if (loadAutoAssignmentStatistics != null) {
      return loadAutoAssignmentStatistics(fromDate, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadStatisticsEvent value) loadStatistics,
    required TResult Function(RefreshStatisticsEvent value) refreshStatistics,
    required TResult Function(ChangePeriodEvent value) changePeriod,
    required TResult Function(FilterByCityEvent value) filterByCity,
    required TResult Function(StatisticsUpdatedFromSignalREvent value)
    statisticsUpdatedFromSignalR,
    required TResult Function(LoadOrderStatisticsEvent value)
    loadOrderStatistics,
    required TResult Function(LoadTransporterStatisticsEvent value)
    loadTransporterStatistics,
    required TResult Function(LoadCityStatisticsEvent value) loadCityStatistics,
    required TResult Function(LoadAutoAssignmentStatisticsEvent value)
    loadAutoAssignmentStatistics,
    required TResult Function(LoadOrderAnalyticsEvent value) loadOrderAnalytics,
  }) {
    return loadAutoAssignmentStatistics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadStatisticsEvent value)? loadStatistics,
    TResult? Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult? Function(ChangePeriodEvent value)? changePeriod,
    TResult? Function(FilterByCityEvent value)? filterByCity,
    TResult? Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult? Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult? Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult? Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult? Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult? Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
  }) {
    return loadAutoAssignmentStatistics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadStatisticsEvent value)? loadStatistics,
    TResult Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult Function(ChangePeriodEvent value)? changePeriod,
    TResult Function(FilterByCityEvent value)? filterByCity,
    TResult Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
    required TResult orElse(),
  }) {
    if (loadAutoAssignmentStatistics != null) {
      return loadAutoAssignmentStatistics(this);
    }
    return orElse();
  }
}

abstract class LoadAutoAssignmentStatisticsEvent implements StatisticsEvent {
  const factory LoadAutoAssignmentStatisticsEvent({
    final DateTime? fromDate,
    final DateTime? toDate,
  }) = _$LoadAutoAssignmentStatisticsEventImpl;

  DateTime? get fromDate;
  DateTime? get toDate;

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadAutoAssignmentStatisticsEventImplCopyWith<
    _$LoadAutoAssignmentStatisticsEventImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadOrderAnalyticsEventImplCopyWith<$Res> {
  factory _$$LoadOrderAnalyticsEventImplCopyWith(
    _$LoadOrderAnalyticsEventImpl value,
    $Res Function(_$LoadOrderAnalyticsEventImpl) then,
  ) = __$$LoadOrderAnalyticsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? fromDate, DateTime? toDate, int? cityId});
}

/// @nodoc
class __$$LoadOrderAnalyticsEventImplCopyWithImpl<$Res>
    extends _$StatisticsEventCopyWithImpl<$Res, _$LoadOrderAnalyticsEventImpl>
    implements _$$LoadOrderAnalyticsEventImplCopyWith<$Res> {
  __$$LoadOrderAnalyticsEventImplCopyWithImpl(
    _$LoadOrderAnalyticsEventImpl _value,
    $Res Function(_$LoadOrderAnalyticsEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? cityId = freezed,
  }) {
    return _then(
      _$LoadOrderAnalyticsEventImpl(
        fromDate: freezed == fromDate
            ? _value.fromDate
            : fromDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        toDate: freezed == toDate
            ? _value.toDate
            : toDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        cityId: freezed == cityId
            ? _value.cityId
            : cityId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$LoadOrderAnalyticsEventImpl implements LoadOrderAnalyticsEvent {
  const _$LoadOrderAnalyticsEventImpl({
    this.fromDate,
    this.toDate,
    this.cityId,
  });

  @override
  final DateTime? fromDate;
  @override
  final DateTime? toDate;
  @override
  final int? cityId;

  @override
  String toString() {
    return 'StatisticsEvent.loadOrderAnalytics(fromDate: $fromDate, toDate: $toDate, cityId: $cityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadOrderAnalyticsEventImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromDate, toDate, cityId);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadOrderAnalyticsEventImplCopyWith<_$LoadOrderAnalyticsEventImpl>
  get copyWith =>
      __$$LoadOrderAnalyticsEventImplCopyWithImpl<
        _$LoadOrderAnalyticsEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )
    loadStatistics,
    required TResult Function() refreshStatistics,
    required TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )
    changePeriod,
    required TResult Function(int? cityId) filterByCity,
    required TResult Function(Map<String, dynamic> statisticsData)
    statisticsUpdatedFromSignalR,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadTransporterStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadCityStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate)
    loadAutoAssignmentStatistics,
    required TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)
    loadOrderAnalytics,
  }) {
    return loadOrderAnalytics(fromDate, toDate, cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult? Function()? refreshStatistics,
    TResult? Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult? Function(int? cityId)? filterByCity,
    TResult? Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult? Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
  }) {
    return loadOrderAnalytics?.call(fromDate, toDate, cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      DateTime? fromDate,
      DateTime? toDate,
      int? cityId,
      bool isRefresh,
    )?
    loadStatistics,
    TResult Function()? refreshStatistics,
    TResult Function(
      StatisticsPeriod period,
      DateTime? customFromDate,
      DateTime? customToDate,
    )?
    changePeriod,
    TResult Function(int? cityId)? filterByCity,
    TResult Function(Map<String, dynamic> statisticsData)?
    statisticsUpdatedFromSignalR,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadTransporterStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)? loadCityStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate)?
    loadAutoAssignmentStatistics,
    TResult Function(DateTime? fromDate, DateTime? toDate, int? cityId)?
    loadOrderAnalytics,
    required TResult orElse(),
  }) {
    if (loadOrderAnalytics != null) {
      return loadOrderAnalytics(fromDate, toDate, cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadStatisticsEvent value) loadStatistics,
    required TResult Function(RefreshStatisticsEvent value) refreshStatistics,
    required TResult Function(ChangePeriodEvent value) changePeriod,
    required TResult Function(FilterByCityEvent value) filterByCity,
    required TResult Function(StatisticsUpdatedFromSignalREvent value)
    statisticsUpdatedFromSignalR,
    required TResult Function(LoadOrderStatisticsEvent value)
    loadOrderStatistics,
    required TResult Function(LoadTransporterStatisticsEvent value)
    loadTransporterStatistics,
    required TResult Function(LoadCityStatisticsEvent value) loadCityStatistics,
    required TResult Function(LoadAutoAssignmentStatisticsEvent value)
    loadAutoAssignmentStatistics,
    required TResult Function(LoadOrderAnalyticsEvent value) loadOrderAnalytics,
  }) {
    return loadOrderAnalytics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadStatisticsEvent value)? loadStatistics,
    TResult? Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult? Function(ChangePeriodEvent value)? changePeriod,
    TResult? Function(FilterByCityEvent value)? filterByCity,
    TResult? Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult? Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult? Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult? Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult? Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult? Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
  }) {
    return loadOrderAnalytics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadStatisticsEvent value)? loadStatistics,
    TResult Function(RefreshStatisticsEvent value)? refreshStatistics,
    TResult Function(ChangePeriodEvent value)? changePeriod,
    TResult Function(FilterByCityEvent value)? filterByCity,
    TResult Function(StatisticsUpdatedFromSignalREvent value)?
    statisticsUpdatedFromSignalR,
    TResult Function(LoadOrderStatisticsEvent value)? loadOrderStatistics,
    TResult Function(LoadTransporterStatisticsEvent value)?
    loadTransporterStatistics,
    TResult Function(LoadCityStatisticsEvent value)? loadCityStatistics,
    TResult Function(LoadAutoAssignmentStatisticsEvent value)?
    loadAutoAssignmentStatistics,
    TResult Function(LoadOrderAnalyticsEvent value)? loadOrderAnalytics,
    required TResult orElse(),
  }) {
    if (loadOrderAnalytics != null) {
      return loadOrderAnalytics(this);
    }
    return orElse();
  }
}

abstract class LoadOrderAnalyticsEvent implements StatisticsEvent {
  const factory LoadOrderAnalyticsEvent({
    final DateTime? fromDate,
    final DateTime? toDate,
    final int? cityId,
  }) = _$LoadOrderAnalyticsEventImpl;

  DateTime? get fromDate;
  DateTime? get toDate;
  int? get cityId;

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadOrderAnalyticsEventImplCopyWith<_$LoadOrderAnalyticsEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}
