import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/statistics_bloc.dart';
import '../blocs/statistics_event.dart';
import '../blocs/statistics_state.dart';
import '../services/orders_service.dart';
import '../models/transporter.dart';
import '../models/city.dart';
import '../models/auto_assignment_config.dart';

class OrdersStatisticsWidget extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final bool showPeriodSelector;
  final VoidCallback? onTap;

  const OrdersStatisticsWidget({
    super.key,
    this.padding,
    this.showPeriodSelector = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatisticsBloc, StatisticsState>(
      builder: (context, state) {
        return Container(
          padding: padding ?? const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context, state),
              const SizedBox(height: 16),
              _buildContent(context, state),
            ],
          ),
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context, StatisticsState state) {
    final theme = Theme.of(context);
    
    return Row(
      children: [
        Icon(
          Icons.analytics_outlined,
          size: 28,
          color: theme.colorScheme.primary,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tableau de bord',
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (state.isLoaded)
                Text(
                  _getPeriodText(state.period),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
            ],
          ),
        ),
        if (showPeriodSelector) _buildPeriodSelector(context, state),
        _buildRefreshButton(context, state),
      ],
    );
  }

  Widget _buildPeriodSelector(BuildContext context, StatisticsState state) {
    return PopupMenuButton<StatisticsPeriod>(
      icon: Icon(
        Icons.date_range_outlined,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      tooltip: 'Changer la période',
      onSelected: (period) {
        context.read<StatisticsBloc>().add(
          StatisticsEvent.changePeriod(period: period),
        );
      },
      itemBuilder: (context) => StatisticsPeriod.values.map((period) {
        return PopupMenuItem(
          value: period,
          child: Text(period.displayName),
        );
      }).toList(),
    );
  }

  Widget _buildRefreshButton(BuildContext context, StatisticsState state) {
    return IconButton(
      icon: Icon(
        Icons.refresh,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      tooltip: 'Actualiser',
      onPressed: state.isLoading
          ? null
          : () {
              context.read<StatisticsBloc>().add(
                const StatisticsEvent.refreshStatistics(),
              );
            },
    );
  }

  Widget _buildContent(BuildContext context, StatisticsState state) {
    return state.when(
      initial: () => _buildLoadingState(context),
      loading: () => _buildLoadingState(context),
      loaded: (orderStats, transporterStats, cityStats, autoStats, period, fromDate, toDate, cityId, analytics, lastUpdated) =>
          _buildLoadedState(context, orderStats, transporterStats, cityStats, autoStats),
      error: (message, orderStats, transporterStats, cityStats, autoStats, period) =>
          _buildErrorState(context, message, orderStats, transporterStats, cityStats, autoStats),
      partiallyLoaded: (orderStats, transporterStats, cityStats, autoStats, period, fromDate, toDate, cityId, loadingItems, errorItems) =>
          _buildPartiallyLoadedState(context, orderStats, transporterStats, cityStats, autoStats, errorItems),
      refreshing: (orderStats, transporterStats, cityStats, autoStats, period, fromDate, toDate, cityId) =>
          _buildRefreshingState(context, orderStats, transporterStats, cityStats, autoStats),
    );
  }

  Widget _buildLoadingState(BuildContext context) {
    return Column(
      children: [
        _buildStatisticsGrid(context, isLoading: true),
        const SizedBox(height: 16),
        const Center(
          child: CircularProgressIndicator(),
        ),
      ],
    );
  }

  Widget _buildLoadedState(
    BuildContext context,
    OrderStatistics orderStats,
    TransporterStatistics transporterStats,
    CityStatistics cityStats,
    AutoAssignmentStats autoStats,
  ) {
    return Column(
      children: [
        _buildStatisticsGrid(
          context,
          orderStats: orderStats,
          transporterStats: transporterStats,
          cityStats: cityStats,
          autoStats: autoStats,
        ),
        const SizedBox(height: 16),
        _buildQuickInsights(context, orderStats, transporterStats, autoStats),
      ],
    );
  }

  Widget _buildErrorState(
    BuildContext context,
    String message,
    OrderStatistics? orderStats,
    TransporterStatistics? transporterStats,
    CityStatistics? cityStats,
    AutoAssignmentStats? autoStats,
  ) {
    final theme = Theme.of(context);
    
    return Column(
      children: [
        if (orderStats != null)
          _buildStatisticsGrid(
            context,
            orderStats: orderStats,
            transporterStats: transporterStats,
            cityStats: cityStats,
            autoStats: autoStats,
          ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(
                  Icons.error_outline,
                  color: theme.colorScheme.error,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    message,
                    style: TextStyle(color: theme.colorScheme.error),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPartiallyLoadedState(
    BuildContext context,
    OrderStatistics? orderStats,
    TransporterStatistics? transporterStats,
    CityStatistics? cityStats,
    AutoAssignmentStats? autoStats,
    List<String> errorItems,
  ) {
    final theme = Theme.of(context);
    
    return Column(
      children: [
        _buildStatisticsGrid(
          context,
          orderStats: orderStats,
          transporterStats: transporterStats,
          cityStats: cityStats,
          autoStats: autoStats,
          isPartiallyLoaded: true,
        ),
        if (errorItems.isNotEmpty)
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Icon(
                    Icons.warning_outlined,
                    color: theme.colorScheme.primary,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Certaines données n\'ont pas pu être chargées: ${errorItems.join(', ')}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildRefreshingState(
    BuildContext context,
    OrderStatistics orderStats,
    TransporterStatistics transporterStats,
    CityStatistics cityStats,
    AutoAssignmentStats autoStats,
  ) {
    final theme = Theme.of(context);
    
    return Column(
      children: [
        Stack(
          children: [
            _buildStatisticsGrid(
              context,
              orderStats: orderStats,
              transporterStats: transporterStats,
              cityStats: cityStats,
              autoStats: autoStats,
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: LinearProgressIndicator(
                backgroundColor: Colors.transparent,
                valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildStatisticsGrid(
    BuildContext context, {
    OrderStatistics? orderStats,
    TransporterStatistics? transporterStats,
    CityStatistics? cityStats,
    AutoAssignmentStats? autoStats,
    bool isLoading = false,
    bool isPartiallyLoaded = false,
  }) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 1.5,
      children: [
        _buildStatCard(
          context,
          title: 'Commandes totales',
          value: isLoading ? '...' : (orderStats?.totalOrders.toString() ?? '0'),
          icon: Icons.shopping_bag_outlined,
          color: Colors.blue,
          isLoading: isLoading,
        ),
        _buildStatCard(
          context,
          title: 'Commandes actives',
          value: isLoading ? '...' : (orderStats?.activeOrders.toString() ?? '0'),
          icon: Icons.pending_actions_outlined,
          color: Colors.orange,
          isLoading: isLoading,
        ),
        _buildStatCard(
          context,
          title: 'Livrées aujourd\'hui',
          value: isLoading ? '...' : (orderStats?.deliveredToday.toString() ?? '0'),
          icon: Icons.check_circle_outlined,
          color: Colors.green,
          isLoading: isLoading,
        ),
        _buildStatCard(
          context,
          title: 'Transporteurs en ligne',
          value: isLoading ? '...' : (transporterStats?.onlineTransporters.toString() ?? '0'),
          icon: Icons.local_shipping_outlined,
          color: Colors.teal,
          isLoading: isLoading || transporterStats == null,
        ),
      ],
    );
  }

  Widget _buildStatCard(
    BuildContext context, {
    required String title,
    required String value,
    required IconData icon,
    required Color color,
    bool isLoading = false,
  }) {
    final theme = Theme.of(context);
    
    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerLow,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      icon,
                      color: color,
                      size: 24,
                    ),
                  ),
                  if (isLoading)
                    SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(color),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                value,
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onSurface,
                ),
              ),
              Text(
                title,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuickInsights(
    BuildContext context,
    OrderStatistics orderStats,
    TransporterStatistics transporterStats,
    AutoAssignmentStats autoStats,
  ) {
    final theme = Theme.of(context);
    
    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerLow,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Aperçu rapide',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: theme.colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 12),
            _buildInsightRow(
              context,
              'Taux de livraison',
              '${((orderStats.deliveredToday / (orderStats.totalOrders == 0 ? 1 : orderStats.totalOrders)) * 100).toStringAsFixed(1)}%',
              orderStats.deliveredToday > orderStats.returnedToday ? Colors.green : Colors.orange,
            ),
            _buildInsightRow(
              context,
              'Assignation automatique',
              autoStats.formattedSuccessRate,
              autoStats.hasGoodPerformance ? Colors.green : Colors.red,
            ),
            _buildInsightRow(
              context,
              'Transporteurs disponibles',
              '${transporterStats.onlineTransporters}/${transporterStats.totalTransporters}',
              transporterStats.onlineTransporters > 0 ? Colors.teal : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInsightRow(
    BuildContext context,
    String label,
    String value,
    Color color,
  ) {
    final theme = Theme.of(context);
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              value,
              style: theme.textTheme.bodySmall?.copyWith(
                color: color,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getPeriodText(StatisticsPeriod period) {
    return period.displayName;
  }
}