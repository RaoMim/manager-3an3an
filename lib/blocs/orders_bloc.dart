import 'dart:async';
import 'dart:developer' as developer;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../models/order.dart';
import '../services/orders_service.dart';
import '../services/signalr_service.dart';
import 'orders_event.dart';
import 'orders_state.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final OrdersService _ordersService;
  final SignalRService _signalRService;
  
  StreamSubscription<Order>? _orderUpdatedSubscription;
  StreamSubscription<Map<String, dynamic>>? _orderNotificationSubscription;

  OrdersBloc({
    required OrdersService ordersService,
    required SignalRService signalRService,
  })  : _ordersService = ordersService,
        _signalRService = signalRService,
        super(const OrdersState.initial()) {
    
    // Register event handlers
    on<LoadOrdersEvent>(_onLoadOrders);
    on<LoadMoreOrdersEvent>(_onLoadMoreOrders);
    on<RefreshOrdersEvent>(_onRefreshOrders);
    on<ApplyFilterEvent>(_onApplyFilter);
    on<ClearFilterEvent>(_onClearFilter);
    on<SearchOrdersEvent>(_onSearchOrders);
    on<UpdateOrderStatusEvent>(_onUpdateOrderStatus);
    on<AssignTransporterEvent>(_onAssignTransporter);
    on<ChangeTransporterEvent>(_onChangeTransporter);
    on<CancelOrderEvent>(_onCancelOrder);
    on<BulkUpdateStatusEvent>(_onBulkUpdateStatus);
    on<BulkAssignTransporterEvent>(_onBulkAssignTransporter);
    on<SelectOrderEvent>(_onSelectOrder);
    on<DeselectOrderEvent>(_onDeselectOrder);
    on<SelectAllOrdersEvent>(_onSelectAllOrders);
    on<ClearSelectionEvent>(_onClearSelection);
    on<SortOrdersEvent>(_onSortOrders);
    on<OrderUpdatedFromSignalREvent>(_onOrderUpdatedFromSignalR);
    on<NewOrderFromSignalREvent>(_onNewOrderFromSignalR);
    on<ChangeViewModeEvent>(_onChangeViewMode);
    on<ExportOrdersEvent>(_onExportOrders);
    on<LoadUnassignedOrdersEvent>(_onLoadUnassignedOrders);
    on<LoadOverdueOrdersEvent>(_onLoadOverdueOrders);
    on<LoadPriorityOrdersEvent>(_onLoadPriorityOrders);
    on<LoadTodayOrdersEvent>(_onLoadTodayOrders);

    // Subscribe to SignalR events
    _subscribeToSignalR();
  }

  void _subscribeToSignalR() {
    // Subscribe to order updates
    _orderUpdatedSubscription = _signalRService.orderUpdatedStream.listen((order) {
      add(OrdersEvent.orderUpdatedFromSignalR(orderData: order));
    });

    // Subscribe to order notifications (new orders, assignments, etc.)
    _orderNotificationSubscription = _signalRService.orderNotificationStream.listen((notification) {
      if (notification['type'] == 'new_order' && notification['order'] != null) {
        add(OrdersEvent.newOrderFromSignalR(orderData: notification['order']));
      }
    });

    // Ensure SignalR connection
    _signalRService.connect();
  }

  Future<void> _onLoadOrders(LoadOrdersEvent event, Emitter<OrdersState> emit) async {
    try {
      if (event.isRefresh || state is OrdersInitial) {
        emit(const OrdersState.loading());
      }

      final response = await _ordersService.getOrders(
        page: event.page,
        pageSize: event.pageSize,
        status: event.status,
        search: event.search,
        cityId: event.cityId,
        fromDate: event.fromDate,
        toDate: event.toDate,
      );

      if (response.isSuccess && response.data != null) {
        final orders = response.data!;
        final hasReachedMax = orders.length < event.pageSize;

        emit(OrdersState.loaded(
          orders: orders,
          hasReachedMax: hasReachedMax,
          currentPage: event.page,
          pageSize: event.pageSize,
          filter: OrdersFilter(
            status: event.status,
            search: event.search,
            cityId: event.cityId,
            fromDate: event.fromDate,
            toDate: event.toDate,
          ),
          viewMode: OrderViewMode.list,
          sortConfig: const OrderSortConfig(),
        ));
      } else {
        emit(OrdersState.error(
          message: response.errorMessage ?? 'Erreur lors du chargement des commandes',
        ));
      }
    } catch (e) {
      developer.log('Error loading orders: $e');
      emit(OrdersState.error(
        message: 'Erreur de connexion. Veuillez réessayer.',
      ));
    }
  }

  Future<void> _onLoadMoreOrders(LoadMoreOrdersEvent event, Emitter<OrdersState> emit) async {
    if (state is! OrdersLoaded) return;

    final loadedState = state as OrdersLoaded;
    if (loadedState.hasReachedMax) return;

    try {
      emit(const OrdersState.loadingMore());

      final nextPage = loadedState.currentPage + 1;
      final filter = loadedState.filter;

      String? status;
      String? search;
      int? cityId;
      DateTime? fromDate;
      DateTime? toDate;
      
      filter.when(
        (filterStatus, filterCityId, filterFromDate, filterToDate, filterSearch, unassignedOnly, overdueOnly, priorityOnly, todayOnly, minValue) {
          status = filterStatus;
          search = filterSearch;
          cityId = filterCityId;
          fromDate = filterFromDate;
          toDate = filterToDate;
        },
        empty: () {},
      );

      final response = await _ordersService.getOrders(
        page: nextPage,
        pageSize: loadedState.pageSize,
        status: status,
        search: search,
        cityId: cityId,
        fromDate: fromDate,
        toDate: toDate,
      );

      if (response.isSuccess && response.data != null) {
        final newOrders = response.data!;
        final allOrders = [...loadedState.orders, ...newOrders];
        final hasReachedMax = newOrders.length < loadedState.pageSize;

        emit(OrdersState.loaded(
          orders: allOrders,
          hasReachedMax: hasReachedMax,
          currentPage: nextPage,
          pageSize: loadedState.pageSize,
          selectedOrderIds: loadedState.selectedOrderIds,
          filter: loadedState.filter,
          viewMode: loadedState.viewMode,
          sortConfig: loadedState.sortConfig,
        ));
      } else {
        emit(OrdersState.error(
          message: response.errorMessage ?? 'Erreur lors du chargement des commandes',
          orders: loadedState.orders,
          filter: loadedState.filter,
        ));
      }
    } catch (e) {
      developer.log('Error loading more orders: $e');
      emit(OrdersState.error(
        message: 'Erreur de connexion. Veuillez réessayer.',
        orders: loadedState.orders,
        filter: loadedState.filter,
      ));
    }
  }

  Future<void> _onRefreshOrders(RefreshOrdersEvent event, Emitter<OrdersState> emit) async {
    if (state is OrdersLoaded) {
      final loadedState = state as OrdersLoaded;
      
      String? status;
      String? search;
      int? cityId;
      DateTime? fromDate;
      DateTime? toDate;
      
      loadedState.filter.when(
        (filterStatus, filterCityId, filterFromDate, filterToDate, filterSearch, unassignedOnly, overdueOnly, priorityOnly, todayOnly, minValue) {
          status = filterStatus;
          search = filterSearch;
          cityId = filterCityId;
          fromDate = filterFromDate;
          toDate = filterToDate;
        },
        empty: () {},
      );
      
      add(OrdersEvent.loadOrders(
        page: 1,
        pageSize: loadedState.pageSize,
        status: status,
        search: search,
        cityId: cityId,
        fromDate: fromDate,
        toDate: toDate,
        isRefresh: true,
      ));
    } else {
      add(const OrdersEvent.loadOrders(isRefresh: true));
    }
  }

  void _onApplyFilter(ApplyFilterEvent event, Emitter<OrdersState> emit) {
    add(OrdersEvent.loadOrders(
      page: 1,
      status: event.status,
      search: event.search,
      cityId: event.cityId,
      fromDate: event.fromDate,
      toDate: event.toDate,
    ));
  }

  void _onClearFilter(ClearFilterEvent event, Emitter<OrdersState> emit) {
    add(const OrdersEvent.loadOrders(page: 1));
  }

  void _onSearchOrders(SearchOrdersEvent event, Emitter<OrdersState> emit) {
    add(OrdersEvent.loadOrders(page: 1, search: event.query));
  }

  Future<void> _onUpdateOrderStatus(UpdateOrderStatusEvent event, Emitter<OrdersState> emit) async {
    await _performOrderAction(
      emit: emit,
      actionType: 'updateStatus',
      actionMessage: 'Mise à jour du statut...',
      action: () => _ordersService.updateOrderStatus(event.orderId, event.newStatus, note: event.note),
      successMessage: 'Statut mis à jour avec succès',
      onSuccess: (updatedOrder) {
        _updateOrderInState(emit, updatedOrder);
      },
    );
  }

  Future<void> _onAssignTransporter(AssignTransporterEvent event, Emitter<OrdersState> emit) async {
    await _performOrderAction(
      emit: emit,
      actionType: 'assignTransporter',
      actionMessage: 'Assignation du transporteur...',
      action: () => _ordersService.assignTransporter(event.orderId, event.transporterId),
      successMessage: 'Transporteur assigné avec succès',
      onSuccess: (updatedOrder) {
        _updateOrderInState(emit, updatedOrder);
      },
    );
  }

  Future<void> _onChangeTransporter(ChangeTransporterEvent event, Emitter<OrdersState> emit) async {
    await _performOrderAction(
      emit: emit,
      actionType: 'changeTransporter',
      actionMessage: 'Changement de transporteur...',
      action: () => _ordersService.changeTransporter(event.orderId, event.newTransporterId, reason: event.reason),
      successMessage: 'Transporteur changé avec succès',
      onSuccess: (updatedOrder) {
        _updateOrderInState(emit, updatedOrder);
      },
    );
  }

  Future<void> _onCancelOrder(CancelOrderEvent event, Emitter<OrdersState> emit) async {
    await _performOrderAction(
      emit: emit,
      actionType: 'cancelOrder',
      actionMessage: 'Annulation de la commande...',
      action: () => _ordersService.cancelOrder(event.orderId, event.reason),
      successMessage: 'Commande annulée avec succès',
      onSuccess: (updatedOrder) {
        _updateOrderInState(emit, updatedOrder);
      },
    );
  }

  Future<void> _onBulkUpdateStatus(BulkUpdateStatusEvent event, Emitter<OrdersState> emit) async {
    if (state is! OrdersLoaded) return;
    final loadedState = state as OrdersLoaded;

    try {
      emit(OrdersState.actionInProgress(
        orders: loadedState.orders,
        filter: loadedState.filter,
        viewMode: loadedState.viewMode,
        sortConfig: loadedState.sortConfig,
        actionType: 'bulkUpdateStatus',
        selectedOrderIds: loadedState.selectedOrderIds,
        actionMessage: 'Mise à jour groupée en cours...',
      ));

      final response = await _ordersService.bulkUpdateStatus(event.orderIds, event.newStatus, note: event.note);

      if (response.isSuccess && response.data != null) {
        final updatedOrders = response.data!;
        final updatedOrdersMap = {for (var order in updatedOrders) order.id: order};
        
        final newOrders = loadedState.orders.map((order) {
          return updatedOrdersMap[order.id] ?? order;
        }).toList();

        emit(OrdersState.actionSuccess(
          orders: newOrders,
          filter: loadedState.filter,
          viewMode: loadedState.viewMode,
          sortConfig: loadedState.sortConfig,
          actionType: 'bulkUpdateStatus',
          successMessage: 'Statuts mis à jour avec succès',
          selectedOrderIds: [], // Clear selection after bulk operation
        ));
      } else {
        emit(OrdersState.actionError(
          orders: loadedState.orders,
          filter: loadedState.filter,
          viewMode: loadedState.viewMode,
          sortConfig: loadedState.sortConfig,
          actionType: 'bulkUpdateStatus',
          errorMessage: response.errorMessage ?? 'Erreur lors de la mise à jour groupée',
          selectedOrderIds: loadedState.selectedOrderIds,
        ));
      }
    } catch (e) {
      developer.log('Error bulk updating status: $e');
      emit(OrdersState.actionError(
        orders: loadedState.orders,
        filter: loadedState.filter,
        viewMode: loadedState.viewMode,
        sortConfig: loadedState.sortConfig,
        actionType: 'bulkUpdateStatus',
        errorMessage: 'Erreur de connexion. Veuillez réessayer.',
        selectedOrderIds: loadedState.selectedOrderIds,
      ));
    }
  }

  Future<void> _onBulkAssignTransporter(BulkAssignTransporterEvent event, Emitter<OrdersState> emit) async {
    if (state is! OrdersLoaded) return;
    final loadedState = state as OrdersLoaded;

    try {
      emit(OrdersState.actionInProgress(
        orders: loadedState.orders,
        filter: loadedState.filter,
        viewMode: loadedState.viewMode,
        sortConfig: loadedState.sortConfig,
        actionType: 'bulkAssignTransporter',
        selectedOrderIds: loadedState.selectedOrderIds,
        actionMessage: 'Assignation groupée en cours...',
      ));

      final response = await _ordersService.bulkAssignTransporter(event.orderIds, event.transporterId);

      if (response.isSuccess && response.data != null) {
        final updatedOrders = response.data!;
        final updatedOrdersMap = {for (var order in updatedOrders) order.id: order};
        
        final newOrders = loadedState.orders.map((order) {
          return updatedOrdersMap[order.id] ?? order;
        }).toList();

        emit(OrdersState.actionSuccess(
          orders: newOrders,
          filter: loadedState.filter,
          viewMode: loadedState.viewMode,
          sortConfig: loadedState.sortConfig,
          actionType: 'bulkAssignTransporter',
          successMessage: 'Transporteur assigné avec succès',
          selectedOrderIds: [], // Clear selection after bulk operation
        ));
      } else {
        emit(OrdersState.actionError(
          orders: loadedState.orders,
          filter: loadedState.filter,
          viewMode: loadedState.viewMode,
          sortConfig: loadedState.sortConfig,
          actionType: 'bulkAssignTransporter',
          errorMessage: response.errorMessage ?? 'Erreur lors de l\'assignation groupée',
          selectedOrderIds: loadedState.selectedOrderIds,
        ));
      }
    } catch (e) {
      developer.log('Error bulk assigning transporter: $e');
      emit(OrdersState.actionError(
        orders: loadedState.orders,
        filter: loadedState.filter,
        viewMode: loadedState.viewMode,
        sortConfig: loadedState.sortConfig,
        actionType: 'bulkAssignTransporter',
        errorMessage: 'Erreur de connexion. Veuillez réessayer.',
        selectedOrderIds: loadedState.selectedOrderIds,
      ));
    }
  }

  void _onSelectOrder(SelectOrderEvent event, Emitter<OrdersState> emit) {
    if (state is! OrdersLoaded) return;
    final loadedState = state as OrdersLoaded;

    final selectedIds = List<int>.from(loadedState.selectedOrderIds);
    if (!selectedIds.contains(event.orderId)) {
      selectedIds.add(event.orderId);
    }

    emit(loadedState.copyWith(selectedOrderIds: selectedIds));
  }

  void _onDeselectOrder(DeselectOrderEvent event, Emitter<OrdersState> emit) {
    if (state is! OrdersLoaded) return;
    final loadedState = state as OrdersLoaded;

    final selectedIds = List<int>.from(loadedState.selectedOrderIds);
    selectedIds.remove(event.orderId);

    emit(loadedState.copyWith(selectedOrderIds: selectedIds));
  }

  void _onSelectAllOrders(SelectAllOrdersEvent event, Emitter<OrdersState> emit) {
    if (state is! OrdersLoaded) return;
    final loadedState = state as OrdersLoaded;

    final allOrderIds = loadedState.orders.map((order) => order.id).toList();
    emit(loadedState.copyWith(selectedOrderIds: allOrderIds));
  }

  void _onClearSelection(ClearSelectionEvent event, Emitter<OrdersState> emit) {
    if (state is! OrdersLoaded) return;
    final loadedState = state as OrdersLoaded;

    emit(loadedState.copyWith(selectedOrderIds: []));
  }

  void _onSortOrders(SortOrdersEvent event, Emitter<OrdersState> emit) {
    if (state is! OrdersLoaded) return;
    final loadedState = state as OrdersLoaded;

    final newSortConfig = OrderSortConfig(
      sortBy: event.sortBy,
      sortOrder: event.sortOrder,
    );

    // Sort the current orders
    final sortedOrders = _sortOrders(loadedState.orders, newSortConfig);

    emit(loadedState.copyWith(
      orders: sortedOrders,
      sortConfig: newSortConfig,
    ));
  }

  void _onOrderUpdatedFromSignalR(OrderUpdatedFromSignalREvent event, Emitter<OrdersState> emit) {
    if (state is! OrdersLoaded) return;
    final loadedState = state as OrdersLoaded;

    try {
      final updatedOrder = event.orderData is Order 
          ? event.orderData as Order
          : Order.fromJson(event.orderData as Map<String, dynamic>);
      
      _updateOrderInState(emit, updatedOrder);
    } catch (e) {
      developer.log('Error processing SignalR order update: $e');
    }
  }

  void _onNewOrderFromSignalR(NewOrderFromSignalREvent event, Emitter<OrdersState> emit) {
    if (state is! OrdersLoaded) return;
    final loadedState = state as OrdersLoaded;

    try {
      final newOrder = event.orderData is Order 
          ? event.orderData as Order
          : Order.fromJson(event.orderData as Map<String, dynamic>);
      
      // Add the new order to the beginning of the list
      final updatedOrders = [newOrder, ...loadedState.orders];
      
      emit(loadedState.copyWith(orders: updatedOrders));
    } catch (e) {
      developer.log('Error processing new order from SignalR: $e');
    }
  }

  void _onChangeViewMode(ChangeViewModeEvent event, Emitter<OrdersState> emit) {
    if (state is! OrdersLoaded) return;
    final loadedState = state as OrdersLoaded;

    emit(loadedState.copyWith(viewMode: event.viewMode));
  }

  Future<void> _onExportOrders(ExportOrdersEvent event, Emitter<OrdersState> emit) async {
    if (state is! OrdersLoaded) return;
    final loadedState = state as OrdersLoaded;

    try {
      emit(OrdersState.exporting(
        orders: loadedState.orders,
        filter: loadedState.filter,
        format: event.format,
      ));

      final response = await _ordersService.exportOrders(
        format: event.format,
        fromDate: event.fromDate,
        toDate: event.toDate,
        status: event.status,
        cityId: event.cityId,
      );

      if (response.isSuccess && response.data != null) {
        emit(OrdersState.exportSuccess(
          orders: loadedState.orders,
          filter: loadedState.filter,
          downloadUrl: response.data!,
          format: event.format,
        ));
      } else {
        emit(OrdersState.exportError(
          orders: loadedState.orders,
          filter: loadedState.filter,
          errorMessage: response.errorMessage ?? 'Erreur lors de l\'export',
          format: event.format,
        ));
      }
    } catch (e) {
      developer.log('Error exporting orders: $e');
      emit(OrdersState.exportError(
        orders: loadedState.orders,
        filter: loadedState.filter,
        errorMessage: 'Erreur de connexion. Veuillez réessayer.',
        format: event.format,
      ));
    }
  }

  Future<void> _onLoadUnassignedOrders(LoadUnassignedOrdersEvent event, Emitter<OrdersState> emit) async {
    try {
      emit(const OrdersState.loading());

      final response = await _ordersService.getUnassignedOrders(
        page: event.page,
        cityId: event.cityId,
      );

      if (response.isSuccess && response.data != null) {
        final orders = response.data!;
        
        emit(OrdersState.loaded(
          orders: orders,
          hasReachedMax: orders.length < 15,
          currentPage: event.page,
          filter: OrdersFilter(
            cityId: event.cityId,
            unassignedOnly: true,
          ),
          viewMode: OrderViewMode.list,
          sortConfig: const OrderSortConfig(),
        ));
      } else {
        emit(OrdersState.error(
          message: response.errorMessage ?? 'Erreur lors du chargement des commandes non assignées',
        ));
      }
    } catch (e) {
      developer.log('Error loading unassigned orders: $e');
      emit(OrdersState.error(
        message: 'Erreur de connexion. Veuillez réessayer.',
      ));
    }
  }

  Future<void> _onLoadOverdueOrders(LoadOverdueOrdersEvent event, Emitter<OrdersState> emit) async {
    try {
      emit(const OrdersState.loading());

      final response = await _ordersService.getOverdueOrders(page: event.page);

      if (response.isSuccess && response.data != null) {
        final orders = response.data!;
        
        emit(OrdersState.loaded(
          orders: orders,
          hasReachedMax: orders.length < 15,
          currentPage: event.page,
          filter: const OrdersFilter(overdueOnly: true),
          viewMode: OrderViewMode.list,
          sortConfig: const OrderSortConfig(),
        ));
      } else {
        emit(OrdersState.error(
          message: response.errorMessage ?? 'Erreur lors du chargement des commandes en retard',
        ));
      }
    } catch (e) {
      developer.log('Error loading overdue orders: $e');
      emit(OrdersState.error(
        message: 'Erreur de connexion. Veuillez réessayer.',
      ));
    }
  }

  Future<void> _onLoadPriorityOrders(LoadPriorityOrdersEvent event, Emitter<OrdersState> emit) async {
    try {
      emit(const OrdersState.loading());

      final response = await _ordersService.getPriorityOrders(
        page: event.page,
        minValue: event.minValue,
      );

      if (response.isSuccess && response.data != null) {
        final orders = response.data!;
        
        emit(OrdersState.loaded(
          orders: orders,
          hasReachedMax: orders.length < 15,
          currentPage: event.page,
          filter: OrdersFilter(
            priorityOnly: true,
            minValue: event.minValue,
          ),
          viewMode: OrderViewMode.list,
          sortConfig: const OrderSortConfig(),
        ));
      } else {
        emit(OrdersState.error(
          message: response.errorMessage ?? 'Erreur lors du chargement des commandes prioritaires',
        ));
      }
    } catch (e) {
      developer.log('Error loading priority orders: $e');
      emit(OrdersState.error(
        message: 'Erreur de connexion. Veuillez réessayer.',
      ));
    }
  }

  Future<void> _onLoadTodayOrders(LoadTodayOrdersEvent event, Emitter<OrdersState> emit) async {
    try {
      emit(const OrdersState.loading());

      final response = await _ordersService.getTodaysOrders();

      if (response.isSuccess && response.data != null) {
        final orders = response.data!;
        
        emit(OrdersState.loaded(
          orders: orders,
          hasReachedMax: true, // Today's orders are finite
          currentPage: 1,
          filter: const OrdersFilter(todayOnly: true),
          viewMode: OrderViewMode.list,
          sortConfig: const OrderSortConfig(),
        ));
      } else {
        emit(OrdersState.error(
          message: response.errorMessage ?? 'Erreur lors du chargement des commandes du jour',
        ));
      }
    } catch (e) {
      developer.log('Error loading today orders: $e');
      emit(OrdersState.error(
        message: 'Erreur de connexion. Veuillez réessayer.',
      ));
    }
  }

  /// Helper method to perform order actions with consistent error handling
  Future<void> _performOrderAction({
    required Emitter<OrdersState> emit,
    required String actionType,
    required String actionMessage,
    required Future<dynamic> Function() action,
    required String successMessage,
    required Function(Order) onSuccess,
  }) async {
    if (state is! OrdersLoaded) return;
    final loadedState = state as OrdersLoaded;

    try {
      emit(OrdersState.actionInProgress(
        orders: loadedState.orders,
        filter: loadedState.filter,
        viewMode: loadedState.viewMode,
        sortConfig: loadedState.sortConfig,
        actionType: actionType,
        selectedOrderIds: loadedState.selectedOrderIds,
        actionMessage: actionMessage,
      ));

      final response = await action();

      if (response.isSuccess && response.data != null) {
        onSuccess(response.data as Order);
        
        emit(OrdersState.actionSuccess(
          orders: loadedState.orders,
          filter: loadedState.filter,
          viewMode: loadedState.viewMode,
          sortConfig: loadedState.sortConfig,
          actionType: actionType,
          successMessage: successMessage,
          selectedOrderIds: loadedState.selectedOrderIds,
        ));
      } else {
        emit(OrdersState.actionError(
          orders: loadedState.orders,
          filter: loadedState.filter,
          viewMode: loadedState.viewMode,
          sortConfig: loadedState.sortConfig,
          actionType: actionType,
          errorMessage: response.errorMessage ?? 'Erreur lors de l\'opération',
          selectedOrderIds: loadedState.selectedOrderIds,
        ));
      }
    } catch (e) {
      developer.log('Error performing action $actionType: $e');
      emit(OrdersState.actionError(
        orders: loadedState.orders,
        filter: loadedState.filter,
        viewMode: loadedState.viewMode,
        sortConfig: loadedState.sortConfig,
        actionType: actionType,
        errorMessage: 'Erreur de connexion. Veuillez réessayer.',
        selectedOrderIds: loadedState.selectedOrderIds,
      ));
    }
  }

  /// Update a single order in the current state
  void _updateOrderInState(Emitter<OrdersState> emit, Order updatedOrder) {
    if (state is! OrdersLoaded) return;
    final loadedState = state as OrdersLoaded;

    final updatedOrders = loadedState.orders.map((order) {
      return order.id == updatedOrder.id ? updatedOrder : order;
    }).toList();

    emit(loadedState.copyWith(orders: updatedOrders));
  }

  /// Sort orders based on configuration
  List<Order> _sortOrders(List<Order> orders, OrderSortConfig sortConfig) {
    final sortedOrders = List<Order>.from(orders);

    sortedOrders.sort((a, b) {
      int comparison = 0;

      switch (sortConfig.sortBy) {
        case 'createdAt':
          comparison = a.createdAt.compareTo(b.createdAt);
          break;
        case 'totalPrice':
          comparison = a.totalPrice.compareTo(b.totalPrice);
          break;
        case 'status':
          comparison = a.status.index.compareTo(b.status.index);
          break;
        case 'clientName':
          comparison = a.clientName.compareTo(b.clientName);
          break;
        case 'shopName':
          comparison = a.shopName.compareTo(b.shopName);
          break;
        default:
          comparison = a.createdAt.compareTo(b.createdAt);
      }

      return sortConfig.sortOrder == 'desc' ? -comparison : comparison;
    });

    return sortedOrders;
  }

  @override
  Future<void> close() {
    _orderUpdatedSubscription?.cancel();
    _orderNotificationSubscription?.cancel();
    return super.close();
  }
}