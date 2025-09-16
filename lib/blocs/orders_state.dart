import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';
import '../models/order.dart';
import '../services/orders_service.dart';
import 'orders_event.dart';

part 'orders_state.freezed.dart';

@freezed
sealed class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = OrdersInitial;

  const factory OrdersState.loading() = OrdersLoading;

  const factory OrdersState.loadingMore() = OrdersLoadingMore;

  const factory OrdersState.loaded({
    required List<Order> orders,
    @Default(false) bool hasReachedMax,
    @Default(1) int currentPage,
    @Default(15) int pageSize,
    @Default([]) List<int> selectedOrderIds,
    required OrdersFilter filter,
    required OrderViewMode viewMode,
    required OrderSortConfig sortConfig,
  }) = OrdersLoaded;

  const factory OrdersState.error({
    required String message,
    List<Order>? orders,
    OrdersFilter? filter,
  }) = OrdersError;

  const factory OrdersState.actionInProgress({
    required List<Order> orders,
    required OrdersFilter filter,
    required OrderViewMode viewMode,
    required OrderSortConfig sortConfig,
    required String actionType,
    @Default([]) List<int> selectedOrderIds,
    String? actionMessage,
  }) = OrdersActionInProgress;

  const factory OrdersState.actionSuccess({
    required List<Order> orders,
    required OrdersFilter filter,
    required OrderViewMode viewMode,
    required OrderSortConfig sortConfig,
    required String actionType,
    required String successMessage,
    @Default([]) List<int> selectedOrderIds,
  }) = OrdersActionSuccess;

  const factory OrdersState.actionError({
    required List<Order> orders,
    required OrdersFilter filter,
    required OrderViewMode viewMode,
    required OrderSortConfig sortConfig,
    required String actionType,
    required String errorMessage,
    @Default([]) List<int> selectedOrderIds,
  }) = OrdersActionError;

  const factory OrdersState.exporting({
    required List<Order> orders,
    required OrdersFilter filter,
    required String format,
  }) = OrdersExporting;

  const factory OrdersState.exportSuccess({
    required List<Order> orders,
    required OrdersFilter filter,
    required String downloadUrl,
    required String format,
  }) = OrdersExportSuccess;

  const factory OrdersState.exportError({
    required List<Order> orders,
    required OrdersFilter filter,
    required String errorMessage,
    required String format,
  }) = OrdersExportError;
}

@freezed
sealed class OrdersFilter with _$OrdersFilter {
  const factory OrdersFilter({
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
  }) = _OrdersFilter;

  const factory OrdersFilter.empty() = _OrdersFilterEmpty;
}

@freezed
sealed class OrderSortConfig with _$OrderSortConfig {
  const factory OrderSortConfig({
    @Default('createdAt') String sortBy,
    @Default('desc') String sortOrder,
  }) = _OrderSortConfig;
}

/// Extension methods for OrdersState
extension OrdersStateX on OrdersState {
  /// Get the current list of orders
  List<Order> get orders {
    return when(
      initial: () => [],
      loading: () => [],
      loadingMore: () => [],
      loaded: (orders, _, __, ___, ____, _____, ______, _______) => orders,
      error: (_, orders, __) => orders ?? [],
      actionInProgress: (orders, _, __, ___, ____, _____, ______) => orders,
      actionSuccess: (orders, _, __, ___, ____, _____, ______) => orders,
      actionError: (orders, _, __, ___, ____, _____, ______) => orders,
      exporting: (orders, _, __) => orders,
      exportSuccess: (orders, _, __, ___) => orders,
      exportError: (orders, _, __, ___) => orders,
    );
  }

  /// Get the current filter
  OrdersFilter get filter {
    return when(
      initial: () => const OrdersFilter.empty(),
      loading: () => const OrdersFilter.empty(),
      loadingMore: () => const OrdersFilter.empty(),
      loaded: (_, __, ___, ____, _____, filter, ______, _______) => filter,
      error: (_, __, filter) => filter ?? const OrdersFilter.empty(),
      actionInProgress: (_, filter, __, ___, ____, _____, ______) => filter,
      actionSuccess: (_, filter, __, ___, ____, _____, ______) => filter,
      actionError: (_, filter, __, ___, ____, _____, ______) => filter,
      exporting: (_, filter, __) => filter,
      exportSuccess: (_, filter, __, ___) => filter,
      exportError: (_, filter, __, ___) => filter,
    );
  }

  /// Get the current view mode
  OrderViewMode get viewMode {
    return when(
      initial: () => OrderViewMode.list,
      loading: () => OrderViewMode.list,
      loadingMore: () => OrderViewMode.list,
      loaded: (_, __, ___, ____, _____, ______, viewMode, _______) => viewMode,
      error: (_, __, ___) => OrderViewMode.list,
      actionInProgress: (_, __, viewMode, ___, ____, _____, ______) => viewMode,
      actionSuccess: (_, __, viewMode, ___, ____, _____, ______) => viewMode,
      actionError: (_, __, viewMode, ___, ____, _____, ______) => viewMode,
      exporting: (_, __, ___) => OrderViewMode.list,
      exportSuccess: (_, __, ___, ____) => OrderViewMode.list,
      exportError: (_, __, ___, ____) => OrderViewMode.list,
    );
  }

  /// Get selected order IDs
  List<int> get selectedOrderIds {
    return when(
      initial: () => [],
      loading: () => [],
      loadingMore: () => [],
      loaded: (_, __, ___, ____, selectedIds, _____, ______, _______) => selectedIds,
      error: (_, __, ___) => [],
      actionInProgress: (_, __, ___, ____, _____, selectedIds, ______) => selectedIds,
      actionSuccess: (_, __, ___, ____, _____, selectedIds, ______) => selectedIds,
      actionError: (_, __, ___, ____, _____, selectedIds, ______) => selectedIds,
      exporting: (_, __, ___) => [],
      exportSuccess: (_, __, ___, ____) => [],
      exportError: (_, __, ___, ____) => [],
    );
  }

  /// Check if currently loading
  bool get isLoading {
    return when(
      initial: () => false,
      loading: () => true,
      loadingMore: () => false,
      loaded: (_, __, ___, ____, _____, ______, _______, ________) => false,
      error: (_, __, ___) => false,
      actionInProgress: (_, __, ___, ____, _____, ______, _______) => false,
      actionSuccess: (_, __, ___, ____, _____, ______, _______) => false,
      actionError: (_, __, ___, ____, _____, ______, _______) => false,
      exporting: (_, __, ___) => false,
      exportSuccess: (_, __, ___, ____) => false,
      exportError: (_, __, ___, ____) => false,
    );
  }

  /// Check if currently loading more
  bool get isLoadingMore {
    return when(
      initial: () => false,
      loading: () => false,
      loadingMore: () => true,
      loaded: (_, __, ___, ____, _____, ______, _______, ________) => false,
      error: (_, __, ___) => false,
      actionInProgress: (_, __, ___, ____, _____, ______, _______) => false,
      actionSuccess: (_, __, ___, ____, _____, ______, _______) => false,
      actionError: (_, __, ___, ____, _____, ______, _______) => false,
      exporting: (_, __, ___) => false,
      exportSuccess: (_, __, ___, ____) => false,
      exportError: (_, __, ___, ____) => false,
    );
  }

  /// Check if has error
  bool get hasError {
    return when(
      initial: () => false,
      loading: () => false,
      loadingMore: () => false,
      loaded: (_, __, ___, ____, _____, ______, _______, ________) => false,
      error: (_, __, ___) => true,
      actionInProgress: (_, __, ___, ____, _____, ______, _______) => false,
      actionSuccess: (_, __, ___, ____, _____, ______, _______) => false,
      actionError: (_, __, ___, ____, _____, ______, _______) => true,
      exporting: (_, __, ___) => false,
      exportSuccess: (_, __, ___, ____) => false,
      exportError: (_, __, ___, ____) => true,
    );
  }

  /// Get error message
  String? get errorMessage {
    return when(
      initial: () => null,
      loading: () => null,
      loadingMore: () => null,
      loaded: (_, __, ___, ____, _____, ______, _______, ________) => null,
      error: (message, _, __) => message,
      actionInProgress: (_, __, ___, ____, _____, ______, _______) => null,
      actionSuccess: (_, __, ___, ____, _____, ______, _______) => null,
      actionError: (_, __, ___, ____, errorMessage, _____, ______) => errorMessage,
      exporting: (_, __, ___) => null,
      exportSuccess: (_, __, ___, ____) => null,
      exportError: (_, __, errorMessage, ___) => errorMessage,
    );
  }
}

/// Extension methods for OrdersFilter
extension OrdersFilterX on OrdersFilter {
  /// Check if filter is empty
  bool get isEmpty {
    return when(
      (status, cityId, fromDate, toDate, search, unassignedOnly, overdueOnly, priorityOnly, todayOnly, minValue) =>
          status == null &&
          cityId == null &&
          fromDate == null &&
          toDate == null &&
          (search == null || search!.isEmpty) &&
          !unassignedOnly &&
          !overdueOnly &&
          !priorityOnly &&
          !todayOnly &&
          minValue == null,
      empty: () => true,
    );
  }

  /// Get a summary of applied filters
  String get summary {
    final filters = <String>[];
    
    when(
      (status, cityId, fromDate, toDate, search, unassignedOnly, overdueOnly, priorityOnly, todayOnly, minValue) {
        if (status != null) filters.add('Statut: $status');
        if (cityId != null) filters.add('Ville: $cityId');
        if (search != null && search!.isNotEmpty) filters.add('Recherche: $search');
        if (unassignedOnly) filters.add('Non assignées');
        if (overdueOnly) filters.add('En retard');
        if (priorityOnly) filters.add('Prioritaires');
        if (todayOnly) filters.add("Aujourd'hui");
        if (fromDate != null && toDate != null) {
          filters.add('Période: ${fromDate!.day}/${fromDate!.month} - ${toDate!.day}/${toDate!.month}');
        }
      },
      empty: () {},
    );

    return filters.isEmpty ? 'Aucun filtre' : filters.join(', ');
  }
}