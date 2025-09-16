import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/order.dart';
import '../blocs/orders_bloc.dart';
import '../blocs/orders_event.dart';
import '../blocs/orders_state.dart';
import '../blocs/statistics_bloc.dart';
import '../blocs/statistics_event.dart';
import '../blocs/transporters_bloc.dart';
import '../blocs/transporters_event.dart';
import '../widgets/orders_statistics_widget.dart';
import '../widgets/enhanced_order_card.dart';
import '../widgets/orders_filter_widget.dart';
import '../widgets/transporter_assignment_modal.dart';
import '../services/signalr_initializer.dart';
import 'order_details_screen.dart';

/// Comprehensive orders management screen with Material Design 3
class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> 
    with TickerProviderStateMixin, SignalRConnectionMixin {
  
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();
  
  // Animation controllers
  late AnimationController _fabAnimationController;
  late Animation<double> _fabScaleAnimation;
  
  // State variables
  bool _isSelectionMode = false;
  bool _isFilterExpanded = false;
  OrderCardViewMode _viewMode = OrderCardViewMode.standard;
  
  @override
  void initState() {
    super.initState();
    _initializeAnimations();
    _initializeData();
    _setupScrollListener();
  }

  void _initializeAnimations() {
    _fabAnimationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _fabScaleAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _fabAnimationController,
      curve: Curves.easeInOut,
    ));
  }

  void _initializeData() {
    // Initialize statistics
    context.read<StatisticsBloc>().add(
      const StatisticsEvent.loadStatistics(),
    );
    
    // Initialize orders
    context.read<OrdersBloc>().add(
      const OrdersEvent.loadOrders(page: 1),
    );

    // Initialize transporters for potential assignments
    context.read<TransportersBloc>().add(
      const TransportersEvent.loadTransporters(),
    );

    // Ensure SignalR connection
    _ensureSignalRConnection();
  }

  void _setupScrollListener() {
    _scrollController.addListener(() {
      // Show/hide FAB based on scroll
      if (_scrollController.offset > 200 && !_fabAnimationController.isCompleted) {
        _fabAnimationController.forward();
      } else if (_scrollController.offset <= 200 && _fabAnimationController.isCompleted) {
        _fabAnimationController.reverse();
      }

      // Load more data when near bottom
      if (_scrollController.position.pixels >= 
          _scrollController.position.maxScrollExtent - 200) {
        context.read<OrdersBloc>().add(const OrdersEvent.loadMoreOrders());
      }
    });
  }

  Future<void> _ensureSignalRConnection() async {
    await ensureSignalRConnection();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return BlocListener<OrdersBloc, OrdersState>(
      listener: _handleOrdersStateChanges,
      child: Scaffold(
        backgroundColor: theme.colorScheme.surfaceContainerLowest,
        appBar: _buildAppBar(context, theme),
        body: _buildBody(context, theme),
        floatingActionButton: _buildFloatingActionButton(context, theme),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context, ThemeData theme) {
    return AppBar(
      title: BlocBuilder<OrdersBloc, OrdersState>(
        builder: (context, state) {
          final selectedCount = state.selectedOrderIds.length;
          
          if (_isSelectionMode && selectedCount > 0) {
            return Text(
              '$selectedCount commande${selectedCount > 1 ? 's' : ''} sélectionnée${selectedCount > 1 ? 's' : ''}',
              style: theme.textTheme.titleLarge?.copyWith(
                color: theme.colorScheme.onPrimary,
                fontWeight: FontWeight.w600,
              ),
            );
          }
          
          return Row(
            children: [
              Icon(
                Icons.business_center,
                color: theme.colorScheme.onPrimary,
                size: 24,
              ),
              const SizedBox(width: 8),
              Text(
                '3an3an Manager',
                style: theme.textTheme.titleLarge?.copyWith(
                  color: theme.colorScheme.onPrimary,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          );
        },
      ),
      backgroundColor: theme.colorScheme.primary,
      foregroundColor: theme.colorScheme.onPrimary,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      actions: _buildAppBarActions(context, theme),
    );
  }

  List<Widget> _buildAppBarActions(BuildContext context, ThemeData theme) {
    return BlocBuilder<OrdersBloc, OrdersState>(
      builder: (context, state) {
        if (_isSelectionMode) {
          return _buildSelectionModeActions(context, theme, state);
        }
        
        return [
          // Search toggle
          IconButton(
            icon: Icon(
              Icons.search,
              color: theme.colorScheme.onPrimary,
            ),
            onPressed: _toggleSearch,
            tooltip: 'Rechercher',
          ),
          
          // Filter toggle
          IconButton(
            icon: Stack(
              children: [
                Icon(
                  Icons.filter_list,
                  color: theme.colorScheme.onPrimary,
                ),
                if (state.filter.activeFiltersCount > 0)
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.error,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 16,
                        minHeight: 16,
                      ),
                      child: Text(
                        '${state.filter.activeFiltersCount}',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorScheme.onError,
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              ],
            ),
            onPressed: _toggleFilter,
            tooltip: 'Filtrer',
          ),
          
          // View mode toggle
          PopupMenuButton<OrderCardViewMode>(
            icon: Icon(
              _getViewModeIcon(),
              color: theme.colorScheme.onPrimary,
            ),
            tooltip: 'Mode d\'affichage',
            onSelected: _changeViewMode,
            itemBuilder: (context) => [
              PopupMenuItem(
                value: OrderCardViewMode.compact,
                child: Row(
                  children: [
                    Icon(
                      Icons.view_list,
                      color: _viewMode == OrderCardViewMode.compact
                          ? theme.colorScheme.primary
                          : theme.colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Compact',
                      style: TextStyle(
                        color: _viewMode == OrderCardViewMode.compact
                            ? theme.colorScheme.primary
                            : theme.colorScheme.onSurface,
                        fontWeight: _viewMode == OrderCardViewMode.compact
                            ? FontWeight.w600
                            : FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: OrderCardViewMode.standard,
                child: Row(
                  children: [
                    Icon(
                      Icons.view_agenda,
                      color: _viewMode == OrderCardViewMode.standard
                          ? theme.colorScheme.primary
                          : theme.colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Standard',
                      style: TextStyle(
                        color: _viewMode == OrderCardViewMode.standard
                            ? theme.colorScheme.primary
                            : theme.colorScheme.onSurface,
                        fontWeight: _viewMode == OrderCardViewMode.standard
                            ? FontWeight.w600
                            : FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: OrderCardViewMode.detailed,
                child: Row(
                  children: [
                    Icon(
                      Icons.view_day,
                      color: _viewMode == OrderCardViewMode.detailed
                          ? theme.colorScheme.primary
                          : theme.colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Détaillé',
                      style: TextStyle(
                        color: _viewMode == OrderCardViewMode.detailed
                            ? theme.colorScheme.primary
                            : theme.colorScheme.onSurface,
                        fontWeight: _viewMode == OrderCardViewMode.detailed
                            ? FontWeight.w600
                            : FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          
          // More options
          PopupMenuButton<String>(
            icon: Icon(
              Icons.more_vert,
              color: theme.colorScheme.onPrimary,
            ),
            onSelected: _handleMenuAction,
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'refresh',
                child: Row(
                  children: [
                    Icon(
                      Icons.refresh,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 8),
                    const Text('Actualiser'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'select_all',
                child: Row(
                  children: [
                    Icon(
                      Icons.select_all,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 8),
                    const Text('Mode sélection'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'settings',
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 8),
                    const Text('Paramètres'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'logout',
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: theme.colorScheme.error,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Déconnexion',
                      style: TextStyle(color: theme.colorScheme.error),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ];
      },
    );
  }

  List<Widget> _buildSelectionModeActions(BuildContext context, ThemeData theme, OrdersState state) {
    final selectedCount = state.selectedOrderIds.length;
    
    return [
      // Bulk assign
      if (selectedCount > 0)
        IconButton(
          icon: Icon(
            Icons.person_add,
            color: theme.colorScheme.onPrimary,
          ),
          onPressed: () => _bulkAssignOrders(context, state),
          tooltip: 'Assigner en masse',
        ),
      
      // Select all
      IconButton(
        icon: Icon(
          Icons.select_all,
          color: theme.colorScheme.onPrimary,
        ),
        onPressed: () {
          context.read<OrdersBloc>().add(const OrdersEvent.selectAllOrders());
        },
        tooltip: 'Sélectionner tout',
      ),
      
      // Exit selection mode
      IconButton(
        icon: Icon(
          Icons.close,
          color: theme.colorScheme.onPrimary,
        ),
        onPressed: _exitSelectionMode,
        tooltip: 'Quitter',
      ),
    ];
  }

  Widget _buildBody(BuildContext context, ThemeData theme) {
    return Column(
      children: [
        // Statistics widget
        const OrdersStatisticsWidget(),
        
        // Filter widget (expandable)
        if (_isFilterExpanded)
          BlocBuilder<OrdersBloc, OrdersState>(
            builder: (context, state) {
              return OrdersFilterWidget(
                initialFilter: state.filter,
                isExpanded: _isFilterExpanded,
                onClose: () => setState(() => _isFilterExpanded = false),
                onFilterChanged: (filter) {
                  context.read<OrdersBloc>().add(
                    OrdersEvent.applyFilter(filter: filter),
                  );
                },
              );
            },
          ),
        
        // Orders list
        Expanded(
          child: _buildOrdersList(context, theme),
        ),
      ],
    );
  }

  Widget _buildOrdersList(BuildContext context, ThemeData theme) {
    return BlocBuilder<OrdersBloc, OrdersState>(
      builder: (context, state) {
        return state.when(
          initial: () => _buildLoadingState(theme),
          loading: () => _buildLoadingState(theme),
          loadingMore: () => _buildOrdersListView(context, theme, state.orders, isLoadingMore: true),
          loaded: (orders, hasReachedMax, currentPage, pageSize, selectedIds, filter, viewMode, sortConfig) =>
              _buildOrdersListView(context, theme, orders),
          error: (message, orders, filter) =>
              _buildErrorState(context, theme, message, orders ?? []),
          actionInProgress: (orders, filter, viewMode, sortConfig, actionType, selectedIds, actionMessage) =>
              _buildOrdersListView(context, theme, orders, showProgressIndicator: true),
          actionSuccess: (orders, filter, viewMode, sortConfig, actionType, successMessage, selectedIds) =>
              _buildOrdersListView(context, theme, orders),
          actionError: (orders, filter, viewMode, sortConfig, actionType, errorMessage, selectedIds) =>
              _buildOrdersListView(context, theme, orders),
        );
      },
    );
  }

  Widget _buildLoadingState(ThemeData theme) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary),
              strokeWidth: 3,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Chargement des commandes...',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, ThemeData theme, String message, List<Order> orders) {
    return Column(
      children: [
        if (orders.isNotEmpty)
          Expanded(child: _buildOrdersListView(context, theme, orders)),
        Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: theme.colorScheme.errorContainer,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Icon(
                Icons.error_outline,
                color: theme.colorScheme.onErrorContainer,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  message,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onErrorContainer,
                  ),
                ),
              ),
              FilledButton(
                onPressed: () {
                  context.read<OrdersBloc>().add(const OrdersEvent.refreshOrders());
                },
                style: FilledButton.styleFrom(
                  backgroundColor: theme.colorScheme.onErrorContainer,
                  foregroundColor: theme.colorScheme.errorContainer,
                ),
                child: const Text('Réessayer'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildOrdersListView(
    BuildContext context,
    ThemeData theme,
    List<Order> orders, {
    bool isLoadingMore = false,
    bool showProgressIndicator = false,
  }) {
    if (orders.isEmpty && !isLoadingMore) {
      return _buildEmptyState(theme);
    }

    return RefreshIndicator(
      onRefresh: () async {
        context.read<OrdersBloc>().add(const OrdersEvent.refreshOrders());
        context.read<StatisticsBloc>().add(const StatisticsEvent.refreshStatistics());
      },
      child: ListView.builder(
        controller: _scrollController,
        padding: const EdgeInsets.all(8),
        itemCount: orders.length + (isLoadingMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index >= orders.length) {
            return _buildLoadingMoreIndicator(theme);
          }

          final order = orders[index];
          
          return BlocBuilder<OrdersBloc, OrdersState>(
            builder: (context, state) {
              final isSelected = state.selectedOrderIds.contains(order.id);
              
              return EnhancedOrderCard(
                key: ValueKey(order.id),
                order: order,
                viewMode: _viewMode,
                isSelected: isSelected,
                isSelectionMode: _isSelectionMode,
                onTap: _isSelectionMode ? null : () => _navigateToOrderDetails(order),
                onLongPress: _isSelectionMode ? null : () => _enterSelectionMode(order),
                onSelectionChanged: (selected) {
                  if (selected) {
                    context.read<OrdersBloc>().add(
                      OrdersEvent.selectOrder(orderId: order.id),
                    );
                  } else {
                    context.read<OrdersBloc>().add(
                      OrdersEvent.deselectOrder(orderId: order.id),
                    );
                  }
                },
                showActions: !_isSelectionMode,
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildEmptyState(ThemeData theme) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.receipt_long_outlined,
            size: 80,
            color: theme.colorScheme.onSurfaceVariant.withOpacity(0.5),
          ),
          const SizedBox(height: 24),
          Text(
            'Aucune commande trouvée',
            style: theme.textTheme.headlineSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Les commandes apparaîtront ici une fois créées',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant.withOpacity(0.8),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () {
              context.read<OrdersBloc>().add(const OrdersEvent.refreshOrders());
            },
            icon: const Icon(Icons.refresh),
            label: const Text('Actualiser'),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingMoreIndicator(ThemeData theme) {
    return Container(
      padding: const EdgeInsets.all(16),
      alignment: Alignment.center,
      child: SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary),
        ),
      ),
    );
  }

  Widget _buildFloatingActionButton(BuildContext context, ThemeData theme) {
    return ScaleTransition(
      scale: _fabScaleAnimation,
      child: FloatingActionButton.extended(
        onPressed: () => _scrollToTop(),
        backgroundColor: theme.colorScheme.primaryContainer,
        foregroundColor: theme.colorScheme.onPrimaryContainer,
        icon: const Icon(Icons.keyboard_arrow_up),
        label: const Text('Haut'),
        tooltip: 'Retour en haut',
      ),
    );
  }

  void _handleOrdersStateChanges(BuildContext context, OrdersState state) {
    state.whenOrNull(
      actionSuccess: (orders, filter, viewMode, sortConfig, actionType, successMessage, selectedIds) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(successMessage),
            backgroundColor: Theme.of(context).colorScheme.primary,
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
      actionError: (orders, filter, viewMode, sortConfig, actionType, errorMessage, selectedIds) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(errorMessage),
            backgroundColor: Theme.of(context).colorScheme.error,
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
    );
  }

  void _toggleSearch() {
    // TODO: Implement search toggle
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Fonctionnalité de recherche en développement'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _toggleFilter() {
    setState(() {
      _isFilterExpanded = !_isFilterExpanded;
    });
  }

  void _changeViewMode(OrderCardViewMode mode) {
    setState(() {
      _viewMode = mode;
    });
  }

  IconData _getViewModeIcon() {
    switch (_viewMode) {
      case OrderCardViewMode.compact:
        return Icons.view_list;
      case OrderCardViewMode.standard:
        return Icons.view_agenda;
      case OrderCardViewMode.detailed:
        return Icons.view_day;
    }
  }

  void _handleMenuAction(String action) {
    switch (action) {
      case 'refresh':
        context.read<OrdersBloc>().add(const OrdersEvent.refreshOrders());
        context.read<StatisticsBloc>().add(const StatisticsEvent.refreshStatistics());
        break;
      case 'select_all':
        _enterSelectionMode();
        break;
      case 'settings':
        // TODO: Navigate to settings
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Paramètres en développement'),
            behavior: SnackBarBehavior.floating,
          ),
        );
        break;
      case 'logout':
        _logout();
        break;
    }
  }

  void _enterSelectionMode([Order? initialOrder]) {
    setState(() {
      _isSelectionMode = true;
    });
    
    if (initialOrder != null) {
      context.read<OrdersBloc>().add(
        OrdersEvent.selectOrder(orderId: initialOrder.id),
      );
    }
  }

  void _exitSelectionMode() {
    setState(() {
      _isSelectionMode = false;
    });
    
    context.read<OrdersBloc>().add(const OrdersEvent.clearSelection());
  }

  void _bulkAssignOrders(BuildContext context, OrdersState state) {
    final selectedOrders = state.orders
        .where((order) => state.selectedOrderIds.contains(order.id))
        .toList();
    
    if (selectedOrders.isEmpty) return;
    
    TransporterAssignmentModal.showBulk(
      context,
      primaryOrder: selectedOrders.first,
      bulkOrders: selectedOrders,
      onAssignmentCompleted: () {
        _exitSelectionMode();
        context.read<OrdersBloc>().add(const OrdersEvent.refreshOrders());
      },
    );
  }

  void _navigateToOrderDetails(Order order) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OrderDetailsScreen(order: order),
      ),
    ).then((_) {
      // Refresh orders when coming back
      context.read<OrdersBloc>().add(const OrdersEvent.refreshOrders());
    });
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void _logout() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Déconnexion'),
        content: const Text('Êtes-vous sûr de vouloir vous déconnecter ?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Annuler'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
              // TODO: Implement logout logic
              Navigator.pushReplacementNamed(context, '/login');
            },
            child: const Text('Déconnexion'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _fabAnimationController.dispose();
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }
}