import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';
import '../models/transporter.dart';
import 'transporters_event.dart';

part 'transporters_state.freezed.dart';

@freezed
sealed class TransportersState with _$TransportersState {
  const factory TransportersState.initial() = TransportersInitial;

  const factory TransportersState.loading() = TransportersLoading;

  const factory TransportersState.loadingMore() = TransportersLoadingMore;

  const factory TransportersState.loaded({
    required List<Transporter> transporters,
    @Default(false) bool hasReachedMax,
    @Default(1) int currentPage,
    @Default(20) int pageSize,
    @Default([]) List<int> selectedTransporterIds,
    required TransportersFilter filter,
    required TransporterViewMode viewMode,
    required TransporterSortConfig sortConfig,
  }) = TransportersLoaded;

  const factory TransportersState.error({
    required String message,
    List<Transporter>? transporters,
    TransportersFilter? filter,
  }) = TransportersError;

  const factory TransportersState.actionInProgress({
    required List<Transporter> transporters,
    required TransportersFilter filter,
    required TransporterViewMode viewMode,
    required TransporterSortConfig sortConfig,
    required String actionType,
    @Default([]) List<int> selectedTransporterIds,
    String? actionMessage,
  }) = TransportersActionInProgress;

  const factory TransportersState.actionSuccess({
    required List<Transporter> transporters,
    required TransportersFilter filter,
    required TransporterViewMode viewMode,
    required TransporterSortConfig sortConfig,
    required String actionType,
    required String successMessage,
    @Default([]) List<int> selectedTransporterIds,
  }) = TransportersActionSuccess;

  const factory TransportersState.actionError({
    required List<Transporter> transporters,
    required TransportersFilter filter,
    required TransporterViewMode viewMode,
    required TransporterSortConfig sortConfig,
    required String actionType,
    required String errorMessage,
    @Default([]) List<int> selectedTransporterIds,
  }) = TransportersActionError;
}

@freezed
sealed class TransportersFilter with _$TransportersFilter {
  const factory TransportersFilter({
    String? status,
    int? cityId,
    bool? isBlocked,
    bool? availableOnly,
    String? search,
    double? minRating,
    int? minDeliveries,
    @Default(false) bool onlineOnly,
    @Default(false) bool topRatedOnly,
    double? latitude,
    double? longitude,
    double? maxDistanceKm,
  }) = _TransportersFilter;

  const factory TransportersFilter.empty() = _TransportersFilterEmpty;
}

@freezed
sealed class TransporterSortConfig with _$TransporterSortConfig {
  const factory TransporterSortConfig({
    @Default('name') String sortBy,
    @Default('asc') String sortOrder,
  }) = _TransporterSortConfig;
}

/// Extension methods for TransportersState
extension TransportersStateX on TransportersState {
  /// Get the current list of transporters
  List<Transporter> get transporters {
    return when(
      initial: () => [],
      loading: () => [],
      loadingMore: () => [],
      loaded: (transporters, _, __, ___, ____, _____, ______, _______) => transporters,
      error: (_, transporters, __) => transporters ?? [],
      actionInProgress: (transporters, _, __, ___, ____, _____, ______) => transporters,
      actionSuccess: (transporters, _, __, ___, ____, _____, ______) => transporters,
      actionError: (transporters, _, __, ___, ____, _____, ______) => transporters,
    );
  }

  /// Get the current filter
  TransportersFilter get filter {
    return when(
      initial: () => const TransportersFilter.empty(),
      loading: () => const TransportersFilter.empty(),
      loadingMore: () => const TransportersFilter.empty(),
      loaded: (_, __, ___, ____, _____, filter, ______, _______) => filter,
      error: (_, __, filter) => filter ?? const TransportersFilter.empty(),
      actionInProgress: (_, filter, __, ___, ____, _____, ______) => filter,
      actionSuccess: (_, filter, __, ___, ____, _____, ______) => filter,
      actionError: (_, filter, __, ___, ____, _____, ______) => filter,
    );
  }

  /// Get the current view mode
  TransporterViewMode get viewMode {
    return when(
      initial: () => TransporterViewMode.list,
      loading: () => TransporterViewMode.list,
      loadingMore: () => TransporterViewMode.list,
      loaded: (_, __, ___, ____, _____, ______, viewMode, _______) => viewMode,
      error: (_, __, ___) => TransporterViewMode.list,
      actionInProgress: (_, __, viewMode, ___, ____, _____, ______) => viewMode,
      actionSuccess: (_, __, viewMode, ___, ____, _____, ______) => viewMode,
      actionError: (_, __, viewMode, ___, ____, _____, ______) => viewMode,
    );
  }

  /// Get selected transporter IDs
  List<int> get selectedTransporterIds {
    return when(
      initial: () => [],
      loading: () => [],
      loadingMore: () => [],
      loaded: (_, __, ___, ____, selectedIds, _____, ______, _______) => selectedIds,
      error: (_, __, ___) => [],
      actionInProgress: (_, __, ___, ____, _____, selectedIds, ______) => selectedIds,
      actionSuccess: (_, __, ___, ____, _____, selectedIds, ______) => selectedIds,
      actionError: (_, __, ___, ____, _____, selectedIds, ______) => selectedIds,
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
    );
  }

  /// Get available transporters count
  int get availableCount {
    return transporters.where((t) => t.isAvailable).length;
  }

  /// Get online transporters count
  int get onlineCount {
    return transporters.where((t) => t.isOnline).length;
  }

  /// Get blocked transporters count
  int get blockedCount {
    return transporters.where((t) => t.blocked).length;
  }

  /// Get average rating
  double get averageRating {
    if (transporters.isEmpty) return 0.0;
    final totalRating = transporters.fold(0.0, (sum, t) => sum + t.rating);
    return totalRating / transporters.length;
  }
}

/// Extension methods for TransportersFilter
extension TransportersFilterX on TransportersFilter {
  /// Check if filter is empty
  bool get isEmpty {
    return when(
      (status, cityId, isBlocked, availableOnly, search, minRating, minDeliveries, onlineOnly, topRatedOnly, latitude, longitude, maxDistanceKm) =>
          status == null &&
          cityId == null &&
          isBlocked == null &&
          availableOnly != true &&
          (search == null || search!.isEmpty) &&
          minRating == null &&
          minDeliveries == null &&
          !onlineOnly &&
          !topRatedOnly &&
          latitude == null &&
          longitude == null,
      empty: () => true,
    );
  }

  /// Get a summary of applied filters
  String get summary {
    final filters = <String>[];
    
    when(
      (status, cityId, isBlocked, availableOnly, search, minRating, minDeliveries, onlineOnly, topRatedOnly, latitude, longitude, maxDistanceKm) {
        if (status != null) filters.add('Statut: $status');
        if (cityId != null) filters.add('Ville: $cityId');
        if (isBlocked == true) filters.add('Bloqués');
        if (isBlocked == false) filters.add('Non bloqués');
        if (availableOnly == true) filters.add('Disponibles');
        if (search != null && search!.isNotEmpty) filters.add('Recherche: $search');
        if (minRating != null) filters.add('Note min: ${minRating!.toStringAsFixed(1)}⭐');
        if (minDeliveries != null) filters.add('Min ${minDeliveries!} livraisons');
        if (onlineOnly) filters.add('En ligne');
        if (topRatedOnly) filters.add('Mieux notés');
        if (latitude != null && longitude != null) {
          filters.add('Proximité: ${maxDistanceKm?.toStringAsFixed(1) ?? "10.0"}km');
        }
      },
      empty: () {},
    );

    return filters.isEmpty ? 'Aucun filtre' : filters.join(', ');
  }

  /// Get active filters count
  int get activeFiltersCount {
    return when(
      (status, cityId, isBlocked, availableOnly, search, minRating, minDeliveries, onlineOnly, topRatedOnly, latitude, longitude, maxDistanceKm) {
        int count = 0;
        if (status != null) count++;
        if (cityId != null) count++;
        if (isBlocked != null) count++;
        if (availableOnly == true) count++;
        if (search != null && search!.isNotEmpty) count++;
        if (minRating != null) count++;
        if (minDeliveries != null) count++;
        if (onlineOnly) count++;
        if (topRatedOnly) count++;
        if (latitude != null && longitude != null) count++;
        return count;
      },
      empty: () => 0,
    );
  }
}