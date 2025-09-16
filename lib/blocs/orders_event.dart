import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';

part 'orders_event.freezed.dart';

@freezed
sealed class OrdersEvent with _$OrdersEvent {
  // Load events
  const factory OrdersEvent.loadOrders({
    @Default(1) int page,
    @Default(15) int pageSize,
    String? status,
    String? search,
    int? cityId,
    DateTime? fromDate,
    DateTime? toDate,
    @Default(false) bool isRefresh,
  }) = LoadOrdersEvent;

  const factory OrdersEvent.loadMoreOrders() = LoadMoreOrdersEvent;

  const factory OrdersEvent.refreshOrders() = RefreshOrdersEvent;

  const factory OrdersEvent.getOrderById({required int orderId}) = GetOrderByIdEvent;

  const factory OrdersEvent.deleteOrder({required int orderId}) = DeleteOrderEvent;

  // Filter events
  const factory OrdersEvent.applyFilter({
    String? status,
    int? cityId,
    DateTime? fromDate,
    DateTime? toDate,
    String? search,
    @Default(false) bool unassignedOnly,
    @Default(false) bool overdueOnly,
    @Default(false) bool priorityOnly,
    @Default(false) bool todayOnly,
    double? minValue,
  }) = ApplyFilterEvent;

  const factory OrdersEvent.clearFilter() = ClearFilterEvent;

  const factory OrdersEvent.searchOrders({required String query}) = SearchOrdersEvent;

  // Order management events
  const factory OrdersEvent.updateOrderStatus({
    required int orderId,
    required String newStatus,
    String? note,
  }) = UpdateOrderStatusEvent;

  const factory OrdersEvent.assignTransporter({
    required int orderId,
    required int transporterId,
  }) = AssignTransporterEvent;

  const factory OrdersEvent.assignOrder({
    required int orderId,
    required int transporterId,
  }) = AssignOrderEvent;

  const factory OrdersEvent.autoAssignOrder({
    required int orderId,
  }) = AutoAssignOrderEvent;

  const factory OrdersEvent.changeTransporter({
    required int orderId,
    required int newTransporterId,
    String? reason,
  }) = ChangeTransporterEvent;

  const factory OrdersEvent.cancelOrder({
    required int orderId,
    required String reason,
  }) = CancelOrderEvent;

  // Bulk operations events
  const factory OrdersEvent.bulkUpdateStatus({
    required List<int> orderIds,
    required String newStatus,
    String? note,
  }) = BulkUpdateStatusEvent;

  const factory OrdersEvent.bulkAssignTransporter({
    required List<int> orderIds,
    required int transporterId,
  }) = BulkAssignTransporterEvent;

  // Selection events
  const factory OrdersEvent.selectOrder({required int orderId}) = SelectOrderEvent;
  const factory OrdersEvent.deselectOrder({required int orderId}) = DeselectOrderEvent;
  const factory OrdersEvent.selectAllOrders() = SelectAllOrdersEvent;
  const factory OrdersEvent.clearSelection() = ClearSelectionEvent;

  // Sort events
  const factory OrdersEvent.sortOrders({
    required String sortBy,
    required String sortOrder,
  }) = SortOrdersEvent;

  // Real-time events
  const factory OrdersEvent.orderUpdatedFromSignalR({required dynamic orderData}) = OrderUpdatedFromSignalREvent;
  const factory OrdersEvent.newOrderFromSignalR({required dynamic orderData}) = NewOrderFromSignalREvent;

  // View mode events
  const factory OrdersEvent.changeViewMode({required OrderViewMode viewMode}) = ChangeViewModeEvent;

  // Export events
  const factory OrdersEvent.exportOrders({
    @Default('csv') String format,
    DateTime? fromDate,
    DateTime? toDate,
    String? status,
    int? cityId,
  }) = ExportOrdersEvent;

  // Special list events
  const factory OrdersEvent.loadUnassignedOrders({
    @Default(1) int page,
    int? cityId,
  }) = LoadUnassignedOrdersEvent;

  const factory OrdersEvent.loadOverdueOrders({
    @Default(1) int page,
  }) = LoadOverdueOrdersEvent;

  const factory OrdersEvent.loadPriorityOrders({
    @Default(1) int page,
    double? minValue,
  }) = LoadPriorityOrdersEvent;

  const factory OrdersEvent.loadTodayOrders() = LoadTodayOrdersEvent;
}

enum OrderViewMode {
  list,
  grid,
  compact,
}

/// Base class for orders events (for compatibility if needed)
abstract class OrdersEventBase extends Equatable {
  const OrdersEventBase();

  @override
  List<Object?> get props => [];
}