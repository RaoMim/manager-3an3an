// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transporters_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TransportersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportersEventCopyWith<$Res> {
  factory $TransportersEventCopyWith(
    TransportersEvent value,
    $Res Function(TransportersEvent) then,
  ) = _$TransportersEventCopyWithImpl<$Res, TransportersEvent>;
}

/// @nodoc
class _$TransportersEventCopyWithImpl<$Res, $Val extends TransportersEvent>
    implements $TransportersEventCopyWith<$Res> {
  _$TransportersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadTransportersEventImplCopyWith<$Res> {
  factory _$$LoadTransportersEventImplCopyWith(
    _$LoadTransportersEventImpl value,
    $Res Function(_$LoadTransportersEventImpl) then,
  ) = __$$LoadTransportersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    int page,
    int pageSize,
    String? status,
    int? cityId,
    bool? isBlocked,
    bool? availableOnly,
    String? search,
    double? minRating,
    int? minDeliveries,
    bool isRefresh,
  });
}

/// @nodoc
class __$$LoadTransportersEventImplCopyWithImpl<$Res>
    extends _$TransportersEventCopyWithImpl<$Res, _$LoadTransportersEventImpl>
    implements _$$LoadTransportersEventImplCopyWith<$Res> {
  __$$LoadTransportersEventImplCopyWithImpl(
    _$LoadTransportersEventImpl _value,
    $Res Function(_$LoadTransportersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? status = freezed,
    Object? cityId = freezed,
    Object? isBlocked = freezed,
    Object? availableOnly = freezed,
    Object? search = freezed,
    Object? minRating = freezed,
    Object? minDeliveries = freezed,
    Object? isRefresh = null,
  }) {
    return _then(
      _$LoadTransportersEventImpl(
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        pageSize: null == pageSize
            ? _value.pageSize
            : pageSize // ignore: cast_nullable_to_non_nullable
                  as int,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        cityId: freezed == cityId
            ? _value.cityId
            : cityId // ignore: cast_nullable_to_non_nullable
                  as int?,
        isBlocked: freezed == isBlocked
            ? _value.isBlocked
            : isBlocked // ignore: cast_nullable_to_non_nullable
                  as bool?,
        availableOnly: freezed == availableOnly
            ? _value.availableOnly
            : availableOnly // ignore: cast_nullable_to_non_nullable
                  as bool?,
        search: freezed == search
            ? _value.search
            : search // ignore: cast_nullable_to_non_nullable
                  as String?,
        minRating: freezed == minRating
            ? _value.minRating
            : minRating // ignore: cast_nullable_to_non_nullable
                  as double?,
        minDeliveries: freezed == minDeliveries
            ? _value.minDeliveries
            : minDeliveries // ignore: cast_nullable_to_non_nullable
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

class _$LoadTransportersEventImpl implements LoadTransportersEvent {
  const _$LoadTransportersEventImpl({
    this.page = 1,
    this.pageSize = 20,
    this.status,
    this.cityId,
    this.isBlocked,
    this.availableOnly,
    this.search,
    this.minRating,
    this.minDeliveries,
    this.isRefresh = false,
  });

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int pageSize;
  @override
  final String? status;
  @override
  final int? cityId;
  @override
  final bool? isBlocked;
  @override
  final bool? availableOnly;
  @override
  final String? search;
  @override
  final double? minRating;
  @override
  final int? minDeliveries;
  @override
  @JsonKey()
  final bool isRefresh;

  @override
  String toString() {
    return 'TransportersEvent.loadTransporters(page: $page, pageSize: $pageSize, status: $status, cityId: $cityId, isBlocked: $isBlocked, availableOnly: $availableOnly, search: $search, minRating: $minRating, minDeliveries: $minDeliveries, isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTransportersEventImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.availableOnly, availableOnly) ||
                other.availableOnly == availableOnly) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.minRating, minRating) ||
                other.minRating == minRating) &&
            (identical(other.minDeliveries, minDeliveries) ||
                other.minDeliveries == minDeliveries) &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    page,
    pageSize,
    status,
    cityId,
    isBlocked,
    availableOnly,
    search,
    minRating,
    minDeliveries,
    isRefresh,
  );

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTransportersEventImplCopyWith<_$LoadTransportersEventImpl>
  get copyWith =>
      __$$LoadTransportersEventImplCopyWithImpl<_$LoadTransportersEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) {
    return loadTransporters(
      page,
      pageSize,
      status,
      cityId,
      isBlocked,
      availableOnly,
      search,
      minRating,
      minDeliveries,
      isRefresh,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) {
    return loadTransporters?.call(
      page,
      pageSize,
      status,
      cityId,
      isBlocked,
      availableOnly,
      search,
      minRating,
      minDeliveries,
      isRefresh,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (loadTransporters != null) {
      return loadTransporters(
        page,
        pageSize,
        status,
        cityId,
        isBlocked,
        availableOnly,
        search,
        minRating,
        minDeliveries,
        isRefresh,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) {
    return loadTransporters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) {
    return loadTransporters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (loadTransporters != null) {
      return loadTransporters(this);
    }
    return orElse();
  }
}

abstract class LoadTransportersEvent implements TransportersEvent {
  const factory LoadTransportersEvent({
    final int page,
    final int pageSize,
    final String? status,
    final int? cityId,
    final bool? isBlocked,
    final bool? availableOnly,
    final String? search,
    final double? minRating,
    final int? minDeliveries,
    final bool isRefresh,
  }) = _$LoadTransportersEventImpl;

  int get page;
  int get pageSize;
  String? get status;
  int? get cityId;
  bool? get isBlocked;
  bool? get availableOnly;
  String? get search;
  double? get minRating;
  int? get minDeliveries;
  bool get isRefresh;

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadTransportersEventImplCopyWith<_$LoadTransportersEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreTransportersEventImplCopyWith<$Res> {
  factory _$$LoadMoreTransportersEventImplCopyWith(
    _$LoadMoreTransportersEventImpl value,
    $Res Function(_$LoadMoreTransportersEventImpl) then,
  ) = __$$LoadMoreTransportersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreTransportersEventImplCopyWithImpl<$Res>
    extends
        _$TransportersEventCopyWithImpl<$Res, _$LoadMoreTransportersEventImpl>
    implements _$$LoadMoreTransportersEventImplCopyWith<$Res> {
  __$$LoadMoreTransportersEventImplCopyWithImpl(
    _$LoadMoreTransportersEventImpl _value,
    $Res Function(_$LoadMoreTransportersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreTransportersEventImpl implements LoadMoreTransportersEvent {
  const _$LoadMoreTransportersEventImpl();

  @override
  String toString() {
    return 'TransportersEvent.loadMoreTransporters()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreTransportersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) {
    return loadMoreTransporters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) {
    return loadMoreTransporters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (loadMoreTransporters != null) {
      return loadMoreTransporters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) {
    return loadMoreTransporters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) {
    return loadMoreTransporters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (loadMoreTransporters != null) {
      return loadMoreTransporters(this);
    }
    return orElse();
  }
}

abstract class LoadMoreTransportersEvent implements TransportersEvent {
  const factory LoadMoreTransportersEvent() = _$LoadMoreTransportersEventImpl;
}

/// @nodoc
abstract class _$$RefreshTransportersEventImplCopyWith<$Res> {
  factory _$$RefreshTransportersEventImplCopyWith(
    _$RefreshTransportersEventImpl value,
    $Res Function(_$RefreshTransportersEventImpl) then,
  ) = __$$RefreshTransportersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshTransportersEventImplCopyWithImpl<$Res>
    extends
        _$TransportersEventCopyWithImpl<$Res, _$RefreshTransportersEventImpl>
    implements _$$RefreshTransportersEventImplCopyWith<$Res> {
  __$$RefreshTransportersEventImplCopyWithImpl(
    _$RefreshTransportersEventImpl _value,
    $Res Function(_$RefreshTransportersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshTransportersEventImpl implements RefreshTransportersEvent {
  const _$RefreshTransportersEventImpl();

  @override
  String toString() {
    return 'TransportersEvent.refreshTransporters()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTransportersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) {
    return refreshTransporters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) {
    return refreshTransporters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (refreshTransporters != null) {
      return refreshTransporters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) {
    return refreshTransporters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) {
    return refreshTransporters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (refreshTransporters != null) {
      return refreshTransporters(this);
    }
    return orElse();
  }
}

abstract class RefreshTransportersEvent implements TransportersEvent {
  const factory RefreshTransportersEvent() = _$RefreshTransportersEventImpl;
}

/// @nodoc
abstract class _$$ApplyTransporterFilterEventImplCopyWith<$Res> {
  factory _$$ApplyTransporterFilterEventImplCopyWith(
    _$ApplyTransporterFilterEventImpl value,
    $Res Function(_$ApplyTransporterFilterEventImpl) then,
  ) = __$$ApplyTransporterFilterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String? status,
    int? cityId,
    bool? isBlocked,
    bool? availableOnly,
    double? minRating,
    int? minDeliveries,
    String? search,
  });
}

/// @nodoc
class __$$ApplyTransporterFilterEventImplCopyWithImpl<$Res>
    extends
        _$TransportersEventCopyWithImpl<$Res, _$ApplyTransporterFilterEventImpl>
    implements _$$ApplyTransporterFilterEventImplCopyWith<$Res> {
  __$$ApplyTransporterFilterEventImplCopyWithImpl(
    _$ApplyTransporterFilterEventImpl _value,
    $Res Function(_$ApplyTransporterFilterEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? cityId = freezed,
    Object? isBlocked = freezed,
    Object? availableOnly = freezed,
    Object? minRating = freezed,
    Object? minDeliveries = freezed,
    Object? search = freezed,
  }) {
    return _then(
      _$ApplyTransporterFilterEventImpl(
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        cityId: freezed == cityId
            ? _value.cityId
            : cityId // ignore: cast_nullable_to_non_nullable
                  as int?,
        isBlocked: freezed == isBlocked
            ? _value.isBlocked
            : isBlocked // ignore: cast_nullable_to_non_nullable
                  as bool?,
        availableOnly: freezed == availableOnly
            ? _value.availableOnly
            : availableOnly // ignore: cast_nullable_to_non_nullable
                  as bool?,
        minRating: freezed == minRating
            ? _value.minRating
            : minRating // ignore: cast_nullable_to_non_nullable
                  as double?,
        minDeliveries: freezed == minDeliveries
            ? _value.minDeliveries
            : minDeliveries // ignore: cast_nullable_to_non_nullable
                  as int?,
        search: freezed == search
            ? _value.search
            : search // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ApplyTransporterFilterEventImpl implements ApplyTransporterFilterEvent {
  const _$ApplyTransporterFilterEventImpl({
    this.status,
    this.cityId,
    this.isBlocked,
    this.availableOnly,
    this.minRating,
    this.minDeliveries,
    this.search,
  });

  @override
  final String? status;
  @override
  final int? cityId;
  @override
  final bool? isBlocked;
  @override
  final bool? availableOnly;
  @override
  final double? minRating;
  @override
  final int? minDeliveries;
  @override
  final String? search;

  @override
  String toString() {
    return 'TransportersEvent.applyFilter(status: $status, cityId: $cityId, isBlocked: $isBlocked, availableOnly: $availableOnly, minRating: $minRating, minDeliveries: $minDeliveries, search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyTransporterFilterEventImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.availableOnly, availableOnly) ||
                other.availableOnly == availableOnly) &&
            (identical(other.minRating, minRating) ||
                other.minRating == minRating) &&
            (identical(other.minDeliveries, minDeliveries) ||
                other.minDeliveries == minDeliveries) &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    cityId,
    isBlocked,
    availableOnly,
    minRating,
    minDeliveries,
    search,
  );

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyTransporterFilterEventImplCopyWith<_$ApplyTransporterFilterEventImpl>
  get copyWith =>
      __$$ApplyTransporterFilterEventImplCopyWithImpl<
        _$ApplyTransporterFilterEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) {
    return applyFilter(
      status,
      cityId,
      isBlocked,
      availableOnly,
      minRating,
      minDeliveries,
      search,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) {
    return applyFilter?.call(
      status,
      cityId,
      isBlocked,
      availableOnly,
      minRating,
      minDeliveries,
      search,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (applyFilter != null) {
      return applyFilter(
        status,
        cityId,
        isBlocked,
        availableOnly,
        minRating,
        minDeliveries,
        search,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) {
    return applyFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) {
    return applyFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (applyFilter != null) {
      return applyFilter(this);
    }
    return orElse();
  }
}

abstract class ApplyTransporterFilterEvent implements TransportersEvent {
  const factory ApplyTransporterFilterEvent({
    final String? status,
    final int? cityId,
    final bool? isBlocked,
    final bool? availableOnly,
    final double? minRating,
    final int? minDeliveries,
    final String? search,
  }) = _$ApplyTransporterFilterEventImpl;

  String? get status;
  int? get cityId;
  bool? get isBlocked;
  bool? get availableOnly;
  double? get minRating;
  int? get minDeliveries;
  String? get search;

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApplyTransporterFilterEventImplCopyWith<_$ApplyTransporterFilterEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearTransporterFilterEventImplCopyWith<$Res> {
  factory _$$ClearTransporterFilterEventImplCopyWith(
    _$ClearTransporterFilterEventImpl value,
    $Res Function(_$ClearTransporterFilterEventImpl) then,
  ) = __$$ClearTransporterFilterEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearTransporterFilterEventImplCopyWithImpl<$Res>
    extends
        _$TransportersEventCopyWithImpl<$Res, _$ClearTransporterFilterEventImpl>
    implements _$$ClearTransporterFilterEventImplCopyWith<$Res> {
  __$$ClearTransporterFilterEventImplCopyWithImpl(
    _$ClearTransporterFilterEventImpl _value,
    $Res Function(_$ClearTransporterFilterEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearTransporterFilterEventImpl implements ClearTransporterFilterEvent {
  const _$ClearTransporterFilterEventImpl();

  @override
  String toString() {
    return 'TransportersEvent.clearFilter()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearTransporterFilterEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) {
    return clearFilter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) {
    return clearFilter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (clearFilter != null) {
      return clearFilter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) {
    return clearFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) {
    return clearFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (clearFilter != null) {
      return clearFilter(this);
    }
    return orElse();
  }
}

abstract class ClearTransporterFilterEvent implements TransportersEvent {
  const factory ClearTransporterFilterEvent() =
      _$ClearTransporterFilterEventImpl;
}

/// @nodoc
abstract class _$$SearchTransportersEventImplCopyWith<$Res> {
  factory _$$SearchTransportersEventImplCopyWith(
    _$SearchTransportersEventImpl value,
    $Res Function(_$SearchTransportersEventImpl) then,
  ) = __$$SearchTransportersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchTransportersEventImplCopyWithImpl<$Res>
    extends _$TransportersEventCopyWithImpl<$Res, _$SearchTransportersEventImpl>
    implements _$$SearchTransportersEventImplCopyWith<$Res> {
  __$$SearchTransportersEventImplCopyWithImpl(
    _$SearchTransportersEventImpl _value,
    $Res Function(_$SearchTransportersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$SearchTransportersEventImpl(
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SearchTransportersEventImpl implements SearchTransportersEvent {
  const _$SearchTransportersEventImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'TransportersEvent.searchTransporters(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTransportersEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTransportersEventImplCopyWith<_$SearchTransportersEventImpl>
  get copyWith =>
      __$$SearchTransportersEventImplCopyWithImpl<
        _$SearchTransportersEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) {
    return searchTransporters(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) {
    return searchTransporters?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (searchTransporters != null) {
      return searchTransporters(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) {
    return searchTransporters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) {
    return searchTransporters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (searchTransporters != null) {
      return searchTransporters(this);
    }
    return orElse();
  }
}

abstract class SearchTransportersEvent implements TransportersEvent {
  const factory SearchTransportersEvent({required final String query}) =
      _$SearchTransportersEventImpl;

  String get query;

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchTransportersEventImplCopyWith<_$SearchTransportersEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTransporterStatusEventImplCopyWith<$Res> {
  factory _$$UpdateTransporterStatusEventImplCopyWith(
    _$UpdateTransporterStatusEventImpl value,
    $Res Function(_$UpdateTransporterStatusEventImpl) then,
  ) = __$$UpdateTransporterStatusEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int transporterId, String status});
}

/// @nodoc
class __$$UpdateTransporterStatusEventImplCopyWithImpl<$Res>
    extends
        _$TransportersEventCopyWithImpl<
          $Res,
          _$UpdateTransporterStatusEventImpl
        >
    implements _$$UpdateTransporterStatusEventImplCopyWith<$Res> {
  __$$UpdateTransporterStatusEventImplCopyWithImpl(
    _$UpdateTransporterStatusEventImpl _value,
    $Res Function(_$UpdateTransporterStatusEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? transporterId = null, Object? status = null}) {
    return _then(
      _$UpdateTransporterStatusEventImpl(
        transporterId: null == transporterId
            ? _value.transporterId
            : transporterId // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$UpdateTransporterStatusEventImpl
    implements UpdateTransporterStatusEvent {
  const _$UpdateTransporterStatusEventImpl({
    required this.transporterId,
    required this.status,
  });

  @override
  final int transporterId;
  @override
  final String status;

  @override
  String toString() {
    return 'TransportersEvent.updateTransporterStatus(transporterId: $transporterId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTransporterStatusEventImpl &&
            (identical(other.transporterId, transporterId) ||
                other.transporterId == transporterId) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transporterId, status);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTransporterStatusEventImplCopyWith<
    _$UpdateTransporterStatusEventImpl
  >
  get copyWith =>
      __$$UpdateTransporterStatusEventImplCopyWithImpl<
        _$UpdateTransporterStatusEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) {
    return updateTransporterStatus(transporterId, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) {
    return updateTransporterStatus?.call(transporterId, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (updateTransporterStatus != null) {
      return updateTransporterStatus(transporterId, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) {
    return updateTransporterStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) {
    return updateTransporterStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (updateTransporterStatus != null) {
      return updateTransporterStatus(this);
    }
    return orElse();
  }
}

abstract class UpdateTransporterStatusEvent implements TransportersEvent {
  const factory UpdateTransporterStatusEvent({
    required final int transporterId,
    required final String status,
  }) = _$UpdateTransporterStatusEventImpl;

  int get transporterId;
  String get status;

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTransporterStatusEventImplCopyWith<
    _$UpdateTransporterStatusEventImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlockTransporterEventImplCopyWith<$Res> {
  factory _$$BlockTransporterEventImplCopyWith(
    _$BlockTransporterEventImpl value,
    $Res Function(_$BlockTransporterEventImpl) then,
  ) = __$$BlockTransporterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int transporterId, bool blocked, String? reason});
}

/// @nodoc
class __$$BlockTransporterEventImplCopyWithImpl<$Res>
    extends _$TransportersEventCopyWithImpl<$Res, _$BlockTransporterEventImpl>
    implements _$$BlockTransporterEventImplCopyWith<$Res> {
  __$$BlockTransporterEventImplCopyWithImpl(
    _$BlockTransporterEventImpl _value,
    $Res Function(_$BlockTransporterEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transporterId = null,
    Object? blocked = null,
    Object? reason = freezed,
  }) {
    return _then(
      _$BlockTransporterEventImpl(
        transporterId: null == transporterId
            ? _value.transporterId
            : transporterId // ignore: cast_nullable_to_non_nullable
                  as int,
        blocked: null == blocked
            ? _value.blocked
            : blocked // ignore: cast_nullable_to_non_nullable
                  as bool,
        reason: freezed == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$BlockTransporterEventImpl implements BlockTransporterEvent {
  const _$BlockTransporterEventImpl({
    required this.transporterId,
    required this.blocked,
    this.reason,
  });

  @override
  final int transporterId;
  @override
  final bool blocked;
  @override
  final String? reason;

  @override
  String toString() {
    return 'TransportersEvent.blockTransporter(transporterId: $transporterId, blocked: $blocked, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockTransporterEventImpl &&
            (identical(other.transporterId, transporterId) ||
                other.transporterId == transporterId) &&
            (identical(other.blocked, blocked) || other.blocked == blocked) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transporterId, blocked, reason);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockTransporterEventImplCopyWith<_$BlockTransporterEventImpl>
  get copyWith =>
      __$$BlockTransporterEventImplCopyWithImpl<_$BlockTransporterEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) {
    return blockTransporter(transporterId, blocked, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) {
    return blockTransporter?.call(transporterId, blocked, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (blockTransporter != null) {
      return blockTransporter(transporterId, blocked, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) {
    return blockTransporter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) {
    return blockTransporter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (blockTransporter != null) {
      return blockTransporter(this);
    }
    return orElse();
  }
}

abstract class BlockTransporterEvent implements TransportersEvent {
  const factory BlockTransporterEvent({
    required final int transporterId,
    required final bool blocked,
    final String? reason,
  }) = _$BlockTransporterEventImpl;

  int get transporterId;
  bool get blocked;
  String? get reason;

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlockTransporterEventImplCopyWith<_$BlockTransporterEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTransporterLocationEventImplCopyWith<$Res> {
  factory _$$UpdateTransporterLocationEventImplCopyWith(
    _$UpdateTransporterLocationEventImpl value,
    $Res Function(_$UpdateTransporterLocationEventImpl) then,
  ) = __$$UpdateTransporterLocationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int transporterId, double latitude, double longitude});
}

/// @nodoc
class __$$UpdateTransporterLocationEventImplCopyWithImpl<$Res>
    extends
        _$TransportersEventCopyWithImpl<
          $Res,
          _$UpdateTransporterLocationEventImpl
        >
    implements _$$UpdateTransporterLocationEventImplCopyWith<$Res> {
  __$$UpdateTransporterLocationEventImplCopyWithImpl(
    _$UpdateTransporterLocationEventImpl _value,
    $Res Function(_$UpdateTransporterLocationEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transporterId = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(
      _$UpdateTransporterLocationEventImpl(
        transporterId: null == transporterId
            ? _value.transporterId
            : transporterId // ignore: cast_nullable_to_non_nullable
                  as int,
        latitude: null == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double,
        longitude: null == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$UpdateTransporterLocationEventImpl
    implements UpdateTransporterLocationEvent {
  const _$UpdateTransporterLocationEventImpl({
    required this.transporterId,
    required this.latitude,
    required this.longitude,
  });

  @override
  final int transporterId;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'TransportersEvent.updateTransporterLocation(transporterId: $transporterId, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTransporterLocationEventImpl &&
            (identical(other.transporterId, transporterId) ||
                other.transporterId == transporterId) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, transporterId, latitude, longitude);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTransporterLocationEventImplCopyWith<
    _$UpdateTransporterLocationEventImpl
  >
  get copyWith =>
      __$$UpdateTransporterLocationEventImplCopyWithImpl<
        _$UpdateTransporterLocationEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) {
    return updateTransporterLocation(transporterId, latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) {
    return updateTransporterLocation?.call(transporterId, latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (updateTransporterLocation != null) {
      return updateTransporterLocation(transporterId, latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) {
    return updateTransporterLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) {
    return updateTransporterLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (updateTransporterLocation != null) {
      return updateTransporterLocation(this);
    }
    return orElse();
  }
}

abstract class UpdateTransporterLocationEvent implements TransportersEvent {
  const factory UpdateTransporterLocationEvent({
    required final int transporterId,
    required final double latitude,
    required final double longitude,
  }) = _$UpdateTransporterLocationEventImpl;

  int get transporterId;
  double get latitude;
  double get longitude;

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTransporterLocationEventImplCopyWith<
    _$UpdateTransporterLocationEventImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectTransporterEventImplCopyWith<$Res> {
  factory _$$SelectTransporterEventImplCopyWith(
    _$SelectTransporterEventImpl value,
    $Res Function(_$SelectTransporterEventImpl) then,
  ) = __$$SelectTransporterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int transporterId});
}

/// @nodoc
class __$$SelectTransporterEventImplCopyWithImpl<$Res>
    extends _$TransportersEventCopyWithImpl<$Res, _$SelectTransporterEventImpl>
    implements _$$SelectTransporterEventImplCopyWith<$Res> {
  __$$SelectTransporterEventImplCopyWithImpl(
    _$SelectTransporterEventImpl _value,
    $Res Function(_$SelectTransporterEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? transporterId = null}) {
    return _then(
      _$SelectTransporterEventImpl(
        transporterId: null == transporterId
            ? _value.transporterId
            : transporterId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$SelectTransporterEventImpl implements SelectTransporterEvent {
  const _$SelectTransporterEventImpl({required this.transporterId});

  @override
  final int transporterId;

  @override
  String toString() {
    return 'TransportersEvent.selectTransporter(transporterId: $transporterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectTransporterEventImpl &&
            (identical(other.transporterId, transporterId) ||
                other.transporterId == transporterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transporterId);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTransporterEventImplCopyWith<_$SelectTransporterEventImpl>
  get copyWith =>
      __$$SelectTransporterEventImplCopyWithImpl<_$SelectTransporterEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) {
    return selectTransporter(transporterId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) {
    return selectTransporter?.call(transporterId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (selectTransporter != null) {
      return selectTransporter(transporterId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) {
    return selectTransporter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) {
    return selectTransporter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (selectTransporter != null) {
      return selectTransporter(this);
    }
    return orElse();
  }
}

abstract class SelectTransporterEvent implements TransportersEvent {
  const factory SelectTransporterEvent({required final int transporterId}) =
      _$SelectTransporterEventImpl;

  int get transporterId;

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectTransporterEventImplCopyWith<_$SelectTransporterEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeselectTransporterEventImplCopyWith<$Res> {
  factory _$$DeselectTransporterEventImplCopyWith(
    _$DeselectTransporterEventImpl value,
    $Res Function(_$DeselectTransporterEventImpl) then,
  ) = __$$DeselectTransporterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int transporterId});
}

/// @nodoc
class __$$DeselectTransporterEventImplCopyWithImpl<$Res>
    extends
        _$TransportersEventCopyWithImpl<$Res, _$DeselectTransporterEventImpl>
    implements _$$DeselectTransporterEventImplCopyWith<$Res> {
  __$$DeselectTransporterEventImplCopyWithImpl(
    _$DeselectTransporterEventImpl _value,
    $Res Function(_$DeselectTransporterEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? transporterId = null}) {
    return _then(
      _$DeselectTransporterEventImpl(
        transporterId: null == transporterId
            ? _value.transporterId
            : transporterId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$DeselectTransporterEventImpl implements DeselectTransporterEvent {
  const _$DeselectTransporterEventImpl({required this.transporterId});

  @override
  final int transporterId;

  @override
  String toString() {
    return 'TransportersEvent.deselectTransporter(transporterId: $transporterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeselectTransporterEventImpl &&
            (identical(other.transporterId, transporterId) ||
                other.transporterId == transporterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transporterId);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeselectTransporterEventImplCopyWith<_$DeselectTransporterEventImpl>
  get copyWith =>
      __$$DeselectTransporterEventImplCopyWithImpl<
        _$DeselectTransporterEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) {
    return deselectTransporter(transporterId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) {
    return deselectTransporter?.call(transporterId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (deselectTransporter != null) {
      return deselectTransporter(transporterId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) {
    return deselectTransporter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) {
    return deselectTransporter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (deselectTransporter != null) {
      return deselectTransporter(this);
    }
    return orElse();
  }
}

abstract class DeselectTransporterEvent implements TransportersEvent {
  const factory DeselectTransporterEvent({required final int transporterId}) =
      _$DeselectTransporterEventImpl;

  int get transporterId;

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeselectTransporterEventImplCopyWith<_$DeselectTransporterEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectAllTransportersEventImplCopyWith<$Res> {
  factory _$$SelectAllTransportersEventImplCopyWith(
    _$SelectAllTransportersEventImpl value,
    $Res Function(_$SelectAllTransportersEventImpl) then,
  ) = __$$SelectAllTransportersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectAllTransportersEventImplCopyWithImpl<$Res>
    extends
        _$TransportersEventCopyWithImpl<$Res, _$SelectAllTransportersEventImpl>
    implements _$$SelectAllTransportersEventImplCopyWith<$Res> {
  __$$SelectAllTransportersEventImplCopyWithImpl(
    _$SelectAllTransportersEventImpl _value,
    $Res Function(_$SelectAllTransportersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SelectAllTransportersEventImpl implements SelectAllTransportersEvent {
  const _$SelectAllTransportersEventImpl();

  @override
  String toString() {
    return 'TransportersEvent.selectAllTransporters()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectAllTransportersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) {
    return selectAllTransporters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) {
    return selectAllTransporters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (selectAllTransporters != null) {
      return selectAllTransporters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) {
    return selectAllTransporters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) {
    return selectAllTransporters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (selectAllTransporters != null) {
      return selectAllTransporters(this);
    }
    return orElse();
  }
}

abstract class SelectAllTransportersEvent implements TransportersEvent {
  const factory SelectAllTransportersEvent() = _$SelectAllTransportersEventImpl;
}

/// @nodoc
abstract class _$$ClearTransporterSelectionEventImplCopyWith<$Res> {
  factory _$$ClearTransporterSelectionEventImplCopyWith(
    _$ClearTransporterSelectionEventImpl value,
    $Res Function(_$ClearTransporterSelectionEventImpl) then,
  ) = __$$ClearTransporterSelectionEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearTransporterSelectionEventImplCopyWithImpl<$Res>
    extends
        _$TransportersEventCopyWithImpl<
          $Res,
          _$ClearTransporterSelectionEventImpl
        >
    implements _$$ClearTransporterSelectionEventImplCopyWith<$Res> {
  __$$ClearTransporterSelectionEventImplCopyWithImpl(
    _$ClearTransporterSelectionEventImpl _value,
    $Res Function(_$ClearTransporterSelectionEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearTransporterSelectionEventImpl
    implements ClearTransporterSelectionEvent {
  const _$ClearTransporterSelectionEventImpl();

  @override
  String toString() {
    return 'TransportersEvent.clearTransporterSelection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearTransporterSelectionEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) {
    return clearTransporterSelection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) {
    return clearTransporterSelection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (clearTransporterSelection != null) {
      return clearTransporterSelection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) {
    return clearTransporterSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) {
    return clearTransporterSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (clearTransporterSelection != null) {
      return clearTransporterSelection(this);
    }
    return orElse();
  }
}

abstract class ClearTransporterSelectionEvent implements TransportersEvent {
  const factory ClearTransporterSelectionEvent() =
      _$ClearTransporterSelectionEventImpl;
}

/// @nodoc
abstract class _$$SortTransportersEventImplCopyWith<$Res> {
  factory _$$SortTransportersEventImplCopyWith(
    _$SortTransportersEventImpl value,
    $Res Function(_$SortTransportersEventImpl) then,
  ) = __$$SortTransportersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String sortBy, String sortOrder});
}

/// @nodoc
class __$$SortTransportersEventImplCopyWithImpl<$Res>
    extends _$TransportersEventCopyWithImpl<$Res, _$SortTransportersEventImpl>
    implements _$$SortTransportersEventImplCopyWith<$Res> {
  __$$SortTransportersEventImplCopyWithImpl(
    _$SortTransportersEventImpl _value,
    $Res Function(_$SortTransportersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sortBy = null, Object? sortOrder = null}) {
    return _then(
      _$SortTransportersEventImpl(
        sortBy: null == sortBy
            ? _value.sortBy
            : sortBy // ignore: cast_nullable_to_non_nullable
                  as String,
        sortOrder: null == sortOrder
            ? _value.sortOrder
            : sortOrder // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SortTransportersEventImpl implements SortTransportersEvent {
  const _$SortTransportersEventImpl({
    required this.sortBy,
    required this.sortOrder,
  });

  @override
  final String sortBy;
  @override
  final String sortOrder;

  @override
  String toString() {
    return 'TransportersEvent.sortTransporters(sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortTransportersEventImpl &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortBy, sortOrder);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortTransportersEventImplCopyWith<_$SortTransportersEventImpl>
  get copyWith =>
      __$$SortTransportersEventImplCopyWithImpl<_$SortTransportersEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) {
    return sortTransporters(sortBy, sortOrder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) {
    return sortTransporters?.call(sortBy, sortOrder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (sortTransporters != null) {
      return sortTransporters(sortBy, sortOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) {
    return sortTransporters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) {
    return sortTransporters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (sortTransporters != null) {
      return sortTransporters(this);
    }
    return orElse();
  }
}

abstract class SortTransportersEvent implements TransportersEvent {
  const factory SortTransportersEvent({
    required final String sortBy,
    required final String sortOrder,
  }) = _$SortTransportersEventImpl;

  String get sortBy;
  String get sortOrder;

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortTransportersEventImplCopyWith<_$SortTransportersEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransporterStatusUpdatedFromSignalREventImplCopyWith<$Res> {
  factory _$$TransporterStatusUpdatedFromSignalREventImplCopyWith(
    _$TransporterStatusUpdatedFromSignalREventImpl value,
    $Res Function(_$TransporterStatusUpdatedFromSignalREventImpl) then,
  ) = __$$TransporterStatusUpdatedFromSignalREventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> statusData});
}

/// @nodoc
class __$$TransporterStatusUpdatedFromSignalREventImplCopyWithImpl<$Res>
    extends
        _$TransportersEventCopyWithImpl<
          $Res,
          _$TransporterStatusUpdatedFromSignalREventImpl
        >
    implements _$$TransporterStatusUpdatedFromSignalREventImplCopyWith<$Res> {
  __$$TransporterStatusUpdatedFromSignalREventImplCopyWithImpl(
    _$TransporterStatusUpdatedFromSignalREventImpl _value,
    $Res Function(_$TransporterStatusUpdatedFromSignalREventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? statusData = null}) {
    return _then(
      _$TransporterStatusUpdatedFromSignalREventImpl(
        statusData: null == statusData
            ? _value._statusData
            : statusData // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$TransporterStatusUpdatedFromSignalREventImpl
    implements TransporterStatusUpdatedFromSignalREvent {
  const _$TransporterStatusUpdatedFromSignalREventImpl({
    required final Map<String, dynamic> statusData,
  }) : _statusData = statusData;

  final Map<String, dynamic> _statusData;
  @override
  Map<String, dynamic> get statusData {
    if (_statusData is EqualUnmodifiableMapView) return _statusData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_statusData);
  }

  @override
  String toString() {
    return 'TransportersEvent.transporterStatusUpdatedFromSignalR(statusData: $statusData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransporterStatusUpdatedFromSignalREventImpl &&
            const DeepCollectionEquality().equals(
              other._statusData,
              _statusData,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_statusData),
  );

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransporterStatusUpdatedFromSignalREventImplCopyWith<
    _$TransporterStatusUpdatedFromSignalREventImpl
  >
  get copyWith =>
      __$$TransporterStatusUpdatedFromSignalREventImplCopyWithImpl<
        _$TransporterStatusUpdatedFromSignalREventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) {
    return transporterStatusUpdatedFromSignalR(statusData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) {
    return transporterStatusUpdatedFromSignalR?.call(statusData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (transporterStatusUpdatedFromSignalR != null) {
      return transporterStatusUpdatedFromSignalR(statusData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) {
    return transporterStatusUpdatedFromSignalR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) {
    return transporterStatusUpdatedFromSignalR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (transporterStatusUpdatedFromSignalR != null) {
      return transporterStatusUpdatedFromSignalR(this);
    }
    return orElse();
  }
}

abstract class TransporterStatusUpdatedFromSignalREvent
    implements TransportersEvent {
  const factory TransporterStatusUpdatedFromSignalREvent({
    required final Map<String, dynamic> statusData,
  }) = _$TransporterStatusUpdatedFromSignalREventImpl;

  Map<String, dynamic> get statusData;

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransporterStatusUpdatedFromSignalREventImplCopyWith<
    _$TransporterStatusUpdatedFromSignalREventImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeTransporterViewModeEventImplCopyWith<$Res> {
  factory _$$ChangeTransporterViewModeEventImplCopyWith(
    _$ChangeTransporterViewModeEventImpl value,
    $Res Function(_$ChangeTransporterViewModeEventImpl) then,
  ) = __$$ChangeTransporterViewModeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransporterViewMode viewMode});
}

/// @nodoc
class __$$ChangeTransporterViewModeEventImplCopyWithImpl<$Res>
    extends
        _$TransportersEventCopyWithImpl<
          $Res,
          _$ChangeTransporterViewModeEventImpl
        >
    implements _$$ChangeTransporterViewModeEventImplCopyWith<$Res> {
  __$$ChangeTransporterViewModeEventImplCopyWithImpl(
    _$ChangeTransporterViewModeEventImpl _value,
    $Res Function(_$ChangeTransporterViewModeEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? viewMode = null}) {
    return _then(
      _$ChangeTransporterViewModeEventImpl(
        viewMode: null == viewMode
            ? _value.viewMode
            : viewMode // ignore: cast_nullable_to_non_nullable
                  as TransporterViewMode,
      ),
    );
  }
}

/// @nodoc

class _$ChangeTransporterViewModeEventImpl
    implements ChangeTransporterViewModeEvent {
  const _$ChangeTransporterViewModeEventImpl({required this.viewMode});

  @override
  final TransporterViewMode viewMode;

  @override
  String toString() {
    return 'TransportersEvent.changeViewMode(viewMode: $viewMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTransporterViewModeEventImpl &&
            (identical(other.viewMode, viewMode) ||
                other.viewMode == viewMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewMode);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTransporterViewModeEventImplCopyWith<
    _$ChangeTransporterViewModeEventImpl
  >
  get copyWith =>
      __$$ChangeTransporterViewModeEventImplCopyWithImpl<
        _$ChangeTransporterViewModeEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) {
    return changeViewMode(viewMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) {
    return changeViewMode?.call(viewMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (changeViewMode != null) {
      return changeViewMode(viewMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) {
    return changeViewMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) {
    return changeViewMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (changeViewMode != null) {
      return changeViewMode(this);
    }
    return orElse();
  }
}

abstract class ChangeTransporterViewModeEvent implements TransportersEvent {
  const factory ChangeTransporterViewModeEvent({
    required final TransporterViewMode viewMode,
  }) = _$ChangeTransporterViewModeEventImpl;

  TransporterViewMode get viewMode;

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeTransporterViewModeEventImplCopyWith<
    _$ChangeTransporterViewModeEventImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAvailableTransportersEventImplCopyWith<$Res> {
  factory _$$LoadAvailableTransportersEventImplCopyWith(
    _$LoadAvailableTransportersEventImpl value,
    $Res Function(_$LoadAvailableTransportersEventImpl) then,
  ) = __$$LoadAvailableTransportersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    int page,
    int? cityId,
    double? latitude,
    double? longitude,
    double maxDistanceKm,
  });
}

/// @nodoc
class __$$LoadAvailableTransportersEventImplCopyWithImpl<$Res>
    extends
        _$TransportersEventCopyWithImpl<
          $Res,
          _$LoadAvailableTransportersEventImpl
        >
    implements _$$LoadAvailableTransportersEventImplCopyWith<$Res> {
  __$$LoadAvailableTransportersEventImplCopyWithImpl(
    _$LoadAvailableTransportersEventImpl _value,
    $Res Function(_$LoadAvailableTransportersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? cityId = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? maxDistanceKm = null,
  }) {
    return _then(
      _$LoadAvailableTransportersEventImpl(
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        cityId: freezed == cityId
            ? _value.cityId
            : cityId // ignore: cast_nullable_to_non_nullable
                  as int?,
        latitude: freezed == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double?,
        longitude: freezed == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double?,
        maxDistanceKm: null == maxDistanceKm
            ? _value.maxDistanceKm
            : maxDistanceKm // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$LoadAvailableTransportersEventImpl
    implements LoadAvailableTransportersEvent {
  const _$LoadAvailableTransportersEventImpl({
    this.page = 1,
    this.cityId,
    this.latitude,
    this.longitude,
    this.maxDistanceKm = 10.0,
  });

  @override
  @JsonKey()
  final int page;
  @override
  final int? cityId;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  @JsonKey()
  final double maxDistanceKm;

  @override
  String toString() {
    return 'TransportersEvent.loadAvailableTransporters(page: $page, cityId: $cityId, latitude: $latitude, longitude: $longitude, maxDistanceKm: $maxDistanceKm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAvailableTransportersEventImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.maxDistanceKm, maxDistanceKm) ||
                other.maxDistanceKm == maxDistanceKm));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    page,
    cityId,
    latitude,
    longitude,
    maxDistanceKm,
  );

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAvailableTransportersEventImplCopyWith<
    _$LoadAvailableTransportersEventImpl
  >
  get copyWith =>
      __$$LoadAvailableTransportersEventImplCopyWithImpl<
        _$LoadAvailableTransportersEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) {
    return loadAvailableTransporters(
      page,
      cityId,
      latitude,
      longitude,
      maxDistanceKm,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) {
    return loadAvailableTransporters?.call(
      page,
      cityId,
      latitude,
      longitude,
      maxDistanceKm,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (loadAvailableTransporters != null) {
      return loadAvailableTransporters(
        page,
        cityId,
        latitude,
        longitude,
        maxDistanceKm,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) {
    return loadAvailableTransporters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) {
    return loadAvailableTransporters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (loadAvailableTransporters != null) {
      return loadAvailableTransporters(this);
    }
    return orElse();
  }
}

abstract class LoadAvailableTransportersEvent implements TransportersEvent {
  const factory LoadAvailableTransportersEvent({
    final int page,
    final int? cityId,
    final double? latitude,
    final double? longitude,
    final double maxDistanceKm,
  }) = _$LoadAvailableTransportersEventImpl;

  int get page;
  int? get cityId;
  double? get latitude;
  double? get longitude;
  double get maxDistanceKm;

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadAvailableTransportersEventImplCopyWith<
    _$LoadAvailableTransportersEventImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadOnlineTransportersEventImplCopyWith<$Res> {
  factory _$$LoadOnlineTransportersEventImplCopyWith(
    _$LoadOnlineTransportersEventImpl value,
    $Res Function(_$LoadOnlineTransportersEventImpl) then,
  ) = __$$LoadOnlineTransportersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$LoadOnlineTransportersEventImplCopyWithImpl<$Res>
    extends
        _$TransportersEventCopyWithImpl<$Res, _$LoadOnlineTransportersEventImpl>
    implements _$$LoadOnlineTransportersEventImplCopyWith<$Res> {
  __$$LoadOnlineTransportersEventImplCopyWithImpl(
    _$LoadOnlineTransportersEventImpl _value,
    $Res Function(_$LoadOnlineTransportersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? page = null}) {
    return _then(
      _$LoadOnlineTransportersEventImpl(
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$LoadOnlineTransportersEventImpl implements LoadOnlineTransportersEvent {
  const _$LoadOnlineTransportersEventImpl({this.page = 1});

  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'TransportersEvent.loadOnlineTransporters(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadOnlineTransportersEventImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadOnlineTransportersEventImplCopyWith<_$LoadOnlineTransportersEventImpl>
  get copyWith =>
      __$$LoadOnlineTransportersEventImplCopyWithImpl<
        _$LoadOnlineTransportersEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) {
    return loadOnlineTransporters(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) {
    return loadOnlineTransporters?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (loadOnlineTransporters != null) {
      return loadOnlineTransporters(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) {
    return loadOnlineTransporters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) {
    return loadOnlineTransporters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (loadOnlineTransporters != null) {
      return loadOnlineTransporters(this);
    }
    return orElse();
  }
}

abstract class LoadOnlineTransportersEvent implements TransportersEvent {
  const factory LoadOnlineTransportersEvent({final int page}) =
      _$LoadOnlineTransportersEventImpl;

  int get page;

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadOnlineTransportersEventImplCopyWith<_$LoadOnlineTransportersEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadBlockedTransportersEventImplCopyWith<$Res> {
  factory _$$LoadBlockedTransportersEventImplCopyWith(
    _$LoadBlockedTransportersEventImpl value,
    $Res Function(_$LoadBlockedTransportersEventImpl) then,
  ) = __$$LoadBlockedTransportersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$LoadBlockedTransportersEventImplCopyWithImpl<$Res>
    extends
        _$TransportersEventCopyWithImpl<
          $Res,
          _$LoadBlockedTransportersEventImpl
        >
    implements _$$LoadBlockedTransportersEventImplCopyWith<$Res> {
  __$$LoadBlockedTransportersEventImplCopyWithImpl(
    _$LoadBlockedTransportersEventImpl _value,
    $Res Function(_$LoadBlockedTransportersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? page = null}) {
    return _then(
      _$LoadBlockedTransportersEventImpl(
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$LoadBlockedTransportersEventImpl
    implements LoadBlockedTransportersEvent {
  const _$LoadBlockedTransportersEventImpl({this.page = 1});

  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'TransportersEvent.loadBlockedTransporters(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadBlockedTransportersEventImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadBlockedTransportersEventImplCopyWith<
    _$LoadBlockedTransportersEventImpl
  >
  get copyWith =>
      __$$LoadBlockedTransportersEventImplCopyWithImpl<
        _$LoadBlockedTransportersEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) {
    return loadBlockedTransporters(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) {
    return loadBlockedTransporters?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (loadBlockedTransporters != null) {
      return loadBlockedTransporters(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) {
    return loadBlockedTransporters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) {
    return loadBlockedTransporters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (loadBlockedTransporters != null) {
      return loadBlockedTransporters(this);
    }
    return orElse();
  }
}

abstract class LoadBlockedTransportersEvent implements TransportersEvent {
  const factory LoadBlockedTransportersEvent({final int page}) =
      _$LoadBlockedTransportersEventImpl;

  int get page;

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadBlockedTransportersEventImplCopyWith<
    _$LoadBlockedTransportersEventImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadTopRatedTransportersEventImplCopyWith<$Res> {
  factory _$$LoadTopRatedTransportersEventImplCopyWith(
    _$LoadTopRatedTransportersEventImpl value,
    $Res Function(_$LoadTopRatedTransportersEventImpl) then,
  ) = __$$LoadTopRatedTransportersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, double minRating});
}

/// @nodoc
class __$$LoadTopRatedTransportersEventImplCopyWithImpl<$Res>
    extends
        _$TransportersEventCopyWithImpl<
          $Res,
          _$LoadTopRatedTransportersEventImpl
        >
    implements _$$LoadTopRatedTransportersEventImplCopyWith<$Res> {
  __$$LoadTopRatedTransportersEventImplCopyWithImpl(
    _$LoadTopRatedTransportersEventImpl _value,
    $Res Function(_$LoadTopRatedTransportersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? page = null, Object? minRating = null}) {
    return _then(
      _$LoadTopRatedTransportersEventImpl(
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        minRating: null == minRating
            ? _value.minRating
            : minRating // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$LoadTopRatedTransportersEventImpl
    implements LoadTopRatedTransportersEvent {
  const _$LoadTopRatedTransportersEventImpl({
    this.page = 1,
    this.minRating = 4.0,
  });

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final double minRating;

  @override
  String toString() {
    return 'TransportersEvent.loadTopRatedTransporters(page: $page, minRating: $minRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTopRatedTransportersEventImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.minRating, minRating) ||
                other.minRating == minRating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, minRating);

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTopRatedTransportersEventImplCopyWith<
    _$LoadTopRatedTransportersEventImpl
  >
  get copyWith =>
      __$$LoadTopRatedTransportersEventImplCopyWithImpl<
        _$LoadTopRatedTransportersEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )
    loadTransporters,
    required TResult Function() loadMoreTransporters,
    required TResult Function() refreshTransporters,
    required TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchTransporters,
    required TResult Function(int transporterId, String status)
    updateTransporterStatus,
    required TResult Function(int transporterId, bool blocked, String? reason)
    blockTransporter,
    required TResult Function(
      int transporterId,
      double latitude,
      double longitude,
    )
    updateTransporterLocation,
    required TResult Function(int transporterId) selectTransporter,
    required TResult Function(int transporterId) deselectTransporter,
    required TResult Function() selectAllTransporters,
    required TResult Function() clearTransporterSelection,
    required TResult Function(String sortBy, String sortOrder) sortTransporters,
    required TResult Function(Map<String, dynamic> statusData)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(TransporterViewMode viewMode) changeViewMode,
    required TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )
    loadAvailableTransporters,
    required TResult Function(int page) loadOnlineTransporters,
    required TResult Function(int page) loadBlockedTransporters,
    required TResult Function(int page, double minRating)
    loadTopRatedTransporters,
  }) {
    return loadTopRatedTransporters(page, minRating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult? Function()? loadMoreTransporters,
    TResult? Function()? refreshTransporters,
    TResult? Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchTransporters,
    TResult? Function(int transporterId, String status)?
    updateTransporterStatus,
    TResult? Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult? Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult? Function(int transporterId)? selectTransporter,
    TResult? Function(int transporterId)? deselectTransporter,
    TResult? Function()? selectAllTransporters,
    TResult? Function()? clearTransporterSelection,
    TResult? Function(String sortBy, String sortOrder)? sortTransporters,
    TResult? Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(TransporterViewMode viewMode)? changeViewMode,
    TResult? Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult? Function(int page)? loadOnlineTransporters,
    TResult? Function(int page)? loadBlockedTransporters,
    TResult? Function(int page, double minRating)? loadTopRatedTransporters,
  }) {
    return loadTopRatedTransporters?.call(page, minRating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      String? search,
      double? minRating,
      int? minDeliveries,
      bool isRefresh,
    )?
    loadTransporters,
    TResult Function()? loadMoreTransporters,
    TResult Function()? refreshTransporters,
    TResult Function(
      String? status,
      int? cityId,
      bool? isBlocked,
      bool? availableOnly,
      double? minRating,
      int? minDeliveries,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchTransporters,
    TResult Function(int transporterId, String status)? updateTransporterStatus,
    TResult Function(int transporterId, bool blocked, String? reason)?
    blockTransporter,
    TResult Function(int transporterId, double latitude, double longitude)?
    updateTransporterLocation,
    TResult Function(int transporterId)? selectTransporter,
    TResult Function(int transporterId)? deselectTransporter,
    TResult Function()? selectAllTransporters,
    TResult Function()? clearTransporterSelection,
    TResult Function(String sortBy, String sortOrder)? sortTransporters,
    TResult Function(Map<String, dynamic> statusData)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(TransporterViewMode viewMode)? changeViewMode,
    TResult Function(
      int page,
      int? cityId,
      double? latitude,
      double? longitude,
      double maxDistanceKm,
    )?
    loadAvailableTransporters,
    TResult Function(int page)? loadOnlineTransporters,
    TResult Function(int page)? loadBlockedTransporters,
    TResult Function(int page, double minRating)? loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (loadTopRatedTransporters != null) {
      return loadTopRatedTransporters(page, minRating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransportersEvent value) loadTransporters,
    required TResult Function(LoadMoreTransportersEvent value)
    loadMoreTransporters,
    required TResult Function(RefreshTransportersEvent value)
    refreshTransporters,
    required TResult Function(ApplyTransporterFilterEvent value) applyFilter,
    required TResult Function(ClearTransporterFilterEvent value) clearFilter,
    required TResult Function(SearchTransportersEvent value) searchTransporters,
    required TResult Function(UpdateTransporterStatusEvent value)
    updateTransporterStatus,
    required TResult Function(BlockTransporterEvent value) blockTransporter,
    required TResult Function(UpdateTransporterLocationEvent value)
    updateTransporterLocation,
    required TResult Function(SelectTransporterEvent value) selectTransporter,
    required TResult Function(DeselectTransporterEvent value)
    deselectTransporter,
    required TResult Function(SelectAllTransportersEvent value)
    selectAllTransporters,
    required TResult Function(ClearTransporterSelectionEvent value)
    clearTransporterSelection,
    required TResult Function(SortTransportersEvent value) sortTransporters,
    required TResult Function(TransporterStatusUpdatedFromSignalREvent value)
    transporterStatusUpdatedFromSignalR,
    required TResult Function(ChangeTransporterViewModeEvent value)
    changeViewMode,
    required TResult Function(LoadAvailableTransportersEvent value)
    loadAvailableTransporters,
    required TResult Function(LoadOnlineTransportersEvent value)
    loadOnlineTransporters,
    required TResult Function(LoadBlockedTransportersEvent value)
    loadBlockedTransporters,
    required TResult Function(LoadTopRatedTransportersEvent value)
    loadTopRatedTransporters,
  }) {
    return loadTopRatedTransporters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransportersEvent value)? loadTransporters,
    TResult? Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult? Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult? Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult? Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult? Function(SearchTransportersEvent value)? searchTransporters,
    TResult? Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult? Function(BlockTransporterEvent value)? blockTransporter,
    TResult? Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult? Function(SelectTransporterEvent value)? selectTransporter,
    TResult? Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult? Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult? Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult? Function(SortTransportersEvent value)? sortTransporters,
    TResult? Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult? Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult? Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult? Function(LoadOnlineTransportersEvent value)?
    loadOnlineTransporters,
    TResult? Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult? Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
  }) {
    return loadTopRatedTransporters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransportersEvent value)? loadTransporters,
    TResult Function(LoadMoreTransportersEvent value)? loadMoreTransporters,
    TResult Function(RefreshTransportersEvent value)? refreshTransporters,
    TResult Function(ApplyTransporterFilterEvent value)? applyFilter,
    TResult Function(ClearTransporterFilterEvent value)? clearFilter,
    TResult Function(SearchTransportersEvent value)? searchTransporters,
    TResult Function(UpdateTransporterStatusEvent value)?
    updateTransporterStatus,
    TResult Function(BlockTransporterEvent value)? blockTransporter,
    TResult Function(UpdateTransporterLocationEvent value)?
    updateTransporterLocation,
    TResult Function(SelectTransporterEvent value)? selectTransporter,
    TResult Function(DeselectTransporterEvent value)? deselectTransporter,
    TResult Function(SelectAllTransportersEvent value)? selectAllTransporters,
    TResult Function(ClearTransporterSelectionEvent value)?
    clearTransporterSelection,
    TResult Function(SortTransportersEvent value)? sortTransporters,
    TResult Function(TransporterStatusUpdatedFromSignalREvent value)?
    transporterStatusUpdatedFromSignalR,
    TResult Function(ChangeTransporterViewModeEvent value)? changeViewMode,
    TResult Function(LoadAvailableTransportersEvent value)?
    loadAvailableTransporters,
    TResult Function(LoadOnlineTransportersEvent value)? loadOnlineTransporters,
    TResult Function(LoadBlockedTransportersEvent value)?
    loadBlockedTransporters,
    TResult Function(LoadTopRatedTransportersEvent value)?
    loadTopRatedTransporters,
    required TResult orElse(),
  }) {
    if (loadTopRatedTransporters != null) {
      return loadTopRatedTransporters(this);
    }
    return orElse();
  }
}

abstract class LoadTopRatedTransportersEvent implements TransportersEvent {
  const factory LoadTopRatedTransportersEvent({
    final int page,
    final double minRating,
  }) = _$LoadTopRatedTransportersEventImpl;

  int get page;
  double get minRating;

  /// Create a copy of TransportersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadTopRatedTransportersEventImplCopyWith<
    _$LoadTopRatedTransportersEventImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
