import 'dart:async';
import 'dart:developer' as developer;
import 'package:flutter_bloc/flutter_bloc.dart';
import '../services/orders_service.dart';
import '../services/transporter_service.dart';
import '../services/city_service.dart';
import '../services/auto_assignment_service.dart';
import '../services/signalr_service.dart';
import '../models/transporter.dart';
import '../models/city.dart';
import '../models/auto_assignment_config.dart';
import 'statistics_event.dart';
import 'statistics_state.dart';

class StatisticsBloc extends Bloc<StatisticsEvent, StatisticsState> {
  final OrdersService _ordersService;
  final TransporterService _transporterService;
  final CityService _cityService;
  final AutoAssignmentService _autoAssignmentService;
  final SignalRService _signalRService;
  
  StreamSubscription<Map<String, dynamic>>? _statisticsUpdateSubscription;

  StatisticsBloc({
    required OrdersService ordersService,
    required TransporterService transporterService,
    required CityService cityService,
    required AutoAssignmentService autoAssignmentService,
    required SignalRService signalRService,
  })  : _ordersService = ordersService,
        _transporterService = transporterService,
        _cityService = cityService,
        _autoAssignmentService = autoAssignmentService,
        _signalRService = signalRService,
        super(const StatisticsState.initial()) {
    
    // Register event handlers
    on<LoadStatisticsEvent>(_onLoadStatistics);
    on<RefreshStatisticsEvent>(_onRefreshStatistics);
    on<ChangePeriodEvent>(_onChangePeriod);
    on<FilterByCityEvent>(_onFilterByCity);
    on<StatisticsUpdatedFromSignalREvent>(_onStatisticsUpdatedFromSignalR);
    on<LoadOrderStatisticsEvent>(_onLoadOrderStatistics);
    on<LoadTransporterStatisticsEvent>(_onLoadTransporterStatistics);
    on<LoadCityStatisticsEvent>(_onLoadCityStatistics);
    on<LoadAutoAssignmentStatisticsEvent>(_onLoadAutoAssignmentStatistics);
    on<LoadOrderAnalyticsEvent>(_onLoadOrderAnalytics);

    // Subscribe to SignalR statistics updates
    _subscribeToSignalR();
  }

  void _subscribeToSignalR() {
    // Subscribe to statistics updates from SignalR
    _statisticsUpdateSubscription = _signalRService.statisticsUpdateStream.listen((update) {
      add(StatisticsEvent.statisticsUpdatedFromSignalR(statisticsData: update));
    });

    // Ensure SignalR connection
    _signalRService.connect();
  }

  Future<void> _onLoadStatistics(LoadStatisticsEvent event, Emitter<StatisticsState> emit) async {
    try {
      if (event.isRefresh && state is StatisticsLoaded) {
        final loadedState = state as StatisticsLoaded;
        emit(StatisticsState.refreshing(
          orderStatistics: loadedState.orderStatistics,
          transporterStatistics: loadedState.transporterStatistics,
          cityStatistics: loadedState.cityStatistics,
          autoAssignmentStats: loadedState.autoAssignmentStats,
          period: loadedState.period,
          fromDate: event.fromDate,
          toDate: event.toDate,
          cityId: event.cityId,
        ));
      } else {
        emit(const StatisticsState.loading());
      }

      // Load all statistics concurrently
      final results = await Future.wait([
        _ordersService.getOrderStatistics(
          fromDate: event.fromDate,
          toDate: event.toDate,
          cityId: event.cityId,
        ),
        _transporterService.getTransporterStatistics(
          fromDate: event.fromDate,
          toDate: event.toDate,
          cityId: event.cityId,
        ),
        _cityService.getCityStatistics(
          fromDate: event.fromDate,
          toDate: event.toDate,
        ),
        _autoAssignmentService.getStatistics(
          fromDate: event.fromDate,
          toDate: event.toDate,
        ),
      ]);

      final orderStatsResponse = results[0];
      final transporterStatsResponse = results[1];
      final cityStatsResponse = results[2];
      final autoAssignmentStatsResponse = results[3];

      // Check if all requests were successful
      if (orderStatsResponse.isSuccess &&
          transporterStatsResponse.isSuccess &&
          cityStatsResponse.isSuccess &&
          autoAssignmentStatsResponse.isSuccess) {
        
        emit(StatisticsState.loaded(
          orderStatistics: orderStatsResponse.data!,
          transporterStatistics: transporterStatsResponse.data!,
          cityStatistics: cityStatsResponse.data!,
          autoAssignmentStats: autoAssignmentStatsResponse.data!,
          period: StatisticsPeriod.today,
          fromDate: event.fromDate,
          toDate: event.toDate,
          cityId: event.cityId,
          lastUpdated: DateTime.now(),
        ));
      } else {
        // Handle partial loading or complete failure
        final loadingItems = <String>[];
        final errorItems = <String>[];

        if (!orderStatsResponse.isSuccess) {
          errorItems.add('Commandes');
        }
        if (!transporterStatsResponse.isSuccess) {
          errorItems.add('Transporteurs');
        }
        if (!cityStatsResponse.isSuccess) {
          errorItems.add('Villes');
        }
        if (!autoAssignmentStatsResponse.isSuccess) {
          errorItems.add('Assignation automatique');
        }

        if (errorItems.length == 4) {
          // Complete failure
          emit(StatisticsState.error(
            message: 'Erreur lors du chargement des statistiques',
          ));
        } else {
          // Partial loading
          emit(StatisticsState.partiallyLoaded(
            orderStatistics: orderStatsResponse.data,
            transporterStatistics: transporterStatsResponse.data,
            cityStatistics: cityStatsResponse.data,
            autoAssignmentStats: autoAssignmentStatsResponse.data,
            period: StatisticsPeriod.today,
            fromDate: event.fromDate,
            toDate: event.toDate,
            cityId: event.cityId,
            loadingItems: loadingItems,
            errorItems: errorItems,
          ));
        }
      }
    } catch (e) {
      developer.log('Error loading statistics: $e');
      emit(StatisticsState.error(
        message: 'Erreur de connexion. Veuillez réessayer.',
      ));
    }
  }

  void _onRefreshStatistics(RefreshStatisticsEvent event, Emitter<StatisticsState> emit) {
    if (state.isLoaded) {
      add(StatisticsEvent.loadStatistics(
        fromDate: state.fromDate,
        toDate: state.toDate,
        cityId: state.cityId,
        isRefresh: true,
      ));
    } else {
      add(const StatisticsEvent.loadStatistics());
    }
  }

  void _onChangePeriod(ChangePeriodEvent event, Emitter<StatisticsState> emit) {
    DateTime? fromDate;
    DateTime? toDate;

    if (event.period.isCustom) {
      fromDate = event.customFromDate;
      toDate = event.customToDate;
    } else {
      final dateRange = event.period.dateRange;
      fromDate = dateRange.fromDate;
      toDate = dateRange.toDate;
    }

    add(StatisticsEvent.loadStatistics(
      fromDate: fromDate,
      toDate: toDate,
      cityId: state.cityId,
    ));
  }

  void _onFilterByCity(FilterByCityEvent event, Emitter<StatisticsState> emit) {
    add(StatisticsEvent.loadStatistics(
      fromDate: state.fromDate,
      toDate: state.toDate,
      cityId: event.cityId,
    ));
  }

  void _onStatisticsUpdatedFromSignalR(StatisticsUpdatedFromSignalREvent event, Emitter<StatisticsState> emit) {
    if (state is! StatisticsLoaded) return;
    
    try {
      final loadedState = state as StatisticsLoaded;
      final updateData = event.statisticsData;

      // Update specific statistics based on the SignalR data
      OrderStatistics? updatedOrderStats = loadedState.orderStatistics;
      TransporterStatistics? updatedTransporterStats = loadedState.transporterStatistics;
      CityStatistics? updatedCityStats = loadedState.cityStatistics;
      AutoAssignmentStats? updatedAutoStats = loadedState.autoAssignmentStats;

      if (updateData.containsKey('orderStatistics')) {
        updatedOrderStats = OrderStatistics.fromJson(updateData['orderStatistics']);
      }
      
      if (updateData.containsKey('transporterStatistics')) {
        updatedTransporterStats = TransporterStatistics.fromJson(updateData['transporterStatistics']);
      }
      
      if (updateData.containsKey('cityStatistics')) {
        updatedCityStats = CityStatistics.fromJson(updateData['cityStatistics']);
      }
      
      if (updateData.containsKey('autoAssignmentStats')) {
        updatedAutoStats = AutoAssignmentStats.fromJson(updateData['autoAssignmentStats']);
      }

      emit(loadedState.copyWith(
        orderStatistics: updatedOrderStats,
        transporterStatistics: updatedTransporterStats,
        cityStatistics: updatedCityStats,
        autoAssignmentStats: updatedAutoStats,
        lastUpdated: DateTime.now(),
      ));
    } catch (e) {
      developer.log('Error processing SignalR statistics update: $e');
    }
  }

  Future<void> _onLoadOrderStatistics(LoadOrderStatisticsEvent event, Emitter<StatisticsState> emit) async {
    if (state is! StatisticsLoaded) return;
    final loadedState = state as StatisticsLoaded;

    try {
      final response = await _ordersService.getOrderStatistics(
        fromDate: event.fromDate,
        toDate: event.toDate,
        cityId: event.cityId,
      );

      if (response.isSuccess && response.data != null) {
        emit(loadedState.copyWith(
          orderStatistics: response.data!,
          lastUpdated: DateTime.now(),
        ));
      }
    } catch (e) {
      developer.log('Error loading order statistics: $e');
    }
  }

  Future<void> _onLoadTransporterStatistics(LoadTransporterStatisticsEvent event, Emitter<StatisticsState> emit) async {
    if (state is! StatisticsLoaded) return;
    final loadedState = state as StatisticsLoaded;

    try {
      final response = await _transporterService.getTransporterStatistics(
        fromDate: event.fromDate,
        toDate: event.toDate,
        cityId: event.cityId,
      );

      if (response.isSuccess && response.data != null) {
        emit(loadedState.copyWith(
          transporterStatistics: response.data!,
          lastUpdated: DateTime.now(),
        ));
      }
    } catch (e) {
      developer.log('Error loading transporter statistics: $e');
    }
  }

  Future<void> _onLoadCityStatistics(LoadCityStatisticsEvent event, Emitter<StatisticsState> emit) async {
    if (state is! StatisticsLoaded) return;
    final loadedState = state as StatisticsLoaded;

    try {
      final response = await _cityService.getCityStatistics(
        fromDate: event.fromDate,
        toDate: event.toDate,
      );

      if (response.isSuccess && response.data != null) {
        emit(loadedState.copyWith(
          cityStatistics: response.data!,
          lastUpdated: DateTime.now(),
        ));
      }
    } catch (e) {
      developer.log('Error loading city statistics: $e');
    }
  }

  Future<void> _onLoadAutoAssignmentStatistics(LoadAutoAssignmentStatisticsEvent event, Emitter<StatisticsState> emit) async {
    if (state is! StatisticsLoaded) return;
    final loadedState = state as StatisticsLoaded;

    try {
      final response = await _autoAssignmentService.getStatistics(
        fromDate: event.fromDate,
        toDate: event.toDate,
      );

      if (response.isSuccess && response.data != null) {
        emit(loadedState.copyWith(
          autoAssignmentStats: response.data!,
          lastUpdated: DateTime.now(),
        ));
      }
    } catch (e) {
      developer.log('Error loading auto-assignment statistics: $e');
    }
  }

  Future<void> _onLoadOrderAnalytics(LoadOrderAnalyticsEvent event, Emitter<StatisticsState> emit) async {
    if (state is! StatisticsLoaded) return;
    final loadedState = state as StatisticsLoaded;

    try {
      final response = await _ordersService.getOrderAnalytics(
        fromDate: event.fromDate,
        toDate: event.toDate,
        cityId: event.cityId,
      );

      if (response.isSuccess && response.data != null) {
        emit(loadedState.copyWith(
          orderAnalytics: response.data!,
          lastUpdated: DateTime.now(),
        ));
      }
    } catch (e) {
      developer.log('Error loading order analytics: $e');
    }
  }

  @override
  Future<void> close() {
    _statisticsUpdateSubscription?.cancel();
    return super.close();
  }
}

/// Helper extension for easier access to statistics data
extension StatisticsBlocX on StatisticsBloc {
  /// Load statistics for today
  void loadTodayStatistics({int? cityId}) {
    add(StatisticsEvent.changePeriod(period: StatisticsPeriod.today));
  }

  /// Load statistics for this week
  void loadWeekStatistics({int? cityId}) {
    add(StatisticsEvent.changePeriod(period: StatisticsPeriod.thisWeek));
  }

  /// Load statistics for this month
  void loadMonthStatistics({int? cityId}) {
    add(StatisticsEvent.changePeriod(period: StatisticsPeriod.thisMonth));
  }

  /// Load statistics for custom period
  void loadCustomStatistics({
    required DateTime fromDate,
    required DateTime toDate,
    int? cityId,
  }) {
    add(StatisticsEvent.changePeriod(
      period: StatisticsPeriod.custom,
      customFromDate: fromDate,
      customToDate: toDate,
    ));
  }
}