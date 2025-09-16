import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../models/order.dart';
import '../models/transporter.dart';
import '../models/city.dart';
import '../blocs/orders_bloc.dart';
import '../blocs/orders_event.dart';
import '../blocs/orders_state.dart';
import '../services/signalr_initializer.dart';

/// Enhanced order card widget with expandable details and Material Design 3
class EnhancedOrderCard extends StatefulWidget {
  final Order order;
  final bool isSelected;
  final bool isSelectionMode;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final Function(bool)? onSelectionChanged;
  final OrderCardViewMode viewMode;
  final bool showActions;
  final bool isExpanded;
  final Function(bool)? onExpansionChanged;

  const EnhancedOrderCard({
    super.key,
    required this.order,
    this.isSelected = false,
    this.isSelectionMode = false,
    this.onTap,
    this.onLongPress,
    this.onSelectionChanged,
    this.viewMode = OrderCardViewMode.standard,
    this.showActions = true,
    this.isExpanded = false,
    this.onExpansionChanged,
  });

  @override
  State<EnhancedOrderCard> createState() => _EnhancedOrderCardState();
}

class _EnhancedOrderCardState extends State<EnhancedOrderCard> with SignalRConnectionMixin {
  bool _isExpanded = false;
  bool _isActionInProgress = false;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.isExpanded;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return BlocListener<OrdersBloc, OrdersState>(
      listener: (context, state) {
        // Handle action states
        state.whenOrNull(
          actionInProgress: (orders, filter, viewMode, sortConfig, actionType, selectedIds, actionMessage) {
            if (selectedIds.contains(widget.order.id)) {
              setState(() => _isActionInProgress = true);
            }
          },
          actionSuccess: (orders, filter, viewMode, sortConfig, actionType, successMessage, selectedIds) {
            if (selectedIds.contains(widget.order.id)) {
              setState(() => _isActionInProgress = false);
              _showSnackBar(context, successMessage, isError: false);
            }
          },
          actionError: (orders, filter, viewMode, sortConfig, actionType, errorMessage, selectedIds) {
            if (selectedIds.contains(widget.order.id)) {
              setState(() => _isActionInProgress = false);
              _showSnackBar(context, errorMessage, isError: true);
            }
          },
        );
      },
      child: Card(
        elevation: widget.isSelected ? 8 : 2,
        color: widget.isSelected 
            ? theme.colorScheme.primaryContainer.withOpacity(0.3)
            : theme.colorScheme.surface,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: widget.isSelected
              ? BorderSide(color: theme.colorScheme.primary, width: 2)
              : BorderSide.none,
        ),
        child: InkWell(
          onTap: widget.isSelectionMode ? _handleSelectionTap : widget.onTap,
          onLongPress: widget.onLongPress,
          borderRadius: BorderRadius.circular(16),
          child: _buildCardContent(context, theme),
        ),
      ),
    );
  }

  Widget _buildCardContent(BuildContext context, ThemeData theme) {
    switch (widget.viewMode) {
      case OrderCardViewMode.compact:
        return _buildCompactView(context, theme);
      case OrderCardViewMode.detailed:
        return _buildDetailedView(context, theme);
      case OrderCardViewMode.standard:
      default:
        return _buildStandardView(context, theme);
    }
  }

  Widget _buildCompactView(BuildContext context, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          if (widget.isSelectionMode) _buildSelectionCheckbox(theme),
          _buildStatusIndicator(theme),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '#${widget.order.orderNumber}',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                Text(
                  '${widget.order.clientName} • ${widget.order.city?.name ?? "Ville inconnue"}',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Text(
            '${widget.order.totalAmount.toStringAsFixed(2)} DH',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
              color: theme.colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStandardView(BuildContext context, ThemeData theme) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context, theme),
              const SizedBox(height: 12),
              _buildOrderInfo(context, theme),
              if (widget.order.transporter != null) ...[
                const SizedBox(height: 12),
                _buildTransporterInfo(context, theme),
              ],
              if (widget.showActions) ...[
                const SizedBox(height: 12),
                _buildQuickActions(context, theme),
              ],
            ],
          ),
        ),
        if (_canExpand()) _buildExpansionToggle(context, theme),
        if (_isExpanded) _buildExpandedContent(context, theme),
      ],
    );
  }

  Widget _buildDetailedView(BuildContext context, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context, theme),
          const SizedBox(height: 16),
          _buildOrderInfo(context, theme),
          const SizedBox(height: 16),
          _buildLocationInfo(context, theme),
          if (widget.order.transporter != null) ...[
            const SizedBox(height: 16),
            _buildTransporterInfo(context, theme),
          ],
          const SizedBox(height: 16),
          _buildTimestamps(context, theme),
          if (widget.showActions) ...[
            const SizedBox(height: 16),
            _buildActionButtons(context, theme),
          ],
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, ThemeData theme) {
    return Row(
      children: [
        if (widget.isSelectionMode) _buildSelectionCheckbox(theme),
        _buildStatusIndicator(theme),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '#${widget.order.orderNumber}',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  if (widget.order.isPriority) ...[
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.error,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'URGENT',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorScheme.onError,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
              Text(
                widget.order.clientName,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '${widget.order.totalAmount.toStringAsFixed(2)} DH',
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: theme.colorScheme.primary,
              ),
            ),
            Text(
              _formatDate(widget.order.createdAt),
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSelectionCheckbox(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Checkbox(
        value: widget.isSelected,
        onChanged: (value) => widget.onSelectionChanged?.call(value ?? false),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    );
  }

  Widget _buildStatusIndicator(ThemeData theme) {
    final statusColor = _getStatusColor(theme);
    final statusIcon = _getStatusIcon();

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: statusColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: statusColor.withOpacity(0.3),
          width: 2,
        ),
      ),
      child: Icon(
        statusIcon,
        color: statusColor,
        size: 24,
      ),
    );
  }

  Widget _buildOrderInfo(BuildContext context, ThemeData theme) {
    return Column(
      children: [
        _buildInfoRow(
          context,
          icon: Icons.location_on_outlined,
          label: 'Destination',
          value: '${widget.order.city?.name ?? "Ville inconnue"} • ${widget.order.address}',
          theme: theme,
        ),
        const SizedBox(height: 8),
        _buildInfoRow(
          context,
          icon: Icons.phone_outlined,
          label: 'Téléphone',
          value: widget.order.clientPhone,
          theme: theme,
        ),
        if (widget.order.notes.isNotEmpty) ...[
          const SizedBox(height: 8),
          _buildInfoRow(
            context,
            icon: Icons.note_outlined,
            label: 'Notes',
            value: widget.order.notes,
            theme: theme,
            maxLines: 2,
          ),
        ],
      ],
    );
  }

  Widget _buildLocationInfo(BuildContext context, ThemeData theme) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: theme.colorScheme.outline.withOpacity(0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.map_outlined,
                color: theme.colorScheme.primary,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'Informations de livraison',
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: theme.colorScheme.onSurface,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            widget.order.address,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          if (widget.order.latitude != null && widget.order.longitude != null) ...[
            const SizedBox(height: 4),
            Text(
              'GPS: ${widget.order.latitude!.toStringAsFixed(6)}, ${widget.order.longitude!.toStringAsFixed(6)}',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                fontFamily: 'monospace',
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildTransporterInfo(BuildContext context, ThemeData theme) {
    final transporter = widget.order.transporter!;
    
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(0.3),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: theme.colorScheme.primary,
            child: Text(
              transporter.name[0].toUpperCase(),
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.onPrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        transporter.name,
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: transporter.isOnline 
                            ? Colors.green 
                            : theme.colorScheme.outline,
                        borderRadius: BorderRadius.circular(8),
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
                const SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: 14,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      transporter.phone,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 14,
                          color: Colors.amber,
                        ),
                        const SizedBox(width: 2),
                        Text(
                          transporter.rating.toStringAsFixed(1),
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w500,
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
        ],
      ),
    );
  }

  Widget _buildTimestamps(BuildContext context, ThemeData theme) {
    return Column(
      children: [
        _buildInfoRow(
          context,
          icon: Icons.access_time,
          label: 'Créée le',
          value: _formatDateTime(widget.order.createdAt),
          theme: theme,
        ),
        if (widget.order.assignedAt != null) ...[
          const SizedBox(height: 8),
          _buildInfoRow(
            context,
            icon: Icons.person_add,
            label: 'Assignée le',
            value: _formatDateTime(widget.order.assignedAt!),
            theme: theme,
          ),
        ],
        if (widget.order.deliveredAt != null) ...[
          const SizedBox(height: 8),
          _buildInfoRow(
            context,
            icon: Icons.check_circle,
            label: 'Livrée le',
            value: _formatDateTime(widget.order.deliveredAt!),
            theme: theme,
          ),
        ],
      ],
    );
  }

  Widget _buildInfoRow(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
    required ThemeData theme,
    int? maxLines,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 20,
          color: theme.colorScheme.onSurfaceVariant,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                value,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
                maxLines: maxLines,
                overflow: maxLines != null ? TextOverflow.ellipsis : null,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildQuickActions(BuildContext context, ThemeData theme) {
    if (_isActionInProgress) {
      return Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            'Action en cours...',
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      );
    }

    final actions = <Widget>[];
    
    if (widget.order.canAssign) {
      actions.add(_buildActionChip(
        context,
        label: 'Assigner',
        icon: Icons.person_add,
        color: Colors.blue,
        onTap: () => _handleAssignOrder(context),
      ));
    }
    
    if (widget.order.canCancel) {
      actions.add(_buildActionChip(
        context,
        label: 'Annuler',
        icon: Icons.cancel,
        color: Colors.red,
        onTap: () => _handleCancelOrder(context),
      ));
    }
    
    if (widget.order.canComplete && widget.order.transporter != null) {
      actions.add(_buildActionChip(
        context,
        label: 'Compléter',
        icon: Icons.check_circle,
        color: Colors.green,
        onTap: () => _handleCompleteOrder(context),
      ));
    }

    if (actions.isEmpty) return const SizedBox.shrink();

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: actions,
    );
  }

  Widget _buildActionButtons(BuildContext context, ThemeData theme) {
    if (_isActionInProgress) {
      return const Center(child: CircularProgressIndicator());
    }

    return Row(
      children: [
        if (widget.order.canAssign)
          Expanded(
            child: FilledButton.icon(
              onPressed: () => _handleAssignOrder(context),
              icon: const Icon(Icons.person_add),
              label: const Text('Assigner'),
              style: FilledButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
            ),
          ),
        
        if (widget.order.canAssign && widget.order.canCancel) 
          const SizedBox(width: 8),
        
        if (widget.order.canCancel)
          Expanded(
            child: FilledButton.icon(
              onPressed: () => _handleCancelOrder(context),
              icon: const Icon(Icons.cancel),
              label: const Text('Annuler'),
              style: FilledButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
            ),
          ),
        
        if (widget.order.canComplete && widget.order.transporter != null) ...[
          if (widget.order.canAssign || widget.order.canCancel) 
            const SizedBox(width: 8),
          Expanded(
            child: FilledButton.icon(
              onPressed: () => _handleCompleteOrder(context),
              icon: const Icon(Icons.check_circle),
              label: const Text('Compléter'),
              style: FilledButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildActionChip(
    BuildContext context, {
    required String label,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    final theme = Theme.of(context);
    
    return ActionChip(
      onPressed: onTap,
      avatar: Icon(icon, size: 18, color: color),
      label: Text(
        label,
        style: theme.textTheme.bodySmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: color.withOpacity(0.1),
      side: BorderSide(color: color.withOpacity(0.3)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  Widget _buildExpansionToggle(BuildContext context, ThemeData theme) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.outline.withOpacity(0.2),
          ),
        ),
      ),
      child: InkWell(
        onTap: _toggleExpansion,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _isExpanded ? 'Voir moins' : 'Voir plus',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 4),
              Icon(
                _isExpanded 
                    ? Icons.keyboard_arrow_up 
                    : Icons.keyboard_arrow_down,
                color: theme.colorScheme.primary,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExpandedContent(BuildContext context, ThemeData theme) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Détails supplémentaires',
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: theme.colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 12),
          _buildTimestamps(context, theme),
          if (widget.order.transporter == null) ...[
            const SizedBox(height: 16),
            Text(
              'Aucun transporteur assigné',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.error,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
          const SizedBox(height: 12),
          _buildLocationInfo(context, theme),
        ],
      ),
    );
  }

  bool _canExpand() {
    return widget.viewMode == OrderCardViewMode.standard;
  }

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
    widget.onExpansionChanged?.call(_isExpanded);
  }

  void _handleSelectionTap() {
    widget.onSelectionChanged?.call(!widget.isSelected);
  }

  void _handleAssignOrder(BuildContext context) {
    // TODO: Open transporter assignment modal
    _showSnackBar(context, 'Fonctionnalité d\'assignation en développement');
  }

  void _handleCancelOrder(BuildContext context) {
    _showConfirmationDialog(
      context,
      title: 'Annuler la commande',
      message: 'Êtes-vous sûr de vouloir annuler cette commande #${widget.order.orderNumber} ?',
      confirmText: 'Annuler',
      onConfirm: () {
        context.read<OrdersBloc>().add(
          OrdersEvent.updateOrderStatus(
            orderId: widget.order.id,
            status: OrderStatus.canceled,
          ),
        );
      },
    );
  }

  void _handleCompleteOrder(BuildContext context) {
    _showConfirmationDialog(
      context,
      title: 'Marquer comme livrée',
      message: 'Confirmer la livraison de la commande #${widget.order.orderNumber} ?',
      confirmText: 'Confirmer',
      onConfirm: () {
        context.read<OrdersBloc>().add(
          OrdersEvent.updateOrderStatus(
            orderId: widget.order.id,
            status: OrderStatus.delivered,
          ),
        );
      },
    );
  }

  void _showConfirmationDialog(
    BuildContext context, {
    required String title,
    required String message,
    required String confirmText,
    required VoidCallback onConfirm,
  }) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Annuler'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
              onConfirm();
            },
            child: Text(confirmText),
          ),
        ],
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message, {bool isError = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError 
            ? Theme.of(context).colorScheme.error 
            : Theme.of(context).colorScheme.primary,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  Color _getStatusColor(ThemeData theme) {
    return widget.order.status.when(
      pending: () => Colors.orange,
      assigned: () => Colors.blue,
      inTransit: () => Colors.purple,
      delivered: () => Colors.green,
      canceled: () => Colors.red,
      returned: () => Colors.grey,
    );
  }

  IconData _getStatusIcon() {
    return widget.order.status.when(
      pending: () => Icons.pending_outlined,
      assigned: () => Icons.person_outlined,
      inTransit: () => Icons.local_shipping_outlined,
      delivered: () => Icons.check_circle_outlined,
      canceled: () => Icons.cancel_outlined,
      returned: () => Icons.keyboard_return_outlined,
    );
  }

  String _formatDate(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }

  String _formatDateTime(DateTime date) {
    return DateFormat('dd/MM/yyyy à HH:mm').format(date);
  }
}

/// Enum for order card view modes
enum OrderCardViewMode {
  compact,
  standard,
  detailed,
}