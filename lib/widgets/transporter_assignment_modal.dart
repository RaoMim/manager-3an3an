import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/order.dart';
import '../models/transporter.dart';
import '../models/city.dart';
import '../blocs/transporters_bloc.dart';
import '../blocs/transporters_event.dart';
import '../blocs/transporters_state.dart';
import '../blocs/orders_bloc.dart';
import '../blocs/orders_event.dart';
import '../services/transporter_service.dart';

/// Modal for assigning transporters to orders with Material Design 3
class TransporterAssignmentModal extends StatefulWidget {
  final Order order;
  final List<Order>? bulkOrders;
  final VoidCallback? onAssignmentCompleted;

  const TransporterAssignmentModal({
    super.key,
    required this.order,
    this.bulkOrders,
    this.onAssignmentCompleted,
  });

  /// Show modal for single order assignment
  static Future<bool?> show(
    BuildContext context, {
    required Order order,
    VoidCallback? onAssignmentCompleted,
  }) {
    return showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => TransporterAssignmentModal(
        order: order,
        onAssignmentCompleted: onAssignmentCompleted,
      ),
    );
  }

  /// Show modal for bulk order assignment
  static Future<bool?> showBulk(
    BuildContext context, {
    required Order primaryOrder,
    required List<Order> bulkOrders,
    VoidCallback? onAssignmentCompleted,
  }) {
    return showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => TransporterAssignmentModal(
        order: primaryOrder,
        bulkOrders: bulkOrders,
        onAssignmentCompleted: onAssignmentCompleted,
      ),
    );
  }

  @override
  State<TransporterAssignmentModal> createState() => _TransporterAssignmentModalState();
}

class _TransporterAssignmentModalState extends State<TransporterAssignmentModal> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  
  Transporter? _selectedTransporter;
  String _searchQuery = '';
  bool _isAssigning = false;
  AssignmentMode _assignmentMode = AssignmentMode.automatic;
  
  @override
  void initState() {
    super.initState();
    _loadAvailableTransporters();
    _scrollController.addListener(_onScroll);
  }

  void _loadAvailableTransporters() {
    context.read<TransportersBloc>().add(
      TransportersEvent.loadAvailableTransporters(
        cityId: widget.order.cityId,
        latitude: widget.order.latitude,
        longitude: widget.order.longitude,
        maxDistanceKm: 15.0, // Default 15km radius
      ),
    );
  }

  void _onScroll() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      // Load more transporters if needed
      context.read<TransportersBloc>().add(const TransportersEvent.loadMoreTransporters());
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    
    return Container(
      height: mediaQuery.size.height * 0.85,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
      ),
      child: Column(
        children: [
          _buildHeader(context, theme),
          Expanded(
            child: _buildContent(context, theme),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, ThemeData theme) {
    final isBulkAssignment = widget.bulkOrders != null;
    
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
      ),
      child: Column(
        children: [
          // Handle bar
          Container(
            width: 40,
            height: 4,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: theme.colorScheme.onSurfaceVariant.withOpacity(0.4),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          
          // Title and close button
          Row(
            children: [
              Icon(
                isBulkAssignment ? Icons.group_add : Icons.person_add,
                color: theme.colorScheme.primary,
                size: 28,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isBulkAssignment 
                          ? 'Assignation groupée'
                          : 'Assigner un transporteur',
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    Text(
                      isBulkAssignment
                          ? '${widget.bulkOrders!.length} commandes sélectionnées'
                          : 'Commande #${widget.order.orderNumber}',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () => Navigator.pop(context, false),
                icon: Icon(
                  Icons.close,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                tooltip: 'Fermer',
              ),
            ],
          ),
          
          const SizedBox(height: 16),
          
          // Assignment mode selector
          _buildAssignmentModeSelector(context, theme),
        ],
      ),
    );
  }

  Widget _buildAssignmentModeSelector(BuildContext context, ThemeData theme) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: _buildModeButton(
              context,
              theme,
              AssignmentMode.automatic,
              'Automatique',
              Icons.auto_fix_high,
              'Le système choisit le meilleur transporteur',
            ),
          ),
          const SizedBox(width: 4),
          Expanded(
            child: _buildModeButton(
              context,
              theme,
              AssignmentMode.manual,
              'Manuel',
              Icons.person_search,
              'Choisir manuellement un transporteur',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildModeButton(
    BuildContext context,
    ThemeData theme,
    AssignmentMode mode,
    String label,
    IconData icon,
    String description,
  ) {
    final isSelected = _assignmentMode == mode;
    
    return InkWell(
      onTap: () => setState(() => _assignmentMode = mode),
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? theme.colorScheme.primaryContainer : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 20,
                  color: isSelected 
                      ? theme.colorScheme.onPrimaryContainer 
                      : theme.colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: 8),
                Text(
                  label,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: isSelected 
                        ? theme.colorScheme.onPrimaryContainer 
                        : theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              description,
              style: theme.textTheme.bodySmall?.copyWith(
                color: isSelected 
                    ? theme.colorScheme.onPrimaryContainer.withOpacity(0.8)
                    : theme.colorScheme.onSurfaceVariant.withOpacity(0.8),
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, ThemeData theme) {
    if (_assignmentMode == AssignmentMode.automatic) {
      return _buildAutomaticAssignment(context, theme);
    } else {
      return _buildManualAssignment(context, theme);
    }
  }

  Widget _buildAutomaticAssignment(BuildContext context, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          // Auto assignment info
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer.withOpacity(0.3),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: theme.colorScheme.primary.withOpacity(0.3),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.auto_fix_high,
                        color: theme.colorScheme.onPrimary,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Assignation automatique intelligente',
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                          Text(
                            'Le système analysera et choisira le transporteur optimal',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                _buildCriteriaList(context, theme),
              ],
            ),
          ),
          
          const Spacer(),
          
          // Assignment button
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              onPressed: _isAssigning ? null : _handleAutomaticAssignment,
              icon: _isAssigning
                  ? SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          theme.colorScheme.onPrimary,
                        ),
                      ),
                    )
                  : const Icon(Icons.auto_fix_high),
              label: Text(
                _isAssigning 
                    ? 'Assignation en cours...' 
                    : 'Démarrer l\'assignation automatique',
              ),
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCriteriaList(BuildContext context, ThemeData theme) {
    final criteria = [
      ('Proximité géographique', 'Distance optimale par rapport à la destination'),
      ('Disponibilité', 'Transporteurs en ligne et disponibles'),
      ('Historique de performance', 'Note et taux de réussite des livraisons'),
      ('Charge de travail', 'Répartition équitable des commandes'),
    ];

    return Column(
      children: criteria.map((criterion) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: [
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      criterion.$1,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    Text(
                      criterion.$2,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildManualAssignment(BuildContext context, ThemeData theme) {
    return Column(
      children: [
        // Search bar
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Rechercher un transporteur...',
              prefixIcon: Icon(
                Icons.search,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              suffixIcon: _searchController.text.isNotEmpty
                  ? IconButton(
                      icon: Icon(
                        Icons.clear,
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                      onPressed: () {
                        _searchController.clear();
                        setState(() => _searchQuery = '');
                        _searchTransporters('');
                      },
                    )
                  : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: theme.colorScheme.surfaceContainerLow,
              contentPadding: const EdgeInsets.symmetric(vertical: 16),
            ),
            onChanged: (value) {
              setState(() => _searchQuery = value);
              _searchTransporters(value);
            },
          ),
        ),
        
        // Transporters list
        Expanded(
          child: BlocBuilder<TransportersBloc, TransportersState>(
            builder: (context, state) {
              return state.when(
                initial: () => _buildLoadingState(theme),
                loading: () => _buildLoadingState(theme),
                loadingMore: () => _buildTransportersList(context, theme, state.transporters, isLoadingMore: true),
                loaded: (transporters, hasReachedMax, currentPage, pageSize, selectedIds, filter, viewMode, sortConfig) =>
                    _buildTransportersList(context, theme, transporters),
                error: (message, transporters, filter) =>
                    _buildErrorState(context, theme, message, transporters ?? []),
                actionInProgress: (transporters, filter, viewMode, sortConfig, actionType, selectedIds, actionMessage) =>
                    _buildTransportersList(context, theme, transporters),
                actionSuccess: (transporters, filter, viewMode, sortConfig, actionType, successMessage, selectedIds) =>
                    _buildTransportersList(context, theme, transporters),
                actionError: (transporters, filter, viewMode, sortConfig, actionType, errorMessage, selectedIds) =>
                    _buildTransportersList(context, theme, transporters),
              );
            },
          ),
        ),
        
        // Assignment button
        if (_selectedTransporter != null)
          Container(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: _isAssigning ? null : _handleManualAssignment,
                icon: _isAssigning
                    ? SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            theme.colorScheme.onPrimary,
                          ),
                        ),
                      )
                    : const Icon(Icons.person_add),
                label: Text(
                  _isAssigning 
                      ? 'Assignation en cours...' 
                      : 'Assigner à ${_selectedTransporter!.name}',
                ),
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildLoadingState(ThemeData theme) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary),
          ),
          const SizedBox(height: 16),
          Text(
            'Chargement des transporteurs...',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, ThemeData theme, String message, List<Transporter> transporters) {
    return Column(
      children: [
        if (transporters.isNotEmpty)
          Expanded(child: _buildTransportersList(context, theme, transporters)),
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
              TextButton(
                onPressed: _loadAvailableTransporters,
                child: Text(
                  'Réessayer',
                  style: TextStyle(color: theme.colorScheme.onErrorContainer),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTransportersList(BuildContext context, ThemeData theme, List<Transporter> transporters, {bool isLoadingMore = false}) {
    if (transporters.isEmpty) {
      return _buildEmptyState(theme);
    }

    return ListView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: transporters.length + (isLoadingMore ? 1 : 0),
      itemBuilder: (context, index) {
        if (index >= transporters.length) {
          return _buildLoadingMoreIndicator(theme);
        }

        final transporter = transporters[index];
        final isSelected = _selectedTransporter?.id == transporter.id;
        
        return _buildTransporterCard(context, theme, transporter, isSelected);
      },
    );
  }

  Widget _buildEmptyState(ThemeData theme) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search_off,
            size: 64,
            color: theme.colorScheme.onSurfaceVariant.withOpacity(0.5),
          ),
          const SizedBox(height: 16),
          Text(
            'Aucun transporteur disponible',
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Essayez d\'ajuster vos critères de recherche',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant.withOpacity(0.8),
            ),
            textAlign: TextAlign.center,
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

  Widget _buildTransporterCard(BuildContext context, ThemeData theme, Transporter transporter, bool isSelected) {
    return Card(
      elevation: isSelected ? 8 : 2,
      margin: const EdgeInsets.symmetric(vertical: 4),
      color: isSelected 
          ? theme.colorScheme.primaryContainer.withOpacity(0.3)
          : theme.colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: isSelected
            ? BorderSide(color: theme.colorScheme.primary, width: 2)
            : BorderSide.none,
      ),
      child: InkWell(
        onTap: () => setState(() => _selectedTransporter = isSelected ? null : transporter),
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // Avatar
              CircleAvatar(
                radius: 24,
                backgroundColor: theme.colorScheme.primary,
                child: Text(
                  transporter.name[0].toUpperCase(),
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              
              // Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            transporter.name,
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: transporter.isOnline 
                                ? Colors.green 
                                : theme.colorScheme.outline,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            transporter.isOnline ? 'En ligne' : 'Hors ligne',
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                          size: 16,
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          transporter.phone,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 16,
                              color: Colors.amber,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              transporter.rating.toStringAsFixed(1),
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '${transporter.totalDeliveries} livraisons',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
              // Selection indicator
              if (isSelected)
                Container(
                  margin: const EdgeInsets.only(left: 12),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.check,
                    color: theme.colorScheme.onPrimary,
                    size: 16,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void _searchTransporters(String query) {
    context.read<TransportersBloc>().add(
      TransportersEvent.searchTransporters(query: query),
    );
  }

  Future<void> _handleAutomaticAssignment() async {
    setState(() => _isAssigning = true);

    try {
      if (widget.bulkOrders != null) {
        // Bulk assignment
        for (final order in widget.bulkOrders!) {
          context.read<OrdersBloc>().add(
            OrdersEvent.autoAssignOrder(orderId: order.id),
          );
        }
      } else {
        // Single assignment
        context.read<OrdersBloc>().add(
          OrdersEvent.autoAssignOrder(orderId: widget.order.id),
        );
      }

      // Wait for assignment completion
      await Future.delayed(const Duration(seconds: 2));

      if (mounted) {
        widget.onAssignmentCompleted?.call();
        Navigator.pop(context, true);
        
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              widget.bulkOrders != null
                  ? 'Assignation automatique démarrée pour ${widget.bulkOrders!.length} commandes'
                  : 'Assignation automatique démarrée pour la commande #${widget.order.orderNumber}',
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        setState(() => _isAssigning = false);
        
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erreur lors de l\'assignation: $e'),
            backgroundColor: Theme.of(context).colorScheme.error,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }

  Future<void> _handleManualAssignment() async {
    if (_selectedTransporter == null) return;

    setState(() => _isAssigning = true);

    try {
      if (widget.bulkOrders != null) {
        // Bulk assignment
        for (final order in widget.bulkOrders!) {
          context.read<OrdersBloc>().add(
            OrdersEvent.assignOrder(
              orderId: order.id,
              transporterId: _selectedTransporter!.id,
            ),
          );
        }
      } else {
        // Single assignment
        context.read<OrdersBloc>().add(
          OrdersEvent.assignOrder(
            orderId: widget.order.id,
            transporterId: _selectedTransporter!.id,
          ),
        );
      }

      // Wait for assignment completion
      await Future.delayed(const Duration(seconds: 1));

      if (mounted) {
        widget.onAssignmentCompleted?.call();
        Navigator.pop(context, true);
        
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              widget.bulkOrders != null
                  ? '${widget.bulkOrders!.length} commandes assignées à ${_selectedTransporter!.name}'
                  : 'Commande #${widget.order.orderNumber} assignée à ${_selectedTransporter!.name}',
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        setState(() => _isAssigning = false);
        
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erreur lors de l\'assignation: $e'),
            backgroundColor: Theme.of(context).colorScheme.error,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}

/// Enum for assignment modes
enum AssignmentMode {
  automatic,
  manual,
}