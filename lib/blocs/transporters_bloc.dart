import 'dart:async';
import 'dart:developer' as developer;
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/transporter.dart';
import '../services/transporter_service.dart';
import '../services/signalr_service.dart';
import 'transporters_event.dart';
import 'transporters_state.dart';

class TransportersBloc extends Bloc<TransportersEvent, TransportersState> {
  final TransporterService _transporterService;
  final SignalRService _signalRService;
  
  StreamSubscription<Map<String, dynamic>>? _transporterStatusSubscription;

  TransportersBloc({
    required TransporterService transporterService,
    required SignalRService signalRService,
  })  : _transporterService = transporterService,
        _signalRService = signalRService,
        super(const TransportersState.initial()) {
    
    // Register event handlers
    on<LoadTransportersEvent>(_onLoadTransporters);
    on<LoadMoreTransportersEvent>(_onLoadMoreTransporters);
    on<RefreshTransportersEvent>(_onRefreshTransporters);
    on<ApplyTransporterFilterEvent>(_onApplyFilter);
    on<ClearTransporterFilterEvent>(_onClearFilter);
    on<SearchTransportersEvent>(_onSearchTransporters);
    on<UpdateTransporterStatusEvent>(_onUpdateTransporterStatus);
    on<BlockTransporterEvent>(_onBlockTransporter);
    on<UpdateTransporterLocationEvent>(_onUpdateTransporterLocation);
    on<SelectTransporterEvent>(_onSelectTransporter);
    on<DeselectTransporterEvent>(_onDeselectTransporter);
    on<SelectAllTransportersEvent>(_onSelectAllTransporters);
    on<ClearTransporterSelectionEvent>(_onClearSelection);
    on<SortTransportersEvent>(_onSortTransporters);
    on<TransporterStatusUpdatedFromSignalREvent>(_onTransporterStatusUpdatedFromSignalR);
    on<ChangeTransporterViewModeEvent>(_onChangeViewMode);
    on<LoadAvailableTransportersEvent>(_onLoadAvailableTransporters);
    on<LoadOnlineTransportersEvent>(_onLoadOnlineTransporters);
    on<LoadBlockedTransportersEvent>(_onLoadBlockedTransporters);
    on<LoadTopRatedTransportersEvent>(_onLoadTopRatedTransporters);

    // Subscribe to SignalR events
    _subscribeToSignalR();
  }

  void _subscribeToSignalR() {
    // Subscribe to transporter status updates
    _transporterStatusSubscription = _signalRService.transporterStatusStream.listen((statusData) {
      add(TransportersEvent.transporterStatusUpdatedFromSignalR(statusData: statusData));
    });

    // Ensure SignalR connection
    _signalRService.connect();
  }

  Future<void> _onLoadTransporters(LoadTransportersEvent event, Emitter<TransportersState> emit) async {
    try {
      if (event.isRefresh || state is TransportersInitial) {
        emit(const TransportersState.loading());
      }

      final response = await _transporterService.getTransporters(
        page: event.page,
        pageSize: event.pageSize,
        status: event.status,
        cityId: event.cityId,
        isBlocked: event.isBlocked,
        availableOnly: event.availableOnly,
        search: event.search,
        minRating: event.minRating,
        minDeliveries: event.minDeliveries,
      );

      if (response.isSuccess && response.data != null) {
        final transporters = response.data!;
        final hasReachedMax = transporters.length < event.pageSize;

        emit(TransportersState.loaded(
          transporters: transporters,
          hasReachedMax: hasReachedMax,
          currentPage: event.page,
          pageSize: event.pageSize,
          filter: TransportersFilter(
            status: event.status,
            cityId: event.cityId,
            isBlocked: event.isBlocked,
            availableOnly: event.availableOnly,
            search: event.search,
            minRating: event.minRating,
            minDeliveries: event.minDeliveries,
          ),
          viewMode: TransporterViewMode.list,
          sortConfig: const TransporterSortConfig(),
        ));
      } else {
        emit(TransportersState.error(
          message: response.errorMessage ?? 'Erreur lors du chargement des transporteurs',
        ));
      }
    } catch (e) {
      developer.log('Error loading transporters: $e');
      emit(TransportersState.error(
        message: 'Erreur de connexion. Veuillez réessayer.',
      ));
    }
  }

  Future<void> _onLoadMoreTransporters(LoadMoreTransportersEvent event, Emitter<TransportersState> emit) async {
    if (state is! TransportersLoaded) return;

    final loadedState = state as TransportersLoaded;
    if (loadedState.hasReachedMax) return;

    try {
      emit(const TransportersState.loadingMore());

      final nextPage = loadedState.currentPage + 1;
      final filter = loadedState.filter;

      String? status;
      int? cityId;
      bool? isBlocked;
      bool? availableOnly;
      String? search;
      double? minRating;
      int? minDeliveries;
      
      filter.when(
        (filterStatus, filterCityId, filterIsBlocked, filterAvailableOnly, filterSearch, filterMinRating, filterMinDeliveries, filterOnlineOnly, filterTopRatedOnly, filterLatitude, filterLongitude, filterMaxDistanceKm) {
          status = filterStatus;
          cityId = filterCityId;
          isBlocked = filterIsBlocked;
          availableOnly = filterAvailableOnly;
          search = filterSearch;
          minRating = filterMinRating;
          minDeliveries = filterMinDeliveries;
        },
        empty: () {},
      );

      final response = await _transporterService.getTransporters(
        page: nextPage,
        pageSize: loadedState.pageSize,
        status: status,
        cityId: cityId,
        isBlocked: isBlocked,
        availableOnly: availableOnly,
        search: search,
        minRating: minRating,
        minDeliveries: minDeliveries,
      );

      if (response.isSuccess && response.data != null) {
        final newTransporters = response.data!;
        final allTransporters = [...loadedState.transporters, ...newTransporters];
        final hasReachedMax = newTransporters.length < loadedState.pageSize;

        emit(TransportersState.loaded(
          transporters: allTransporters,
          hasReachedMax: hasReachedMax,
          currentPage: nextPage,
          pageSize: loadedState.pageSize,
          selectedTransporterIds: loadedState.selectedTransporterIds,
          filter: loadedState.filter,
          viewMode: loadedState.viewMode,
          sortConfig: loadedState.sortConfig,
        ));
      } else {
        emit(TransportersState.error(
          message: response.errorMessage ?? 'Erreur lors du chargement des transporteurs',
          transporters: loadedState.transporters,
          filter: loadedState.filter,
        ));
      }
    } catch (e) {
      developer.log('Error loading more transporters: $e');
      emit(TransportersState.error(
        message: 'Erreur de connexion. Veuillez réessayer.',
        transporters: loadedState.transporters,
        filter: loadedState.filter,
      ));
    }
  }

  Future<void> _onRefreshTransporters(RefreshTransportersEvent event, Emitter<TransportersState> emit) async {
    if (state is TransportersLoaded) {
      final loadedState = state as TransportersLoaded;
      String? status;
      int? cityId;
      bool? isBlocked;
      bool? availableOnly;
      String? search;
      double? minRating;
      int? minDeliveries;
      
      loadedState.filter.when(
        (filterStatus, filterCityId, filterIsBlocked, filterAvailableOnly, filterSearch, filterMinRating, filterMinDeliveries, filterOnlineOnly, filterTopRatedOnly, filterLatitude, filterLongitude, filterMaxDistanceKm) {
          status = filterStatus;
          cityId = filterCityId;
          isBlocked = filterIsBlocked;
          availableOnly = filterAvailableOnly;
          search = filterSearch;
          minRating = filterMinRating;
          minDeliveries = filterMinDeliveries;
        },
        empty: () {},
      );
      
      add(TransportersEvent.loadTransporters(
        page: 1,
        pageSize: loadedState.pageSize,
        status: status,
        cityId: cityId,
        isBlocked: isBlocked,
        availableOnly: availableOnly,
        search: search,
        minRating: minRating,
        minDeliveries: minDeliveries,
        isRefresh: true,
      ));
    } else {
      add(const TransportersEvent.loadTransporters(isRefresh: true));
    }
  }

  void _onApplyFilter(ApplyTransporterFilterEvent event, Emitter<TransportersState> emit) {
    add(TransportersEvent.loadTransporters(
      page: 1,
      status: event.status,
      cityId: event.cityId,
      isBlocked: event.isBlocked,
      availableOnly: event.availableOnly,
      search: event.search,
      minRating: event.minRating,
      minDeliveries: event.minDeliveries,
    ));
  }

  void _onClearFilter(ClearTransporterFilterEvent event, Emitter<TransportersState> emit) {
    add(const TransportersEvent.loadTransporters(page: 1));
  }

  void _onSearchTransporters(SearchTransportersEvent event, Emitter<TransportersState> emit) {
    add(TransportersEvent.loadTransporters(page: 1, search: event.query));
  }

  Future<void> _onUpdateTransporterStatus(UpdateTransporterStatusEvent event, Emitter<TransportersState> emit) async {
    await _performTransporterAction(
      emit: emit,
      actionType: 'updateStatus',
      actionMessage: 'Mise à jour du statut...',
      action: () => _transporterService.updateTransporterStatus(event.transporterId, event.status),
      successMessage: 'Statut mis à jour avec succès',
      onSuccess: (updatedTransporter) {
        _updateTransporterInState(emit, updatedTransporter);
      },
    );
  }

  Future<void> _onBlockTransporter(BlockTransporterEvent event, Emitter<TransportersState> emit) async {
    await _performTransporterAction(
      emit: emit,
      actionType: 'blockTransporter',
      actionMessage: event.blocked ? 'Blocage du transporteur...' : 'Déblocage du transporteur...',
      action: () => _transporterService.updateTransporterBlockStatus(event.transporterId, event.blocked, reason: event.reason),
      successMessage: event.blocked ? 'Transporteur bloqué avec succès' : 'Transporteur débloqué avec succès',
      onSuccess: (updatedTransporter) {
        _updateTransporterInState(emit, updatedTransporter);
      },
    );
  }

  Future<void> _onUpdateTransporterLocation(UpdateTransporterLocationEvent event, Emitter<TransportersState> emit) async {
    if (state is! TransportersLoaded) return;

    try {
      final response = await _transporterService.updateTransporterLocation(
        event.transporterId,
        event.latitude,
        event.longitude,
      );

      if (response.isSuccess) {
        // Update transporter location in the current state
        final loadedState = state as TransportersLoaded;
        final updatedTransporters = loadedState.transporters.map((transporter) {
          if (transporter.id == event.transporterId) {
            return transporter.copyWith(
              latitude: event.latitude,
              longitude: event.longitude,
            );
          }
          return transporter;
        }).toList();

        emit(loadedState.copyWith(transporters: updatedTransporters));
      }
    } catch (e) {
      developer.log('Error updating transporter location: $e');
    }
  }

  void _onSelectTransporter(SelectTransporterEvent event, Emitter<TransportersState> emit) {
    if (state is! TransportersLoaded) return;
    final loadedState = state as TransportersLoaded;

    final selectedIds = List<int>.from(loadedState.selectedTransporterIds);
    if (!selectedIds.contains(event.transporterId)) {
      selectedIds.add(event.transporterId);
    }

    emit(loadedState.copyWith(selectedTransporterIds: selectedIds));
  }

  void _onDeselectTransporter(DeselectTransporterEvent event, Emitter<TransportersState> emit) {
    if (state is! TransportersLoaded) return;
    final loadedState = state as TransportersLoaded;

    final selectedIds = List<int>.from(loadedState.selectedTransporterIds);
    selectedIds.remove(event.transporterId);

    emit(loadedState.copyWith(selectedTransporterIds: selectedIds));
  }

  void _onSelectAllTransporters(SelectAllTransportersEvent event, Emitter<TransportersState> emit) {
    if (state is! TransportersLoaded) return;
    final loadedState = state as TransportersLoaded;

    final allTransporterIds = loadedState.transporters.map((t) => t.id).toList();
    emit(loadedState.copyWith(selectedTransporterIds: allTransporterIds));
  }

  void _onClearSelection(ClearTransporterSelectionEvent event, Emitter<TransportersState> emit) {
    if (state is! TransportersLoaded) return;
    final loadedState = state as TransportersLoaded;

    emit(loadedState.copyWith(selectedTransporterIds: []));
  }

  void _onSortTransporters(SortTransportersEvent event, Emitter<TransportersState> emit) {
    if (state is! TransportersLoaded) return;
    final loadedState = state as TransportersLoaded;

    final newSortConfig = TransporterSortConfig(
      sortBy: event.sortBy,
      sortOrder: event.sortOrder,
    );

    // Sort the current transporters
    final sortedTransporters = _sortTransporters(loadedState.transporters, newSortConfig);

    emit(loadedState.copyWith(
      transporters: sortedTransporters,
      sortConfig: newSortConfig,
    ));
  }

  void _onTransporterStatusUpdatedFromSignalR(TransporterStatusUpdatedFromSignalREvent event, Emitter<TransportersState> emit) {
    if (state is! TransportersLoaded) return;

    try {
      final statusData = event.statusData;
      final transporterId = statusData['transporterId'] as int?;
      final newStatus = statusData['status'] as String?;
      final isBlocked = statusData['blocked'] as bool?;

      if (transporterId != null) {
        final loadedState = state as TransportersLoaded;
        final updatedTransporters = loadedState.transporters.map((transporter) {
          if (transporter.id == transporterId) {
            return transporter.copyWith(
              status: newStatus ?? transporter.status,
              blocked: isBlocked ?? transporter.blocked,
            );
          }
          return transporter;
        }).toList();

        emit(loadedState.copyWith(transporters: updatedTransporters));
      }
    } catch (e) {
      developer.log('Error processing SignalR transporter status update: $e');
    }
  }

  void _onChangeViewMode(ChangeTransporterViewModeEvent event, Emitter<TransportersState> emit) {
    if (state is! TransportersLoaded) return;
    final loadedState = state as TransportersLoaded;

    emit(loadedState.copyWith(viewMode: event.viewMode));
  }

  Future<void> _onLoadAvailableTransporters(LoadAvailableTransportersEvent event, Emitter<TransportersState> emit) async {
    try {
      emit(const TransportersState.loading());

      final response = await _transporterService.getAvailableTransporters(
        cityId: event.cityId,
        latitude: event.latitude,
        longitude: event.longitude,
        maxDistanceKm: event.maxDistanceKm,
      );

      if (response.isSuccess && response.data != null) {
        final transporters = response.data!;
        
        emit(TransportersState.loaded(
          transporters: transporters,
          hasReachedMax: true, // Available transporters are finite
          currentPage: event.page,
          filter: TransportersFilter(
            cityId: event.cityId,
            availableOnly: true,
            latitude: event.latitude,
            longitude: event.longitude,
            maxDistanceKm: event.maxDistanceKm,
          ),
          viewMode: TransporterViewMode.list,
          sortConfig: const TransporterSortConfig(),
        ));
      } else {
        emit(TransportersState.error(
          message: response.errorMessage ?? 'Erreur lors du chargement des transporteurs disponibles',
        ));
      }
    } catch (e) {
      developer.log('Error loading available transporters: $e');
      emit(TransportersState.error(
        message: 'Erreur de connexion. Veuillez réessayer.',
      ));
    }
  }

  Future<void> _onLoadOnlineTransporters(LoadOnlineTransportersEvent event, Emitter<TransportersState> emit) async {
    try {
      emit(const TransportersState.loading());

      final response = await _transporterService.getOnlineTransporters(page: event.page);

      if (response.isSuccess && response.data != null) {
        final transporters = response.data!;
        
        emit(TransportersState.loaded(
          transporters: transporters,
          hasReachedMax: transporters.length < 20,
          currentPage: event.page,
          filter: const TransportersFilter(onlineOnly: true, status: 'en ligne'),
          viewMode: TransporterViewMode.list,
          sortConfig: const TransporterSortConfig(),
        ));
      } else {
        emit(TransportersState.error(
          message: response.errorMessage ?? 'Erreur lors du chargement des transporteurs en ligne',
        ));
      }
    } catch (e) {
      developer.log('Error loading online transporters: $e');
      emit(TransportersState.error(
        message: 'Erreur de connexion. Veuillez réessayer.',
      ));
    }
  }

  Future<void> _onLoadBlockedTransporters(LoadBlockedTransportersEvent event, Emitter<TransportersState> emit) async {
    try {
      emit(const TransportersState.loading());

      final response = await _transporterService.getBlockedTransporters(page: event.page);

      if (response.isSuccess && response.data != null) {
        final transporters = response.data!;
        
        emit(TransportersState.loaded(
          transporters: transporters,
          hasReachedMax: transporters.length < 20,
          currentPage: event.page,
          filter: const TransportersFilter(isBlocked: true),
          viewMode: TransporterViewMode.list,
          sortConfig: const TransporterSortConfig(),
        ));
      } else {
        emit(TransportersState.error(
          message: response.errorMessage ?? 'Erreur lors du chargement des transporteurs bloqués',
        ));
      }
    } catch (e) {
      developer.log('Error loading blocked transporters: $e');
      emit(TransportersState.error(
        message: 'Erreur de connexion. Veuillez réessayer.',
      ));
    }
  }

  Future<void> _onLoadTopRatedTransporters(LoadTopRatedTransportersEvent event, Emitter<TransportersState> emit) async {
    try {
      emit(const TransportersState.loading());

      final response = await _transporterService.getTopRatedTransporters(
        page: event.page,
        minRating: event.minRating,
      );

      if (response.isSuccess && response.data != null) {
        final transporters = response.data!;
        
        emit(TransportersState.loaded(
          transporters: transporters,
          hasReachedMax: transporters.length < 20,
          currentPage: event.page,
          filter: TransportersFilter(
            topRatedOnly: true,
            minRating: event.minRating,
          ),
          viewMode: TransporterViewMode.list,
          sortConfig: const TransporterSortConfig(sortBy: 'rating', sortOrder: 'desc'),
        ));
      } else {
        emit(TransportersState.error(
          message: response.errorMessage ?? 'Erreur lors du chargement des transporteurs mieux notés',
        ));
      }
    } catch (e) {
      developer.log('Error loading top rated transporters: $e');
      emit(TransportersState.error(
        message: 'Erreur de connexion. Veuillez réessayer.',
      ));
    }
  }

  /// Helper method to perform transporter actions with consistent error handling
  Future<void> _performTransporterAction({
    required Emitter<TransportersState> emit,
    required String actionType,
    required String actionMessage,
    required Future<dynamic> Function() action,
    required String successMessage,
    required Function(Transporter) onSuccess,
  }) async {
    if (state is! TransportersLoaded) return;
    final loadedState = state as TransportersLoaded;

    try {
      emit(TransportersState.actionInProgress(
        transporters: loadedState.transporters,
        filter: loadedState.filter,
        viewMode: loadedState.viewMode,
        sortConfig: loadedState.sortConfig,
        actionType: actionType,
        selectedTransporterIds: loadedState.selectedTransporterIds,
        actionMessage: actionMessage,
      ));

      final response = await action();

      if (response.isSuccess && response.data != null) {
        onSuccess(response.data as Transporter);
        
        emit(TransportersState.actionSuccess(
          transporters: loadedState.transporters,
          filter: loadedState.filter,
          viewMode: loadedState.viewMode,
          sortConfig: loadedState.sortConfig,
          actionType: actionType,
          successMessage: successMessage,
          selectedTransporterIds: loadedState.selectedTransporterIds,
        ));
      } else {
        emit(TransportersState.actionError(
          transporters: loadedState.transporters,
          filter: loadedState.filter,
          viewMode: loadedState.viewMode,
          sortConfig: loadedState.sortConfig,
          actionType: actionType,
          errorMessage: response.errorMessage ?? 'Erreur lors de l\'opération',
          selectedTransporterIds: loadedState.selectedTransporterIds,
        ));
      }
    } catch (e) {
      developer.log('Error performing action $actionType: $e');
      emit(TransportersState.actionError(
        transporters: loadedState.transporters,
        filter: loadedState.filter,
        viewMode: loadedState.viewMode,
        sortConfig: loadedState.sortConfig,
        actionType: actionType,
        errorMessage: 'Erreur de connexion. Veuillez réessayer.',
        selectedTransporterIds: loadedState.selectedTransporterIds,
      ));
    }
  }

  /// Update a single transporter in the current state
  void _updateTransporterInState(Emitter<TransportersState> emit, Transporter updatedTransporter) {
    if (state is! TransportersLoaded) return;
    final loadedState = state as TransportersLoaded;

    final updatedTransporters = loadedState.transporters.map((transporter) {
      return transporter.id == updatedTransporter.id ? updatedTransporter : transporter;
    }).toList();

    emit(loadedState.copyWith(transporters: updatedTransporters));
  }

  /// Sort transporters based on configuration
  List<Transporter> _sortTransporters(List<Transporter> transporters, TransporterSortConfig sortConfig) {
    final sortedTransporters = List<Transporter>.from(transporters);

    sortedTransporters.sort((a, b) {
      int comparison = 0;

      switch (sortConfig.sortBy) {
        case 'name':
          comparison = a.name.compareTo(b.name);
          break;
        case 'rating':
          comparison = a.rating.compareTo(b.rating);
          break;
        case 'commission':
          comparison = a.commission.compareTo(b.commission);
          break;
        case 'totalDeliveries':
          comparison = a.totalDeliveries.compareTo(b.totalDeliveries);
          break;
        case 'createdAt':
          comparison = a.createdAt.compareTo(b.createdAt);
          break;
        case 'lastActiveAt':
          final aLastActive = a.lastActiveAt ?? DateTime(1970);
          final bLastActive = b.lastActiveAt ?? DateTime(1970);
          comparison = aLastActive.compareTo(bLastActive);
          break;
        default:
          comparison = a.name.compareTo(b.name);
      }

      return sortConfig.sortOrder == 'desc' ? -comparison : comparison;
    });

    return sortedTransporters;
  }

  @override
  Future<void> close() {
    _transporterStatusSubscription?.cancel();
    return super.close();
  }
}