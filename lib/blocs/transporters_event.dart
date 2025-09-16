import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';

part 'transporters_event.freezed.dart';

@freezed
sealed class TransportersEvent with _$TransportersEvent {
  // Load events
  const factory TransportersEvent.loadTransporters({
    @Default(1) int page,
    @Default(20) int pageSize,
    String? status,
    int? cityId,
    bool? isBlocked,
    bool? availableOnly,
    String? search,
    double? minRating,
    int? minDeliveries,
    @Default(false) bool isRefresh,
  }) = LoadTransportersEvent;

  const factory TransportersEvent.loadMoreTransporters() = LoadMoreTransportersEvent;

  const factory TransportersEvent.refreshTransporters() = RefreshTransportersEvent;

  // Filter events
  const factory TransportersEvent.applyFilter({
    String? status,
    int? cityId,
    bool? isBlocked,
    bool? availableOnly,
    double? minRating,
    int? minDeliveries,
    String? search,
  }) = ApplyTransporterFilterEvent;

  const factory TransportersEvent.clearFilter() = ClearTransporterFilterEvent;

  const factory TransportersEvent.searchTransporters({required String query}) = SearchTransportersEvent;

  // Management events
  const factory TransportersEvent.updateTransporterStatus({
    required int transporterId,
    required String status,
  }) = UpdateTransporterStatusEvent;

  const factory TransportersEvent.blockTransporter({
    required int transporterId,
    required bool blocked,
    String? reason,
  }) = BlockTransporterEvent;

  const factory TransportersEvent.updateTransporterLocation({
    required int transporterId,
    required double latitude,
    required double longitude,
  }) = UpdateTransporterLocationEvent;

  // Selection events
  const factory TransportersEvent.selectTransporter({required int transporterId}) = SelectTransporterEvent;
  const factory TransportersEvent.deselectTransporter({required int transporterId}) = DeselectTransporterEvent;
  const factory TransportersEvent.selectAllTransporters() = SelectAllTransportersEvent;
  const factory TransportersEvent.clearTransporterSelection() = ClearTransporterSelectionEvent;

  // Sort events
  const factory TransportersEvent.sortTransporters({
    required String sortBy,
    required String sortOrder,
  }) = SortTransportersEvent;

  // Real-time events
  const factory TransportersEvent.transporterStatusUpdatedFromSignalR({
    required Map<String, dynamic> statusData,
  }) = TransporterStatusUpdatedFromSignalREvent;

  // View mode events
  const factory TransportersEvent.changeViewMode({
    required TransporterViewMode viewMode,
  }) = ChangeTransporterViewModeEvent;

  // Special list events
  const factory TransportersEvent.loadAvailableTransporters({
    @Default(1) int page,
    int? cityId,
    double? latitude,
    double? longitude,
    @Default(10.0) double maxDistanceKm,
  }) = LoadAvailableTransportersEvent;

  const factory TransportersEvent.loadOnlineTransporters({
    @Default(1) int page,
  }) = LoadOnlineTransportersEvent;

  const factory TransportersEvent.loadBlockedTransporters({
    @Default(1) int page,
  }) = LoadBlockedTransportersEvent;

  const factory TransportersEvent.loadTopRatedTransporters({
    @Default(1) int page,
    @Default(4.0) double minRating,
  }) = LoadTopRatedTransportersEvent;
}

enum TransporterViewMode {
  list,
  grid,
  map,
}

/// Base class for transporters events (for compatibility if needed)
abstract class TransportersEventBase extends Equatable {
  const TransportersEventBase();

  @override
  List<Object?> get props => [];
}