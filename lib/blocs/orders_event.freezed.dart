// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
    OrdersEvent value,
    $Res Function(OrdersEvent) then,
  ) = _$OrdersEventCopyWithImpl<$Res, OrdersEvent>;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res, $Val extends OrdersEvent>
    implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadOrdersEventImplCopyWith<$Res> {
  factory _$$LoadOrdersEventImplCopyWith(
    _$LoadOrdersEventImpl value,
    $Res Function(_$LoadOrdersEventImpl) then,
  ) = __$$LoadOrdersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    int page,
    int pageSize,
    String? status,
    String? search,
    int? cityId,
    DateTime? fromDate,
    DateTime? toDate,
    bool isRefresh,
  });
}

/// @nodoc
class __$$LoadOrdersEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$LoadOrdersEventImpl>
    implements _$$LoadOrdersEventImplCopyWith<$Res> {
  __$$LoadOrdersEventImplCopyWithImpl(
    _$LoadOrdersEventImpl _value,
    $Res Function(_$LoadOrdersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? status = freezed,
    Object? search = freezed,
    Object? cityId = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? isRefresh = null,
  }) {
    return _then(
      _$LoadOrdersEventImpl(
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
        search: freezed == search
            ? _value.search
            : search // ignore: cast_nullable_to_non_nullable
                  as String?,
        cityId: freezed == cityId
            ? _value.cityId
            : cityId // ignore: cast_nullable_to_non_nullable
                  as int?,
        fromDate: freezed == fromDate
            ? _value.fromDate
            : fromDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        toDate: freezed == toDate
            ? _value.toDate
            : toDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        isRefresh: null == isRefresh
            ? _value.isRefresh
            : isRefresh // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$LoadOrdersEventImpl implements LoadOrdersEvent {
  const _$LoadOrdersEventImpl({
    this.page = 1,
    this.pageSize = 15,
    this.status,
    this.search,
    this.cityId,
    this.fromDate,
    this.toDate,
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
  final String? search;
  @override
  final int? cityId;
  @override
  final DateTime? fromDate;
  @override
  final DateTime? toDate;
  @override
  @JsonKey()
  final bool isRefresh;

  @override
  String toString() {
    return 'OrdersEvent.loadOrders(page: $page, pageSize: $pageSize, status: $status, search: $search, cityId: $cityId, fromDate: $fromDate, toDate: $toDate, isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadOrdersEventImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    page,
    pageSize,
    status,
    search,
    cityId,
    fromDate,
    toDate,
    isRefresh,
  );

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadOrdersEventImplCopyWith<_$LoadOrdersEventImpl> get copyWith =>
      __$$LoadOrdersEventImplCopyWithImpl<_$LoadOrdersEventImpl>(
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return loadOrders(
      page,
      pageSize,
      status,
      search,
      cityId,
      fromDate,
      toDate,
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return loadOrders?.call(
      page,
      pageSize,
      status,
      search,
      cityId,
      fromDate,
      toDate,
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (loadOrders != null) {
      return loadOrders(
        page,
        pageSize,
        status,
        search,
        cityId,
        fromDate,
        toDate,
        isRefresh,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return loadOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return loadOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (loadOrders != null) {
      return loadOrders(this);
    }
    return orElse();
  }
}

abstract class LoadOrdersEvent implements OrdersEvent {
  const factory LoadOrdersEvent({
    final int page,
    final int pageSize,
    final String? status,
    final String? search,
    final int? cityId,
    final DateTime? fromDate,
    final DateTime? toDate,
    final bool isRefresh,
  }) = _$LoadOrdersEventImpl;

  int get page;
  int get pageSize;
  String? get status;
  String? get search;
  int? get cityId;
  DateTime? get fromDate;
  DateTime? get toDate;
  bool get isRefresh;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadOrdersEventImplCopyWith<_$LoadOrdersEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreOrdersEventImplCopyWith<$Res> {
  factory _$$LoadMoreOrdersEventImplCopyWith(
    _$LoadMoreOrdersEventImpl value,
    $Res Function(_$LoadMoreOrdersEventImpl) then,
  ) = __$$LoadMoreOrdersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreOrdersEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$LoadMoreOrdersEventImpl>
    implements _$$LoadMoreOrdersEventImplCopyWith<$Res> {
  __$$LoadMoreOrdersEventImplCopyWithImpl(
    _$LoadMoreOrdersEventImpl _value,
    $Res Function(_$LoadMoreOrdersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreOrdersEventImpl implements LoadMoreOrdersEvent {
  const _$LoadMoreOrdersEventImpl();

  @override
  String toString() {
    return 'OrdersEvent.loadMoreOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreOrdersEventImpl);
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return loadMoreOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return loadMoreOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (loadMoreOrders != null) {
      return loadMoreOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return loadMoreOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return loadMoreOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (loadMoreOrders != null) {
      return loadMoreOrders(this);
    }
    return orElse();
  }
}

abstract class LoadMoreOrdersEvent implements OrdersEvent {
  const factory LoadMoreOrdersEvent() = _$LoadMoreOrdersEventImpl;
}

/// @nodoc
abstract class _$$RefreshOrdersEventImplCopyWith<$Res> {
  factory _$$RefreshOrdersEventImplCopyWith(
    _$RefreshOrdersEventImpl value,
    $Res Function(_$RefreshOrdersEventImpl) then,
  ) = __$$RefreshOrdersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshOrdersEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$RefreshOrdersEventImpl>
    implements _$$RefreshOrdersEventImplCopyWith<$Res> {
  __$$RefreshOrdersEventImplCopyWithImpl(
    _$RefreshOrdersEventImpl _value,
    $Res Function(_$RefreshOrdersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshOrdersEventImpl implements RefreshOrdersEvent {
  const _$RefreshOrdersEventImpl();

  @override
  String toString() {
    return 'OrdersEvent.refreshOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshOrdersEventImpl);
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return refreshOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return refreshOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (refreshOrders != null) {
      return refreshOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return refreshOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return refreshOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (refreshOrders != null) {
      return refreshOrders(this);
    }
    return orElse();
  }
}

abstract class RefreshOrdersEvent implements OrdersEvent {
  const factory RefreshOrdersEvent() = _$RefreshOrdersEventImpl;
}

/// @nodoc
abstract class _$$ApplyFilterEventImplCopyWith<$Res> {
  factory _$$ApplyFilterEventImplCopyWith(
    _$ApplyFilterEventImpl value,
    $Res Function(_$ApplyFilterEventImpl) then,
  ) = __$$ApplyFilterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String? status,
    int? cityId,
    DateTime? fromDate,
    DateTime? toDate,
    String? search,
  });
}

/// @nodoc
class __$$ApplyFilterEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$ApplyFilterEventImpl>
    implements _$$ApplyFilterEventImplCopyWith<$Res> {
  __$$ApplyFilterEventImplCopyWithImpl(
    _$ApplyFilterEventImpl _value,
    $Res Function(_$ApplyFilterEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? cityId = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? search = freezed,
  }) {
    return _then(
      _$ApplyFilterEventImpl(
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        cityId: freezed == cityId
            ? _value.cityId
            : cityId // ignore: cast_nullable_to_non_nullable
                  as int?,
        fromDate: freezed == fromDate
            ? _value.fromDate
            : fromDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        toDate: freezed == toDate
            ? _value.toDate
            : toDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        search: freezed == search
            ? _value.search
            : search // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ApplyFilterEventImpl implements ApplyFilterEvent {
  const _$ApplyFilterEventImpl({
    this.status,
    this.cityId,
    this.fromDate,
    this.toDate,
    this.search,
  });

  @override
  final String? status;
  @override
  final int? cityId;
  @override
  final DateTime? fromDate;
  @override
  final DateTime? toDate;
  @override
  final String? search;

  @override
  String toString() {
    return 'OrdersEvent.applyFilter(status: $status, cityId: $cityId, fromDate: $fromDate, toDate: $toDate, search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyFilterEventImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, cityId, fromDate, toDate, search);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyFilterEventImplCopyWith<_$ApplyFilterEventImpl> get copyWith =>
      __$$ApplyFilterEventImplCopyWithImpl<_$ApplyFilterEventImpl>(
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return applyFilter(status, cityId, fromDate, toDate, search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return applyFilter?.call(status, cityId, fromDate, toDate, search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (applyFilter != null) {
      return applyFilter(status, cityId, fromDate, toDate, search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return applyFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return applyFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (applyFilter != null) {
      return applyFilter(this);
    }
    return orElse();
  }
}

abstract class ApplyFilterEvent implements OrdersEvent {
  const factory ApplyFilterEvent({
    final String? status,
    final int? cityId,
    final DateTime? fromDate,
    final DateTime? toDate,
    final String? search,
  }) = _$ApplyFilterEventImpl;

  String? get status;
  int? get cityId;
  DateTime? get fromDate;
  DateTime? get toDate;
  String? get search;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApplyFilterEventImplCopyWith<_$ApplyFilterEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearFilterEventImplCopyWith<$Res> {
  factory _$$ClearFilterEventImplCopyWith(
    _$ClearFilterEventImpl value,
    $Res Function(_$ClearFilterEventImpl) then,
  ) = __$$ClearFilterEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearFilterEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$ClearFilterEventImpl>
    implements _$$ClearFilterEventImplCopyWith<$Res> {
  __$$ClearFilterEventImplCopyWithImpl(
    _$ClearFilterEventImpl _value,
    $Res Function(_$ClearFilterEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearFilterEventImpl implements ClearFilterEvent {
  const _$ClearFilterEventImpl();

  @override
  String toString() {
    return 'OrdersEvent.clearFilter()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearFilterEventImpl);
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
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
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return clearFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return clearFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (clearFilter != null) {
      return clearFilter(this);
    }
    return orElse();
  }
}

abstract class ClearFilterEvent implements OrdersEvent {
  const factory ClearFilterEvent() = _$ClearFilterEventImpl;
}

/// @nodoc
abstract class _$$SearchOrdersEventImplCopyWith<$Res> {
  factory _$$SearchOrdersEventImplCopyWith(
    _$SearchOrdersEventImpl value,
    $Res Function(_$SearchOrdersEventImpl) then,
  ) = __$$SearchOrdersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchOrdersEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$SearchOrdersEventImpl>
    implements _$$SearchOrdersEventImplCopyWith<$Res> {
  __$$SearchOrdersEventImplCopyWithImpl(
    _$SearchOrdersEventImpl _value,
    $Res Function(_$SearchOrdersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$SearchOrdersEventImpl(
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SearchOrdersEventImpl implements SearchOrdersEvent {
  const _$SearchOrdersEventImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'OrdersEvent.searchOrders(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchOrdersEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchOrdersEventImplCopyWith<_$SearchOrdersEventImpl> get copyWith =>
      __$$SearchOrdersEventImplCopyWithImpl<_$SearchOrdersEventImpl>(
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return searchOrders(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return searchOrders?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (searchOrders != null) {
      return searchOrders(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return searchOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return searchOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (searchOrders != null) {
      return searchOrders(this);
    }
    return orElse();
  }
}

abstract class SearchOrdersEvent implements OrdersEvent {
  const factory SearchOrdersEvent({required final String query}) =
      _$SearchOrdersEventImpl;

  String get query;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchOrdersEventImplCopyWith<_$SearchOrdersEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateOrderStatusEventImplCopyWith<$Res> {
  factory _$$UpdateOrderStatusEventImplCopyWith(
    _$UpdateOrderStatusEventImpl value,
    $Res Function(_$UpdateOrderStatusEventImpl) then,
  ) = __$$UpdateOrderStatusEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId, String newStatus, String? note});
}

/// @nodoc
class __$$UpdateOrderStatusEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$UpdateOrderStatusEventImpl>
    implements _$$UpdateOrderStatusEventImplCopyWith<$Res> {
  __$$UpdateOrderStatusEventImplCopyWithImpl(
    _$UpdateOrderStatusEventImpl _value,
    $Res Function(_$UpdateOrderStatusEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? newStatus = null,
    Object? note = freezed,
  }) {
    return _then(
      _$UpdateOrderStatusEventImpl(
        orderId: null == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as int,
        newStatus: null == newStatus
            ? _value.newStatus
            : newStatus // ignore: cast_nullable_to_non_nullable
                  as String,
        note: freezed == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateOrderStatusEventImpl implements UpdateOrderStatusEvent {
  const _$UpdateOrderStatusEventImpl({
    required this.orderId,
    required this.newStatus,
    this.note,
  });

  @override
  final int orderId;
  @override
  final String newStatus;
  @override
  final String? note;

  @override
  String toString() {
    return 'OrdersEvent.updateOrderStatus(orderId: $orderId, newStatus: $newStatus, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderStatusEventImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.newStatus, newStatus) ||
                other.newStatus == newStatus) &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, newStatus, note);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOrderStatusEventImplCopyWith<_$UpdateOrderStatusEventImpl>
  get copyWith =>
      __$$UpdateOrderStatusEventImplCopyWithImpl<_$UpdateOrderStatusEventImpl>(
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return updateOrderStatus(orderId, newStatus, note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return updateOrderStatus?.call(orderId, newStatus, note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (updateOrderStatus != null) {
      return updateOrderStatus(orderId, newStatus, note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return updateOrderStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return updateOrderStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (updateOrderStatus != null) {
      return updateOrderStatus(this);
    }
    return orElse();
  }
}

abstract class UpdateOrderStatusEvent implements OrdersEvent {
  const factory UpdateOrderStatusEvent({
    required final int orderId,
    required final String newStatus,
    final String? note,
  }) = _$UpdateOrderStatusEventImpl;

  int get orderId;
  String get newStatus;
  String? get note;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateOrderStatusEventImplCopyWith<_$UpdateOrderStatusEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssignTransporterEventImplCopyWith<$Res> {
  factory _$$AssignTransporterEventImplCopyWith(
    _$AssignTransporterEventImpl value,
    $Res Function(_$AssignTransporterEventImpl) then,
  ) = __$$AssignTransporterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId, int transporterId});
}

/// @nodoc
class __$$AssignTransporterEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$AssignTransporterEventImpl>
    implements _$$AssignTransporterEventImplCopyWith<$Res> {
  __$$AssignTransporterEventImplCopyWithImpl(
    _$AssignTransporterEventImpl _value,
    $Res Function(_$AssignTransporterEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? orderId = null, Object? transporterId = null}) {
    return _then(
      _$AssignTransporterEventImpl(
        orderId: null == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as int,
        transporterId: null == transporterId
            ? _value.transporterId
            : transporterId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$AssignTransporterEventImpl implements AssignTransporterEvent {
  const _$AssignTransporterEventImpl({
    required this.orderId,
    required this.transporterId,
  });

  @override
  final int orderId;
  @override
  final int transporterId;

  @override
  String toString() {
    return 'OrdersEvent.assignTransporter(orderId: $orderId, transporterId: $transporterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignTransporterEventImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.transporterId, transporterId) ||
                other.transporterId == transporterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, transporterId);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignTransporterEventImplCopyWith<_$AssignTransporterEventImpl>
  get copyWith =>
      __$$AssignTransporterEventImplCopyWithImpl<_$AssignTransporterEventImpl>(
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return assignTransporter(orderId, transporterId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return assignTransporter?.call(orderId, transporterId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (assignTransporter != null) {
      return assignTransporter(orderId, transporterId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return assignTransporter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return assignTransporter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (assignTransporter != null) {
      return assignTransporter(this);
    }
    return orElse();
  }
}

abstract class AssignTransporterEvent implements OrdersEvent {
  const factory AssignTransporterEvent({
    required final int orderId,
    required final int transporterId,
  }) = _$AssignTransporterEventImpl;

  int get orderId;
  int get transporterId;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignTransporterEventImplCopyWith<_$AssignTransporterEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeTransporterEventImplCopyWith<$Res> {
  factory _$$ChangeTransporterEventImplCopyWith(
    _$ChangeTransporterEventImpl value,
    $Res Function(_$ChangeTransporterEventImpl) then,
  ) = __$$ChangeTransporterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId, int newTransporterId, String? reason});
}

/// @nodoc
class __$$ChangeTransporterEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$ChangeTransporterEventImpl>
    implements _$$ChangeTransporterEventImplCopyWith<$Res> {
  __$$ChangeTransporterEventImplCopyWithImpl(
    _$ChangeTransporterEventImpl _value,
    $Res Function(_$ChangeTransporterEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? newTransporterId = null,
    Object? reason = freezed,
  }) {
    return _then(
      _$ChangeTransporterEventImpl(
        orderId: null == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as int,
        newTransporterId: null == newTransporterId
            ? _value.newTransporterId
            : newTransporterId // ignore: cast_nullable_to_non_nullable
                  as int,
        reason: freezed == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ChangeTransporterEventImpl implements ChangeTransporterEvent {
  const _$ChangeTransporterEventImpl({
    required this.orderId,
    required this.newTransporterId,
    this.reason,
  });

  @override
  final int orderId;
  @override
  final int newTransporterId;
  @override
  final String? reason;

  @override
  String toString() {
    return 'OrdersEvent.changeTransporter(orderId: $orderId, newTransporterId: $newTransporterId, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTransporterEventImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.newTransporterId, newTransporterId) ||
                other.newTransporterId == newTransporterId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, orderId, newTransporterId, reason);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTransporterEventImplCopyWith<_$ChangeTransporterEventImpl>
  get copyWith =>
      __$$ChangeTransporterEventImplCopyWithImpl<_$ChangeTransporterEventImpl>(
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return changeTransporter(orderId, newTransporterId, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return changeTransporter?.call(orderId, newTransporterId, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (changeTransporter != null) {
      return changeTransporter(orderId, newTransporterId, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return changeTransporter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return changeTransporter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (changeTransporter != null) {
      return changeTransporter(this);
    }
    return orElse();
  }
}

abstract class ChangeTransporterEvent implements OrdersEvent {
  const factory ChangeTransporterEvent({
    required final int orderId,
    required final int newTransporterId,
    final String? reason,
  }) = _$ChangeTransporterEventImpl;

  int get orderId;
  int get newTransporterId;
  String? get reason;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeTransporterEventImplCopyWith<_$ChangeTransporterEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelOrderEventImplCopyWith<$Res> {
  factory _$$CancelOrderEventImplCopyWith(
    _$CancelOrderEventImpl value,
    $Res Function(_$CancelOrderEventImpl) then,
  ) = __$$CancelOrderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId, String reason});
}

/// @nodoc
class __$$CancelOrderEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$CancelOrderEventImpl>
    implements _$$CancelOrderEventImplCopyWith<$Res> {
  __$$CancelOrderEventImplCopyWithImpl(
    _$CancelOrderEventImpl _value,
    $Res Function(_$CancelOrderEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? orderId = null, Object? reason = null}) {
    return _then(
      _$CancelOrderEventImpl(
        orderId: null == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as int,
        reason: null == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CancelOrderEventImpl implements CancelOrderEvent {
  const _$CancelOrderEventImpl({required this.orderId, required this.reason});

  @override
  final int orderId;
  @override
  final String reason;

  @override
  String toString() {
    return 'OrdersEvent.cancelOrder(orderId: $orderId, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelOrderEventImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, reason);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelOrderEventImplCopyWith<_$CancelOrderEventImpl> get copyWith =>
      __$$CancelOrderEventImplCopyWithImpl<_$CancelOrderEventImpl>(
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return cancelOrder(orderId, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return cancelOrder?.call(orderId, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(orderId, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return cancelOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return cancelOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(this);
    }
    return orElse();
  }
}

abstract class CancelOrderEvent implements OrdersEvent {
  const factory CancelOrderEvent({
    required final int orderId,
    required final String reason,
  }) = _$CancelOrderEventImpl;

  int get orderId;
  String get reason;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelOrderEventImplCopyWith<_$CancelOrderEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BulkUpdateStatusEventImplCopyWith<$Res> {
  factory _$$BulkUpdateStatusEventImplCopyWith(
    _$BulkUpdateStatusEventImpl value,
    $Res Function(_$BulkUpdateStatusEventImpl) then,
  ) = __$$BulkUpdateStatusEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> orderIds, String newStatus, String? note});
}

/// @nodoc
class __$$BulkUpdateStatusEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$BulkUpdateStatusEventImpl>
    implements _$$BulkUpdateStatusEventImplCopyWith<$Res> {
  __$$BulkUpdateStatusEventImplCopyWithImpl(
    _$BulkUpdateStatusEventImpl _value,
    $Res Function(_$BulkUpdateStatusEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderIds = null,
    Object? newStatus = null,
    Object? note = freezed,
  }) {
    return _then(
      _$BulkUpdateStatusEventImpl(
        orderIds: null == orderIds
            ? _value._orderIds
            : orderIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        newStatus: null == newStatus
            ? _value.newStatus
            : newStatus // ignore: cast_nullable_to_non_nullable
                  as String,
        note: freezed == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$BulkUpdateStatusEventImpl implements BulkUpdateStatusEvent {
  const _$BulkUpdateStatusEventImpl({
    required final List<int> orderIds,
    required this.newStatus,
    this.note,
  }) : _orderIds = orderIds;

  final List<int> _orderIds;
  @override
  List<int> get orderIds {
    if (_orderIds is EqualUnmodifiableListView) return _orderIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderIds);
  }

  @override
  final String newStatus;
  @override
  final String? note;

  @override
  String toString() {
    return 'OrdersEvent.bulkUpdateStatus(orderIds: $orderIds, newStatus: $newStatus, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BulkUpdateStatusEventImpl &&
            const DeepCollectionEquality().equals(other._orderIds, _orderIds) &&
            (identical(other.newStatus, newStatus) ||
                other.newStatus == newStatus) &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_orderIds),
    newStatus,
    note,
  );

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BulkUpdateStatusEventImplCopyWith<_$BulkUpdateStatusEventImpl>
  get copyWith =>
      __$$BulkUpdateStatusEventImplCopyWithImpl<_$BulkUpdateStatusEventImpl>(
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return bulkUpdateStatus(orderIds, newStatus, note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return bulkUpdateStatus?.call(orderIds, newStatus, note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (bulkUpdateStatus != null) {
      return bulkUpdateStatus(orderIds, newStatus, note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return bulkUpdateStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return bulkUpdateStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (bulkUpdateStatus != null) {
      return bulkUpdateStatus(this);
    }
    return orElse();
  }
}

abstract class BulkUpdateStatusEvent implements OrdersEvent {
  const factory BulkUpdateStatusEvent({
    required final List<int> orderIds,
    required final String newStatus,
    final String? note,
  }) = _$BulkUpdateStatusEventImpl;

  List<int> get orderIds;
  String get newStatus;
  String? get note;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BulkUpdateStatusEventImplCopyWith<_$BulkUpdateStatusEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BulkAssignTransporterEventImplCopyWith<$Res> {
  factory _$$BulkAssignTransporterEventImplCopyWith(
    _$BulkAssignTransporterEventImpl value,
    $Res Function(_$BulkAssignTransporterEventImpl) then,
  ) = __$$BulkAssignTransporterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> orderIds, int transporterId});
}

/// @nodoc
class __$$BulkAssignTransporterEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$BulkAssignTransporterEventImpl>
    implements _$$BulkAssignTransporterEventImplCopyWith<$Res> {
  __$$BulkAssignTransporterEventImplCopyWithImpl(
    _$BulkAssignTransporterEventImpl _value,
    $Res Function(_$BulkAssignTransporterEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? orderIds = null, Object? transporterId = null}) {
    return _then(
      _$BulkAssignTransporterEventImpl(
        orderIds: null == orderIds
            ? _value._orderIds
            : orderIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        transporterId: null == transporterId
            ? _value.transporterId
            : transporterId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$BulkAssignTransporterEventImpl implements BulkAssignTransporterEvent {
  const _$BulkAssignTransporterEventImpl({
    required final List<int> orderIds,
    required this.transporterId,
  }) : _orderIds = orderIds;

  final List<int> _orderIds;
  @override
  List<int> get orderIds {
    if (_orderIds is EqualUnmodifiableListView) return _orderIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderIds);
  }

  @override
  final int transporterId;

  @override
  String toString() {
    return 'OrdersEvent.bulkAssignTransporter(orderIds: $orderIds, transporterId: $transporterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BulkAssignTransporterEventImpl &&
            const DeepCollectionEquality().equals(other._orderIds, _orderIds) &&
            (identical(other.transporterId, transporterId) ||
                other.transporterId == transporterId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_orderIds),
    transporterId,
  );

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BulkAssignTransporterEventImplCopyWith<_$BulkAssignTransporterEventImpl>
  get copyWith =>
      __$$BulkAssignTransporterEventImplCopyWithImpl<
        _$BulkAssignTransporterEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return bulkAssignTransporter(orderIds, transporterId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return bulkAssignTransporter?.call(orderIds, transporterId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (bulkAssignTransporter != null) {
      return bulkAssignTransporter(orderIds, transporterId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return bulkAssignTransporter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return bulkAssignTransporter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (bulkAssignTransporter != null) {
      return bulkAssignTransporter(this);
    }
    return orElse();
  }
}

abstract class BulkAssignTransporterEvent implements OrdersEvent {
  const factory BulkAssignTransporterEvent({
    required final List<int> orderIds,
    required final int transporterId,
  }) = _$BulkAssignTransporterEventImpl;

  List<int> get orderIds;
  int get transporterId;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BulkAssignTransporterEventImplCopyWith<_$BulkAssignTransporterEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectOrderEventImplCopyWith<$Res> {
  factory _$$SelectOrderEventImplCopyWith(
    _$SelectOrderEventImpl value,
    $Res Function(_$SelectOrderEventImpl) then,
  ) = __$$SelectOrderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$SelectOrderEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$SelectOrderEventImpl>
    implements _$$SelectOrderEventImplCopyWith<$Res> {
  __$$SelectOrderEventImplCopyWithImpl(
    _$SelectOrderEventImpl _value,
    $Res Function(_$SelectOrderEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? orderId = null}) {
    return _then(
      _$SelectOrderEventImpl(
        orderId: null == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$SelectOrderEventImpl implements SelectOrderEvent {
  const _$SelectOrderEventImpl({required this.orderId});

  @override
  final int orderId;

  @override
  String toString() {
    return 'OrdersEvent.selectOrder(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectOrderEventImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectOrderEventImplCopyWith<_$SelectOrderEventImpl> get copyWith =>
      __$$SelectOrderEventImplCopyWithImpl<_$SelectOrderEventImpl>(
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return selectOrder(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return selectOrder?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (selectOrder != null) {
      return selectOrder(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return selectOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return selectOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (selectOrder != null) {
      return selectOrder(this);
    }
    return orElse();
  }
}

abstract class SelectOrderEvent implements OrdersEvent {
  const factory SelectOrderEvent({required final int orderId}) =
      _$SelectOrderEventImpl;

  int get orderId;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectOrderEventImplCopyWith<_$SelectOrderEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeselectOrderEventImplCopyWith<$Res> {
  factory _$$DeselectOrderEventImplCopyWith(
    _$DeselectOrderEventImpl value,
    $Res Function(_$DeselectOrderEventImpl) then,
  ) = __$$DeselectOrderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$DeselectOrderEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$DeselectOrderEventImpl>
    implements _$$DeselectOrderEventImplCopyWith<$Res> {
  __$$DeselectOrderEventImplCopyWithImpl(
    _$DeselectOrderEventImpl _value,
    $Res Function(_$DeselectOrderEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? orderId = null}) {
    return _then(
      _$DeselectOrderEventImpl(
        orderId: null == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$DeselectOrderEventImpl implements DeselectOrderEvent {
  const _$DeselectOrderEventImpl({required this.orderId});

  @override
  final int orderId;

  @override
  String toString() {
    return 'OrdersEvent.deselectOrder(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeselectOrderEventImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeselectOrderEventImplCopyWith<_$DeselectOrderEventImpl> get copyWith =>
      __$$DeselectOrderEventImplCopyWithImpl<_$DeselectOrderEventImpl>(
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return deselectOrder(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return deselectOrder?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (deselectOrder != null) {
      return deselectOrder(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return deselectOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return deselectOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (deselectOrder != null) {
      return deselectOrder(this);
    }
    return orElse();
  }
}

abstract class DeselectOrderEvent implements OrdersEvent {
  const factory DeselectOrderEvent({required final int orderId}) =
      _$DeselectOrderEventImpl;

  int get orderId;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeselectOrderEventImplCopyWith<_$DeselectOrderEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectAllOrdersEventImplCopyWith<$Res> {
  factory _$$SelectAllOrdersEventImplCopyWith(
    _$SelectAllOrdersEventImpl value,
    $Res Function(_$SelectAllOrdersEventImpl) then,
  ) = __$$SelectAllOrdersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectAllOrdersEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$SelectAllOrdersEventImpl>
    implements _$$SelectAllOrdersEventImplCopyWith<$Res> {
  __$$SelectAllOrdersEventImplCopyWithImpl(
    _$SelectAllOrdersEventImpl _value,
    $Res Function(_$SelectAllOrdersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SelectAllOrdersEventImpl implements SelectAllOrdersEvent {
  const _$SelectAllOrdersEventImpl();

  @override
  String toString() {
    return 'OrdersEvent.selectAllOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectAllOrdersEventImpl);
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return selectAllOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return selectAllOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (selectAllOrders != null) {
      return selectAllOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return selectAllOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return selectAllOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (selectAllOrders != null) {
      return selectAllOrders(this);
    }
    return orElse();
  }
}

abstract class SelectAllOrdersEvent implements OrdersEvent {
  const factory SelectAllOrdersEvent() = _$SelectAllOrdersEventImpl;
}

/// @nodoc
abstract class _$$ClearSelectionEventImplCopyWith<$Res> {
  factory _$$ClearSelectionEventImplCopyWith(
    _$ClearSelectionEventImpl value,
    $Res Function(_$ClearSelectionEventImpl) then,
  ) = __$$ClearSelectionEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSelectionEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$ClearSelectionEventImpl>
    implements _$$ClearSelectionEventImplCopyWith<$Res> {
  __$$ClearSelectionEventImplCopyWithImpl(
    _$ClearSelectionEventImpl _value,
    $Res Function(_$ClearSelectionEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearSelectionEventImpl implements ClearSelectionEvent {
  const _$ClearSelectionEventImpl();

  @override
  String toString() {
    return 'OrdersEvent.clearSelection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearSelectionEventImpl);
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return clearSelection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return clearSelection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (clearSelection != null) {
      return clearSelection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return clearSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return clearSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (clearSelection != null) {
      return clearSelection(this);
    }
    return orElse();
  }
}

abstract class ClearSelectionEvent implements OrdersEvent {
  const factory ClearSelectionEvent() = _$ClearSelectionEventImpl;
}

/// @nodoc
abstract class _$$SortOrdersEventImplCopyWith<$Res> {
  factory _$$SortOrdersEventImplCopyWith(
    _$SortOrdersEventImpl value,
    $Res Function(_$SortOrdersEventImpl) then,
  ) = __$$SortOrdersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String sortBy, String sortOrder});
}

/// @nodoc
class __$$SortOrdersEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$SortOrdersEventImpl>
    implements _$$SortOrdersEventImplCopyWith<$Res> {
  __$$SortOrdersEventImplCopyWithImpl(
    _$SortOrdersEventImpl _value,
    $Res Function(_$SortOrdersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sortBy = null, Object? sortOrder = null}) {
    return _then(
      _$SortOrdersEventImpl(
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

class _$SortOrdersEventImpl implements SortOrdersEvent {
  const _$SortOrdersEventImpl({required this.sortBy, required this.sortOrder});

  @override
  final String sortBy;
  @override
  final String sortOrder;

  @override
  String toString() {
    return 'OrdersEvent.sortOrders(sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortOrdersEventImpl &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortBy, sortOrder);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortOrdersEventImplCopyWith<_$SortOrdersEventImpl> get copyWith =>
      __$$SortOrdersEventImplCopyWithImpl<_$SortOrdersEventImpl>(
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return sortOrders(sortBy, sortOrder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return sortOrders?.call(sortBy, sortOrder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (sortOrders != null) {
      return sortOrders(sortBy, sortOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return sortOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return sortOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (sortOrders != null) {
      return sortOrders(this);
    }
    return orElse();
  }
}

abstract class SortOrdersEvent implements OrdersEvent {
  const factory SortOrdersEvent({
    required final String sortBy,
    required final String sortOrder,
  }) = _$SortOrdersEventImpl;

  String get sortBy;
  String get sortOrder;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortOrdersEventImplCopyWith<_$SortOrdersEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderUpdatedFromSignalREventImplCopyWith<$Res> {
  factory _$$OrderUpdatedFromSignalREventImplCopyWith(
    _$OrderUpdatedFromSignalREventImpl value,
    $Res Function(_$OrderUpdatedFromSignalREventImpl) then,
  ) = __$$OrderUpdatedFromSignalREventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic orderData});
}

/// @nodoc
class __$$OrderUpdatedFromSignalREventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$OrderUpdatedFromSignalREventImpl>
    implements _$$OrderUpdatedFromSignalREventImplCopyWith<$Res> {
  __$$OrderUpdatedFromSignalREventImplCopyWithImpl(
    _$OrderUpdatedFromSignalREventImpl _value,
    $Res Function(_$OrderUpdatedFromSignalREventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? orderData = freezed}) {
    return _then(
      _$OrderUpdatedFromSignalREventImpl(
        orderData: freezed == orderData
            ? _value.orderData
            : orderData // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc

class _$OrderUpdatedFromSignalREventImpl
    implements OrderUpdatedFromSignalREvent {
  const _$OrderUpdatedFromSignalREventImpl({required this.orderData});

  @override
  final dynamic orderData;

  @override
  String toString() {
    return 'OrdersEvent.orderUpdatedFromSignalR(orderData: $orderData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderUpdatedFromSignalREventImpl &&
            const DeepCollectionEquality().equals(other.orderData, orderData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(orderData));

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderUpdatedFromSignalREventImplCopyWith<
    _$OrderUpdatedFromSignalREventImpl
  >
  get copyWith =>
      __$$OrderUpdatedFromSignalREventImplCopyWithImpl<
        _$OrderUpdatedFromSignalREventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return orderUpdatedFromSignalR(orderData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return orderUpdatedFromSignalR?.call(orderData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (orderUpdatedFromSignalR != null) {
      return orderUpdatedFromSignalR(orderData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return orderUpdatedFromSignalR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return orderUpdatedFromSignalR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (orderUpdatedFromSignalR != null) {
      return orderUpdatedFromSignalR(this);
    }
    return orElse();
  }
}

abstract class OrderUpdatedFromSignalREvent implements OrdersEvent {
  const factory OrderUpdatedFromSignalREvent({
    required final dynamic orderData,
  }) = _$OrderUpdatedFromSignalREventImpl;

  dynamic get orderData;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderUpdatedFromSignalREventImplCopyWith<
    _$OrderUpdatedFromSignalREventImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewOrderFromSignalREventImplCopyWith<$Res> {
  factory _$$NewOrderFromSignalREventImplCopyWith(
    _$NewOrderFromSignalREventImpl value,
    $Res Function(_$NewOrderFromSignalREventImpl) then,
  ) = __$$NewOrderFromSignalREventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic orderData});
}

/// @nodoc
class __$$NewOrderFromSignalREventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$NewOrderFromSignalREventImpl>
    implements _$$NewOrderFromSignalREventImplCopyWith<$Res> {
  __$$NewOrderFromSignalREventImplCopyWithImpl(
    _$NewOrderFromSignalREventImpl _value,
    $Res Function(_$NewOrderFromSignalREventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? orderData = freezed}) {
    return _then(
      _$NewOrderFromSignalREventImpl(
        orderData: freezed == orderData
            ? _value.orderData
            : orderData // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc

class _$NewOrderFromSignalREventImpl implements NewOrderFromSignalREvent {
  const _$NewOrderFromSignalREventImpl({required this.orderData});

  @override
  final dynamic orderData;

  @override
  String toString() {
    return 'OrdersEvent.newOrderFromSignalR(orderData: $orderData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewOrderFromSignalREventImpl &&
            const DeepCollectionEquality().equals(other.orderData, orderData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(orderData));

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewOrderFromSignalREventImplCopyWith<_$NewOrderFromSignalREventImpl>
  get copyWith =>
      __$$NewOrderFromSignalREventImplCopyWithImpl<
        _$NewOrderFromSignalREventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return newOrderFromSignalR(orderData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return newOrderFromSignalR?.call(orderData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (newOrderFromSignalR != null) {
      return newOrderFromSignalR(orderData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return newOrderFromSignalR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return newOrderFromSignalR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (newOrderFromSignalR != null) {
      return newOrderFromSignalR(this);
    }
    return orElse();
  }
}

abstract class NewOrderFromSignalREvent implements OrdersEvent {
  const factory NewOrderFromSignalREvent({required final dynamic orderData}) =
      _$NewOrderFromSignalREventImpl;

  dynamic get orderData;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewOrderFromSignalREventImplCopyWith<_$NewOrderFromSignalREventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeViewModeEventImplCopyWith<$Res> {
  factory _$$ChangeViewModeEventImplCopyWith(
    _$ChangeViewModeEventImpl value,
    $Res Function(_$ChangeViewModeEventImpl) then,
  ) = __$$ChangeViewModeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderViewMode viewMode});
}

/// @nodoc
class __$$ChangeViewModeEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$ChangeViewModeEventImpl>
    implements _$$ChangeViewModeEventImplCopyWith<$Res> {
  __$$ChangeViewModeEventImplCopyWithImpl(
    _$ChangeViewModeEventImpl _value,
    $Res Function(_$ChangeViewModeEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? viewMode = null}) {
    return _then(
      _$ChangeViewModeEventImpl(
        viewMode: null == viewMode
            ? _value.viewMode
            : viewMode // ignore: cast_nullable_to_non_nullable
                  as OrderViewMode,
      ),
    );
  }
}

/// @nodoc

class _$ChangeViewModeEventImpl implements ChangeViewModeEvent {
  const _$ChangeViewModeEventImpl({required this.viewMode});

  @override
  final OrderViewMode viewMode;

  @override
  String toString() {
    return 'OrdersEvent.changeViewMode(viewMode: $viewMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeViewModeEventImpl &&
            (identical(other.viewMode, viewMode) ||
                other.viewMode == viewMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewMode);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeViewModeEventImplCopyWith<_$ChangeViewModeEventImpl> get copyWith =>
      __$$ChangeViewModeEventImplCopyWithImpl<_$ChangeViewModeEventImpl>(
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
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
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return changeViewMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return changeViewMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (changeViewMode != null) {
      return changeViewMode(this);
    }
    return orElse();
  }
}

abstract class ChangeViewModeEvent implements OrdersEvent {
  const factory ChangeViewModeEvent({required final OrderViewMode viewMode}) =
      _$ChangeViewModeEventImpl;

  OrderViewMode get viewMode;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeViewModeEventImplCopyWith<_$ChangeViewModeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExportOrdersEventImplCopyWith<$Res> {
  factory _$$ExportOrdersEventImplCopyWith(
    _$ExportOrdersEventImpl value,
    $Res Function(_$ExportOrdersEventImpl) then,
  ) = __$$ExportOrdersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String format,
    DateTime? fromDate,
    DateTime? toDate,
    String? status,
    int? cityId,
  });
}

/// @nodoc
class __$$ExportOrdersEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$ExportOrdersEventImpl>
    implements _$$ExportOrdersEventImplCopyWith<$Res> {
  __$$ExportOrdersEventImplCopyWithImpl(
    _$ExportOrdersEventImpl _value,
    $Res Function(_$ExportOrdersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? format = null,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? status = freezed,
    Object? cityId = freezed,
  }) {
    return _then(
      _$ExportOrdersEventImpl(
        format: null == format
            ? _value.format
            : format // ignore: cast_nullable_to_non_nullable
                  as String,
        fromDate: freezed == fromDate
            ? _value.fromDate
            : fromDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        toDate: freezed == toDate
            ? _value.toDate
            : toDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        cityId: freezed == cityId
            ? _value.cityId
            : cityId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$ExportOrdersEventImpl implements ExportOrdersEvent {
  const _$ExportOrdersEventImpl({
    this.format = 'csv',
    this.fromDate,
    this.toDate,
    this.status,
    this.cityId,
  });

  @override
  @JsonKey()
  final String format;
  @override
  final DateTime? fromDate;
  @override
  final DateTime? toDate;
  @override
  final String? status;
  @override
  final int? cityId;

  @override
  String toString() {
    return 'OrdersEvent.exportOrders(format: $format, fromDate: $fromDate, toDate: $toDate, status: $status, cityId: $cityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExportOrdersEventImpl &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, format, fromDate, toDate, status, cityId);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExportOrdersEventImplCopyWith<_$ExportOrdersEventImpl> get copyWith =>
      __$$ExportOrdersEventImplCopyWithImpl<_$ExportOrdersEventImpl>(
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return exportOrders(format, fromDate, toDate, status, cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return exportOrders?.call(format, fromDate, toDate, status, cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (exportOrders != null) {
      return exportOrders(format, fromDate, toDate, status, cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return exportOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return exportOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (exportOrders != null) {
      return exportOrders(this);
    }
    return orElse();
  }
}

abstract class ExportOrdersEvent implements OrdersEvent {
  const factory ExportOrdersEvent({
    final String format,
    final DateTime? fromDate,
    final DateTime? toDate,
    final String? status,
    final int? cityId,
  }) = _$ExportOrdersEventImpl;

  String get format;
  DateTime? get fromDate;
  DateTime? get toDate;
  String? get status;
  int? get cityId;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExportOrdersEventImplCopyWith<_$ExportOrdersEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadUnassignedOrdersEventImplCopyWith<$Res> {
  factory _$$LoadUnassignedOrdersEventImplCopyWith(
    _$LoadUnassignedOrdersEventImpl value,
    $Res Function(_$LoadUnassignedOrdersEventImpl) then,
  ) = __$$LoadUnassignedOrdersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, int? cityId});
}

/// @nodoc
class __$$LoadUnassignedOrdersEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$LoadUnassignedOrdersEventImpl>
    implements _$$LoadUnassignedOrdersEventImplCopyWith<$Res> {
  __$$LoadUnassignedOrdersEventImplCopyWithImpl(
    _$LoadUnassignedOrdersEventImpl _value,
    $Res Function(_$LoadUnassignedOrdersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? page = null, Object? cityId = freezed}) {
    return _then(
      _$LoadUnassignedOrdersEventImpl(
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        cityId: freezed == cityId
            ? _value.cityId
            : cityId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$LoadUnassignedOrdersEventImpl implements LoadUnassignedOrdersEvent {
  const _$LoadUnassignedOrdersEventImpl({this.page = 1, this.cityId});

  @override
  @JsonKey()
  final int page;
  @override
  final int? cityId;

  @override
  String toString() {
    return 'OrdersEvent.loadUnassignedOrders(page: $page, cityId: $cityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadUnassignedOrdersEventImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, cityId);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadUnassignedOrdersEventImplCopyWith<_$LoadUnassignedOrdersEventImpl>
  get copyWith =>
      __$$LoadUnassignedOrdersEventImplCopyWithImpl<
        _$LoadUnassignedOrdersEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return loadUnassignedOrders(page, cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return loadUnassignedOrders?.call(page, cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (loadUnassignedOrders != null) {
      return loadUnassignedOrders(page, cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return loadUnassignedOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return loadUnassignedOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (loadUnassignedOrders != null) {
      return loadUnassignedOrders(this);
    }
    return orElse();
  }
}

abstract class LoadUnassignedOrdersEvent implements OrdersEvent {
  const factory LoadUnassignedOrdersEvent({final int page, final int? cityId}) =
      _$LoadUnassignedOrdersEventImpl;

  int get page;
  int? get cityId;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadUnassignedOrdersEventImplCopyWith<_$LoadUnassignedOrdersEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadOverdueOrdersEventImplCopyWith<$Res> {
  factory _$$LoadOverdueOrdersEventImplCopyWith(
    _$LoadOverdueOrdersEventImpl value,
    $Res Function(_$LoadOverdueOrdersEventImpl) then,
  ) = __$$LoadOverdueOrdersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$LoadOverdueOrdersEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$LoadOverdueOrdersEventImpl>
    implements _$$LoadOverdueOrdersEventImplCopyWith<$Res> {
  __$$LoadOverdueOrdersEventImplCopyWithImpl(
    _$LoadOverdueOrdersEventImpl _value,
    $Res Function(_$LoadOverdueOrdersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? page = null}) {
    return _then(
      _$LoadOverdueOrdersEventImpl(
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$LoadOverdueOrdersEventImpl implements LoadOverdueOrdersEvent {
  const _$LoadOverdueOrdersEventImpl({this.page = 1});

  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'OrdersEvent.loadOverdueOrders(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadOverdueOrdersEventImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadOverdueOrdersEventImplCopyWith<_$LoadOverdueOrdersEventImpl>
  get copyWith =>
      __$$LoadOverdueOrdersEventImplCopyWithImpl<_$LoadOverdueOrdersEventImpl>(
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return loadOverdueOrders(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return loadOverdueOrders?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (loadOverdueOrders != null) {
      return loadOverdueOrders(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return loadOverdueOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return loadOverdueOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (loadOverdueOrders != null) {
      return loadOverdueOrders(this);
    }
    return orElse();
  }
}

abstract class LoadOverdueOrdersEvent implements OrdersEvent {
  const factory LoadOverdueOrdersEvent({final int page}) =
      _$LoadOverdueOrdersEventImpl;

  int get page;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadOverdueOrdersEventImplCopyWith<_$LoadOverdueOrdersEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadPriorityOrdersEventImplCopyWith<$Res> {
  factory _$$LoadPriorityOrdersEventImplCopyWith(
    _$LoadPriorityOrdersEventImpl value,
    $Res Function(_$LoadPriorityOrdersEventImpl) then,
  ) = __$$LoadPriorityOrdersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, double? minValue});
}

/// @nodoc
class __$$LoadPriorityOrdersEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$LoadPriorityOrdersEventImpl>
    implements _$$LoadPriorityOrdersEventImplCopyWith<$Res> {
  __$$LoadPriorityOrdersEventImplCopyWithImpl(
    _$LoadPriorityOrdersEventImpl _value,
    $Res Function(_$LoadPriorityOrdersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? page = null, Object? minValue = freezed}) {
    return _then(
      _$LoadPriorityOrdersEventImpl(
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        minValue: freezed == minValue
            ? _value.minValue
            : minValue // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc

class _$LoadPriorityOrdersEventImpl implements LoadPriorityOrdersEvent {
  const _$LoadPriorityOrdersEventImpl({this.page = 1, this.minValue});

  @override
  @JsonKey()
  final int page;
  @override
  final double? minValue;

  @override
  String toString() {
    return 'OrdersEvent.loadPriorityOrders(page: $page, minValue: $minValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadPriorityOrdersEventImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, minValue);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadPriorityOrdersEventImplCopyWith<_$LoadPriorityOrdersEventImpl>
  get copyWith =>
      __$$LoadPriorityOrdersEventImplCopyWithImpl<
        _$LoadPriorityOrdersEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return loadPriorityOrders(page, minValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return loadPriorityOrders?.call(page, minValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (loadPriorityOrders != null) {
      return loadPriorityOrders(page, minValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return loadPriorityOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return loadPriorityOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (loadPriorityOrders != null) {
      return loadPriorityOrders(this);
    }
    return orElse();
  }
}

abstract class LoadPriorityOrdersEvent implements OrdersEvent {
  const factory LoadPriorityOrdersEvent({
    final int page,
    final double? minValue,
  }) = _$LoadPriorityOrdersEventImpl;

  int get page;
  double? get minValue;

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadPriorityOrdersEventImplCopyWith<_$LoadPriorityOrdersEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadTodayOrdersEventImplCopyWith<$Res> {
  factory _$$LoadTodayOrdersEventImplCopyWith(
    _$LoadTodayOrdersEventImpl value,
    $Res Function(_$LoadTodayOrdersEventImpl) then,
  ) = __$$LoadTodayOrdersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadTodayOrdersEventImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$LoadTodayOrdersEventImpl>
    implements _$$LoadTodayOrdersEventImplCopyWith<$Res> {
  __$$LoadTodayOrdersEventImplCopyWithImpl(
    _$LoadTodayOrdersEventImpl _value,
    $Res Function(_$LoadTodayOrdersEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrdersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadTodayOrdersEventImpl implements LoadTodayOrdersEvent {
  const _$LoadTodayOrdersEventImpl();

  @override
  String toString() {
    return 'OrdersEvent.loadTodayOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTodayOrdersEventImpl);
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
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )
    loadOrders,
    required TResult Function() loadMoreOrders,
    required TResult Function() refreshOrders,
    required TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )
    applyFilter,
    required TResult Function() clearFilter,
    required TResult Function(String query) searchOrders,
    required TResult Function(int orderId, String newStatus, String? note)
    updateOrderStatus,
    required TResult Function(int orderId, int transporterId) assignTransporter,
    required TResult Function(int orderId, int newTransporterId, String? reason)
    changeTransporter,
    required TResult Function(int orderId, String reason) cancelOrder,
    required TResult Function(
      List<int> orderIds,
      String newStatus,
      String? note,
    )
    bulkUpdateStatus,
    required TResult Function(List<int> orderIds, int transporterId)
    bulkAssignTransporter,
    required TResult Function(int orderId) selectOrder,
    required TResult Function(int orderId) deselectOrder,
    required TResult Function() selectAllOrders,
    required TResult Function() clearSelection,
    required TResult Function(String sortBy, String sortOrder) sortOrders,
    required TResult Function(dynamic orderData) orderUpdatedFromSignalR,
    required TResult Function(dynamic orderData) newOrderFromSignalR,
    required TResult Function(OrderViewMode viewMode) changeViewMode,
    required TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )
    exportOrders,
    required TResult Function(int page, int? cityId) loadUnassignedOrders,
    required TResult Function(int page) loadOverdueOrders,
    required TResult Function(int page, double? minValue) loadPriorityOrders,
    required TResult Function() loadTodayOrders,
  }) {
    return loadTodayOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult? Function()? loadMoreOrders,
    TResult? Function()? refreshOrders,
    TResult? Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult? Function()? clearFilter,
    TResult? Function(String query)? searchOrders,
    TResult? Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult? Function(int orderId, int transporterId)? assignTransporter,
    TResult? Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult? Function(int orderId, String reason)? cancelOrder,
    TResult? Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult? Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult? Function(int orderId)? selectOrder,
    TResult? Function(int orderId)? deselectOrder,
    TResult? Function()? selectAllOrders,
    TResult? Function()? clearSelection,
    TResult? Function(String sortBy, String sortOrder)? sortOrders,
    TResult? Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult? Function(dynamic orderData)? newOrderFromSignalR,
    TResult? Function(OrderViewMode viewMode)? changeViewMode,
    TResult? Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult? Function(int page, int? cityId)? loadUnassignedOrders,
    TResult? Function(int page)? loadOverdueOrders,
    TResult? Function(int page, double? minValue)? loadPriorityOrders,
    TResult? Function()? loadTodayOrders,
  }) {
    return loadTodayOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      int page,
      int pageSize,
      String? status,
      String? search,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      bool isRefresh,
    )?
    loadOrders,
    TResult Function()? loadMoreOrders,
    TResult Function()? refreshOrders,
    TResult Function(
      String? status,
      int? cityId,
      DateTime? fromDate,
      DateTime? toDate,
      String? search,
    )?
    applyFilter,
    TResult Function()? clearFilter,
    TResult Function(String query)? searchOrders,
    TResult Function(int orderId, String newStatus, String? note)?
    updateOrderStatus,
    TResult Function(int orderId, int transporterId)? assignTransporter,
    TResult Function(int orderId, int newTransporterId, String? reason)?
    changeTransporter,
    TResult Function(int orderId, String reason)? cancelOrder,
    TResult Function(List<int> orderIds, String newStatus, String? note)?
    bulkUpdateStatus,
    TResult Function(List<int> orderIds, int transporterId)?
    bulkAssignTransporter,
    TResult Function(int orderId)? selectOrder,
    TResult Function(int orderId)? deselectOrder,
    TResult Function()? selectAllOrders,
    TResult Function()? clearSelection,
    TResult Function(String sortBy, String sortOrder)? sortOrders,
    TResult Function(dynamic orderData)? orderUpdatedFromSignalR,
    TResult Function(dynamic orderData)? newOrderFromSignalR,
    TResult Function(OrderViewMode viewMode)? changeViewMode,
    TResult Function(
      String format,
      DateTime? fromDate,
      DateTime? toDate,
      String? status,
      int? cityId,
    )?
    exportOrders,
    TResult Function(int page, int? cityId)? loadUnassignedOrders,
    TResult Function(int page)? loadOverdueOrders,
    TResult Function(int page, double? minValue)? loadPriorityOrders,
    TResult Function()? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (loadTodayOrders != null) {
      return loadTodayOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOrdersEvent value) loadOrders,
    required TResult Function(LoadMoreOrdersEvent value) loadMoreOrders,
    required TResult Function(RefreshOrdersEvent value) refreshOrders,
    required TResult Function(ApplyFilterEvent value) applyFilter,
    required TResult Function(ClearFilterEvent value) clearFilter,
    required TResult Function(SearchOrdersEvent value) searchOrders,
    required TResult Function(UpdateOrderStatusEvent value) updateOrderStatus,
    required TResult Function(AssignTransporterEvent value) assignTransporter,
    required TResult Function(ChangeTransporterEvent value) changeTransporter,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(BulkUpdateStatusEvent value) bulkUpdateStatus,
    required TResult Function(BulkAssignTransporterEvent value)
    bulkAssignTransporter,
    required TResult Function(SelectOrderEvent value) selectOrder,
    required TResult Function(DeselectOrderEvent value) deselectOrder,
    required TResult Function(SelectAllOrdersEvent value) selectAllOrders,
    required TResult Function(ClearSelectionEvent value) clearSelection,
    required TResult Function(SortOrdersEvent value) sortOrders,
    required TResult Function(OrderUpdatedFromSignalREvent value)
    orderUpdatedFromSignalR,
    required TResult Function(NewOrderFromSignalREvent value)
    newOrderFromSignalR,
    required TResult Function(ChangeViewModeEvent value) changeViewMode,
    required TResult Function(ExportOrdersEvent value) exportOrders,
    required TResult Function(LoadUnassignedOrdersEvent value)
    loadUnassignedOrders,
    required TResult Function(LoadOverdueOrdersEvent value) loadOverdueOrders,
    required TResult Function(LoadPriorityOrdersEvent value) loadPriorityOrders,
    required TResult Function(LoadTodayOrdersEvent value) loadTodayOrders,
  }) {
    return loadTodayOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOrdersEvent value)? loadOrders,
    TResult? Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult? Function(RefreshOrdersEvent value)? refreshOrders,
    TResult? Function(ApplyFilterEvent value)? applyFilter,
    TResult? Function(ClearFilterEvent value)? clearFilter,
    TResult? Function(SearchOrdersEvent value)? searchOrders,
    TResult? Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult? Function(AssignTransporterEvent value)? assignTransporter,
    TResult? Function(ChangeTransporterEvent value)? changeTransporter,
    TResult? Function(CancelOrderEvent value)? cancelOrder,
    TResult? Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult? Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult? Function(SelectOrderEvent value)? selectOrder,
    TResult? Function(DeselectOrderEvent value)? deselectOrder,
    TResult? Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult? Function(ClearSelectionEvent value)? clearSelection,
    TResult? Function(SortOrdersEvent value)? sortOrders,
    TResult? Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult? Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult? Function(ChangeViewModeEvent value)? changeViewMode,
    TResult? Function(ExportOrdersEvent value)? exportOrders,
    TResult? Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult? Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult? Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult? Function(LoadTodayOrdersEvent value)? loadTodayOrders,
  }) {
    return loadTodayOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOrdersEvent value)? loadOrders,
    TResult Function(LoadMoreOrdersEvent value)? loadMoreOrders,
    TResult Function(RefreshOrdersEvent value)? refreshOrders,
    TResult Function(ApplyFilterEvent value)? applyFilter,
    TResult Function(ClearFilterEvent value)? clearFilter,
    TResult Function(SearchOrdersEvent value)? searchOrders,
    TResult Function(UpdateOrderStatusEvent value)? updateOrderStatus,
    TResult Function(AssignTransporterEvent value)? assignTransporter,
    TResult Function(ChangeTransporterEvent value)? changeTransporter,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(BulkUpdateStatusEvent value)? bulkUpdateStatus,
    TResult Function(BulkAssignTransporterEvent value)? bulkAssignTransporter,
    TResult Function(SelectOrderEvent value)? selectOrder,
    TResult Function(DeselectOrderEvent value)? deselectOrder,
    TResult Function(SelectAllOrdersEvent value)? selectAllOrders,
    TResult Function(ClearSelectionEvent value)? clearSelection,
    TResult Function(SortOrdersEvent value)? sortOrders,
    TResult Function(OrderUpdatedFromSignalREvent value)?
    orderUpdatedFromSignalR,
    TResult Function(NewOrderFromSignalREvent value)? newOrderFromSignalR,
    TResult Function(ChangeViewModeEvent value)? changeViewMode,
    TResult Function(ExportOrdersEvent value)? exportOrders,
    TResult Function(LoadUnassignedOrdersEvent value)? loadUnassignedOrders,
    TResult Function(LoadOverdueOrdersEvent value)? loadOverdueOrders,
    TResult Function(LoadPriorityOrdersEvent value)? loadPriorityOrders,
    TResult Function(LoadTodayOrdersEvent value)? loadTodayOrders,
    required TResult orElse(),
  }) {
    if (loadTodayOrders != null) {
      return loadTodayOrders(this);
    }
    return orElse();
  }
}

abstract class LoadTodayOrdersEvent implements OrdersEvent {
  const factory LoadTodayOrdersEvent() = _$LoadTodayOrdersEventImpl;
}
