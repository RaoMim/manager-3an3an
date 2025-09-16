import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';

part 'statistics_event.freezed.dart';

@freezed
sealed class StatisticsEvent with _$StatisticsEvent {
  // Load events
  const factory StatisticsEvent.loadStatistics({
    DateTime? fromDate,
    DateTime? toDate,
    int? cityId,
    @Default(false) bool isRefresh,
  }) = LoadStatisticsEvent;

  const factory StatisticsEvent.refreshStatistics() = RefreshStatisticsEvent;

  // Period events
  const factory StatisticsEvent.changePeriod({
    required StatisticsPeriod period,
    DateTime? customFromDate,
    DateTime? customToDate,
  }) = ChangePeriodEvent;

  // Filter events
  const factory StatisticsEvent.filterByCity({int? cityId}) = FilterByCityEvent;

  // Real-time events
  const factory StatisticsEvent.statisticsUpdatedFromSignalR({
    required Map<String, dynamic> statisticsData,
  }) = StatisticsUpdatedFromSignalREvent;

  // Individual statistics load events
  const factory StatisticsEvent.loadOrderStatistics({
    DateTime? fromDate,
    DateTime? toDate,
    int? cityId,
  }) = LoadOrderStatisticsEvent;

  const factory StatisticsEvent.loadTransporterStatistics({
    DateTime? fromDate,
    DateTime? toDate,
    int? cityId,
  }) = LoadTransporterStatisticsEvent;

  const factory StatisticsEvent.loadCityStatistics({
    DateTime? fromDate,
    DateTime? toDate,
  }) = LoadCityStatisticsEvent;

  const factory StatisticsEvent.loadAutoAssignmentStatistics({
    DateTime? fromDate,
    DateTime? toDate,
  }) = LoadAutoAssignmentStatisticsEvent;

  // Analytics events
  const factory StatisticsEvent.loadOrderAnalytics({
    DateTime? fromDate,
    DateTime? toDate,
    int? cityId,
  }) = LoadOrderAnalyticsEvent;
}

enum StatisticsPeriod {
  today,
  yesterday,
  thisWeek,
  lastWeek,
  thisMonth,
  lastMonth,
  last30Days,
  last90Days,
  custom,
}

/// Base class for statistics events (for compatibility if needed)
abstract class StatisticsEventBase extends Equatable {
  const StatisticsEventBase();

  @override
  List<Object?> get props => [];
}