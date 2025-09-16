import 'package:freezed_annotation/freezed_annotation.dart';
import '../services/orders_service.dart';
import '../models/transporter.dart';
import '../models/city.dart';
import '../models/auto_assignment_config.dart';
import 'statistics_event.dart';

part 'statistics_state.freezed.dart';

@freezed
sealed class StatisticsState with _$StatisticsState {
  const factory StatisticsState.initial() = StatisticsInitial;

  const factory StatisticsState.loading() = StatisticsLoading;

  const factory StatisticsState.loaded({
    required OrderStatistics orderStatistics,
    required TransporterStatistics transporterStatistics,
    required CityStatistics cityStatistics,
    required AutoAssignmentStats autoAssignmentStats,
    required StatisticsPeriod period,
    DateTime? fromDate,
    DateTime? toDate,
    int? cityId,
    Map<String, dynamic>? orderAnalytics,
    DateTime? lastUpdated,
  }) = StatisticsLoaded;

  const factory StatisticsState.error({
    required String message,
    OrderStatistics? orderStatistics,
    TransporterStatistics? transporterStatistics,
    CityStatistics? cityStatistics,
    AutoAssignmentStats? autoAssignmentStats,
    StatisticsPeriod? period,
  }) = StatisticsError;

  const factory StatisticsState.partiallyLoaded({
    OrderStatistics? orderStatistics,
    TransporterStatistics? transporterStatistics,
    CityStatistics? cityStatistics,
    AutoAssignmentStats? autoAssignmentStats,
    required StatisticsPeriod period,
    DateTime? fromDate,
    DateTime? toDate,
    int? cityId,
    required List<String> loadingItems,
    required List<String> errorItems,
  }) = StatisticsPartiallyLoaded;

  const factory StatisticsState.refreshing({
    required OrderStatistics orderStatistics,
    required TransporterStatistics transporterStatistics,
    required CityStatistics cityStatistics,
    required AutoAssignmentStats autoAssignmentStats,
    required StatisticsPeriod period,
    DateTime? fromDate,
    DateTime? toDate,
    int? cityId,
  }) = StatisticsRefreshing;
}

/// Extension methods for StatisticsState
extension StatisticsStateX on StatisticsState {
  /// Get the current order statistics
  OrderStatistics? get orderStatistics {
    return when(
      initial: () => null,
      loading: () => null,
      loaded: (orderStats, _, __, ___, ____, _____, ______, _______, ________) => orderStats,
      error: (_, orderStats, __, ___, ____, _____) => orderStats,
      partiallyLoaded: (orderStats, _, __, ___, ____, _____, ______, _______, ________) => orderStats,
      refreshing: (orderStats, _, __, ___, ____, _____, ______) => orderStats,
    );
  }

  /// Get the current transporter statistics
  TransporterStatistics? get transporterStatistics {
    return when(
      initial: () => null,
      loading: () => null,
      loaded: (_, transporterStats, __, ___, ____, _____, ______, _______, ________) => transporterStats,
      error: (_, __, transporterStats, ___, ____, _____) => transporterStats,
      partiallyLoaded: (_, transporterStats, __, ___, ____, _____, ______, _______, ________) => transporterStats,
      refreshing: (_, transporterStats, __, ___, ____, _____, ______) => transporterStats,
    );
  }

  /// Get the current city statistics
  CityStatistics? get cityStatistics {
    return when(
      initial: () => null,
      loading: () => null,
      loaded: (_, __, cityStats, ___, ____, _____, ______, _______, ________) => cityStats,
      error: (_, __, __, cityStats, ____, _____) => cityStats,
      partiallyLoaded: (_, __, cityStats, ___, ____, _____, ______, _______, ________) => cityStats,
      refreshing: (_, __, cityStats, ___, ____, _____, ______) => cityStats,
    );
  }

  /// Get the current auto-assignment statistics
  AutoAssignmentStats? get autoAssignmentStats {
    return when(
      initial: () => null,
      loading: () => null,
      loaded: (_, __, ___, autoStats, ____, _____, ______, _______, ________) => autoStats,
      error: (_, __, ___, autoStats, ____, _____) => autoStats,
      partiallyLoaded: (_, __, ___, autoStats, ____, _____, ______, _______, ________) => autoStats,
      refreshing: (_, __, ___, autoStats, ____, _____, ______) => autoStats,
    );
  }

  /// Get the current period
  StatisticsPeriod get period {
    return when(
      initial: () => StatisticsPeriod.today,
      loading: () => StatisticsPeriod.today,
      loaded: (_, __, ___, ____, period, _____, ______, _______, ________) => period,
      error: (_, __, ___, ____, _____, period) => period ?? StatisticsPeriod.today,
      partiallyLoaded: (_, __, ___, ____, period, _____, ______, _______, ________) => period,
      refreshing: (_, __, ___, ____, period, _____, ______) => period,
    );
  }

  /// Get the from date
  DateTime? get fromDate {
    return when(
      initial: () => null,
      loading: () => null,
      loaded: (_, __, ___, ____, _____, fromDate, ______, _______, ________) => fromDate,
      error: (_, __, ___, ____, _____, ______) => null,
      partiallyLoaded: (_, __, ___, ____, _____, fromDate, ______, _______, ________) => fromDate,
      refreshing: (_, __, ___, ____, _____, fromDate, ______) => fromDate,
    );
  }

  /// Get the to date
  DateTime? get toDate {
    return when(
      initial: () => null,
      loading: () => null,
      loaded: (_, __, ___, ____, _____, ______, toDate, _______, ________) => toDate,
      error: (_, __, ___, ____, _____, ______) => null,
      partiallyLoaded: (_, __, ___, ____, _____, ______, toDate, _______, ________) => toDate,
      refreshing: (_, __, ___, ____, _____, ______, toDate) => toDate,
    );
  }

  /// Get the city filter
  int? get cityId {
    return when(
      initial: () => null,
      loading: () => null,
      loaded: (_, __, ___, ____, _____, ______, _______, cityId, ________) => cityId,
      error: (_, __, ___, ____, _____, ______) => null,
      partiallyLoaded: (_, __, ___, ____, _____, ______, _______, cityId, ________) => cityId,
      refreshing: (_, __, ___, ____, _____, ______, _______) => null,
    );
  }

  /// Get the order analytics
  Map<String, dynamic>? get orderAnalytics {
    return when(
      initial: () => null,
      loading: () => null,
      loaded: (_, __, ___, ____, _____, ______, _______, ________, analytics) => analytics,
      error: (_, __, ___, ____, _____, ______) => null,
      partiallyLoaded: (_, __, ___, ____, _____, ______, _______, ________, _________) => null,
      refreshing: (_, __, ___, ____, _____, ______, _______) => null,
    );
  }

  /// Check if currently loading
  bool get isLoading {
    return when(
      initial: () => false,
      loading: () => true,
      loaded: (_, __, ___, ____, _____, ______, _______, ________, _________) => false,
      error: (_, __, ___, ____, _____, ______) => false,
      partiallyLoaded: (_, __, ___, ____, _____, ______, _______, ________, _________) => false,
      refreshing: (_, __, ___, ____, _____, ______, _______) => false,
    );
  }

  /// Check if currently refreshing
  bool get isRefreshing {
    return when(
      initial: () => false,
      loading: () => false,
      loaded: (_, __, ___, ____, _____, ______, _______, ________, _________) => false,
      error: (_, __, ___, ____, _____, ______) => false,
      partiallyLoaded: (_, __, ___, ____, _____, ______, _______, ________, _________) => false,
      refreshing: (_, __, ___, ____, _____, ______, _______) => true,
    );
  }

  /// Check if has error
  bool get hasError {
    return when(
      initial: () => false,
      loading: () => false,
      loaded: (_, __, ___, ____, _____, ______, _______, ________, _________) => false,
      error: (_, __, ___, ____, _____, ______) => true,
      partiallyLoaded: (_, __, ___, ____, _____, ______, _______, errorItems, _________) => errorItems.isNotEmpty,
      refreshing: (_, __, ___, ____, _____, ______, _______) => false,
    );
  }

  /// Get error message
  String? get errorMessage {
    return when(
      initial: () => null,
      loading: () => null,
      loaded: (_, __, ___, ____, _____, ______, _______, ________, _________) => null,
      error: (message, _, __, ___, ____, _____) => message,
      partiallyLoaded: (_, __, ___, ____, _____, ______, _______, errorItems, _________) => 
          errorItems.isNotEmpty ? 'Erreur lors du chargement: ${errorItems.join(', ')}' : null,
      refreshing: (_, __, ___, ____, _____, ______, _______) => null,
    );
  }

  /// Check if data is loaded
  bool get isLoaded {
    return when(
      initial: () => false,
      loading: () => false,
      loaded: (_, __, ___, ____, _____, ______, _______, ________, _________) => true,
      error: (_, __, ___, ____, _____, ______) => false,
      partiallyLoaded: (_, __, ___, ____, _____, ______, _______, ________, _________) => true,
      refreshing: (_, __, ___, ____, _____, ______, _______) => true,
    );
  }

  /// Get loading progress (0.0 to 1.0)
  double get loadingProgress {
    return when(
      initial: () => 0.0,
      loading: () => 0.0,
      loaded: (_, __, ___, ____, _____, ______, _______, ________, _________) => 1.0,
      error: (_, __, ___, ____, _____, ______) => 0.0,
      partiallyLoaded: (_, __, ___, ____, _____, ______, _______, ________, loadingItems) {
        const totalItems = 4; // Order, Transporter, City, AutoAssignment stats
        final loadedItems = totalItems - loadingItems.length;
        return loadedItems / totalItems;
      },
      refreshing: (_, __, ___, ____, _____, ______, _______) => 1.0,
    );
  }
}

/// Extension for StatisticsPeriod
extension StatisticsPeriodX on StatisticsPeriod {
  /// Get display name for the period
  String get displayName {
    switch (this) {
      case StatisticsPeriod.today:
        return "Aujourd'hui";
      case StatisticsPeriod.yesterday:
        return 'Hier';
      case StatisticsPeriod.thisWeek:
        return 'Cette semaine';
      case StatisticsPeriod.lastWeek:
        return 'Semaine dernière';
      case StatisticsPeriod.thisMonth:
        return 'Ce mois';
      case StatisticsPeriod.lastMonth:
        return 'Mois dernier';
      case StatisticsPeriod.last30Days:
        return '30 derniers jours';
      case StatisticsPeriod.last90Days:
        return '90 derniers jours';
      case StatisticsPeriod.custom:
        return 'Période personnalisée';
    }
  }

  /// Get the date range for this period
  ({DateTime fromDate, DateTime toDate}) get dateRange {
    final now = DateTime.now();
    
    switch (this) {
      case StatisticsPeriod.today:
        final startOfDay = DateTime(now.year, now.month, now.day);
        final endOfDay = DateTime(now.year, now.month, now.day, 23, 59, 59);
        return (fromDate: startOfDay, toDate: endOfDay);
        
      case StatisticsPeriod.yesterday:
        final yesterday = now.subtract(const Duration(days: 1));
        final startOfDay = DateTime(yesterday.year, yesterday.month, yesterday.day);
        final endOfDay = DateTime(yesterday.year, yesterday.month, yesterday.day, 23, 59, 59);
        return (fromDate: startOfDay, toDate: endOfDay);
        
      case StatisticsPeriod.thisWeek:
        final startOfWeek = now.subtract(Duration(days: now.weekday - 1));
        final startOfDay = DateTime(startOfWeek.year, startOfWeek.month, startOfWeek.day);
        final endOfDay = DateTime(now.year, now.month, now.day, 23, 59, 59);
        return (fromDate: startOfDay, toDate: endOfDay);
        
      case StatisticsPeriod.lastWeek:
        final lastWeekStart = now.subtract(Duration(days: now.weekday + 6));
        final lastWeekEnd = now.subtract(Duration(days: now.weekday));
        final startOfDay = DateTime(lastWeekStart.year, lastWeekStart.month, lastWeekStart.day);
        final endOfDay = DateTime(lastWeekEnd.year, lastWeekEnd.month, lastWeekEnd.day, 23, 59, 59);
        return (fromDate: startOfDay, toDate: endOfDay);
        
      case StatisticsPeriod.thisMonth:
        final startOfMonth = DateTime(now.year, now.month, 1);
        final endOfDay = DateTime(now.year, now.month, now.day, 23, 59, 59);
        return (fromDate: startOfMonth, toDate: endOfDay);
        
      case StatisticsPeriod.lastMonth:
        final lastMonth = DateTime(now.year, now.month - 1, 1);
        final endOfLastMonth = DateTime(now.year, now.month, 0, 23, 59, 59);
        return (fromDate: lastMonth, toDate: endOfLastMonth);
        
      case StatisticsPeriod.last30Days:
        final startDate = now.subtract(const Duration(days: 30));
        final startOfDay = DateTime(startDate.year, startDate.month, startDate.day);
        final endOfDay = DateTime(now.year, now.month, now.day, 23, 59, 59);
        return (fromDate: startOfDay, toDate: endOfDay);
        
      case StatisticsPeriod.last90Days:
        final startDate = now.subtract(const Duration(days: 90));
        final startOfDay = DateTime(startDate.year, startDate.month, startDate.day);
        final endOfDay = DateTime(now.year, now.month, now.day, 23, 59, 59);
        return (fromDate: startOfDay, toDate: endOfDay);
        
      case StatisticsPeriod.custom:
        // Return today's range as fallback, actual dates should come from event
        final startOfDay = DateTime(now.year, now.month, now.day);
        final endOfDay = DateTime(now.year, now.month, now.day, 23, 59, 59);
        return (fromDate: startOfDay, toDate: endOfDay);
    }
  }

  /// Check if this is a custom period
  bool get isCustom => this == StatisticsPeriod.custom;
}