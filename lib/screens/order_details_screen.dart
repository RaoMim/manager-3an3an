import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../models/order.dart';
import '../models/transporter.dart';
import '../blocs/orders_bloc.dart';
import '../blocs/orders_event.dart';
import '../blocs/orders_state.dart';
import '../blocs/transporters_bloc.dart';
import '../blocs/transporters_event.dart';
import '../widgets/transporter_assignment_modal.dart';
import '../services/signalr_initializer.dart';
import '../services/phone_service.dart';

/// Enhanced order details screen with Material Design 3 and comprehensive admin actions
class OrderDetailsScreen extends StatefulWidget {
  final Order order;

  const OrderDetailsScreen({
    super.key,
    required this.order,
  });

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen>
    with TickerProviderStateMixin, SignalRConnectionMixin {
  
  late TabController _tabController;
  late Order _currentOrder;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _currentOrder = widget.order;
    _tabController = TabController(length: 3, vsync: this);
    _initializeData();
  }

  void _initializeData() {
    // Ensure SignalR connection for real-time updates
    ensureSignalRConnection();
    
    // Refresh order data
    context.read<OrdersBloc>().add(
      OrdersEvent.getOrderById(orderId: _currentOrder.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return BlocListener<OrdersBloc, OrdersState>(
      listener: _handleOrdersStateChanges,
      child: Scaffold(
        backgroundColor: theme.colorScheme.surfaceContainerLowest,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            _buildSliverAppBar(context, theme, innerBoxIsScrolled),
          ],
          body: _buildBody(context, theme),
        ),
        bottomNavigationBar: _buildBottomActionBar(context, theme),
        floatingActionButton: _buildFloatingActionButton(context, theme),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      ),
    );
  }

  Widget _buildSliverAppBar(BuildContext context, ThemeData theme, bool innerBoxIsScrolled) {
    return SliverAppBar(
      expandedHeight: 200,
      floating: false,
      pinned: true,
      backgroundColor: theme.colorScheme.primary,
      foregroundColor: theme.colorScheme.onPrimary,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          'Commande #${_currentOrder.orderNumber}',
          style: theme.textTheme.titleMedium?.copyWith(
            color: theme.colorScheme.onPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                theme.colorScheme.primary,
                theme.colorScheme.primary.withOpacity(0.8),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 80, 16, 16),
            child: _buildOrderStatusHeader(context, theme),
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.refresh,
            color: theme.colorScheme.onPrimary,
          ),
          onPressed: _isLoading ? null : _refreshOrder,
          tooltip: 'Actualiser',
        ),
        PopupMenuButton<String>(
          icon: Icon(
            Icons.more_vert,
            color: theme.colorScheme.onPrimary,
          ),
          onSelected: _handleMenuAction,
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 'copy_id',
              child: Row(
                children: [
                  Icon(
                    Icons.copy,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: 8),
                  const Text('Copier l\'ID'),
                ],
              ),
            ),
            PopupMenuItem(
              value: 'share',
              child: Row(
                children: [
                  Icon(
                    Icons.share,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: 8),
                  const Text('Partager'),
                ],
              ),
            ),
            if (_currentOrder.trackingCode.isNotEmpty)
              PopupMenuItem(
                value: 'copy_tracking',
                child: Row(
                  children: [
                    Icon(
                      Icons.qr_code,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 8),
                    const Text('Copier le code de suivi'),
                  ],
                ),
              ),
          ],
        ),
      ],
      bottom: TabBar(
        controller: _tabController,
        indicatorColor: theme.colorScheme.onPrimary,
        labelColor: theme.colorScheme.onPrimary,
        unselectedLabelColor: theme.colorScheme.onPrimary.withOpacity(0.7),
        tabs: const [
          Tab(
            icon: Icon(Icons.info_outline),
            text: 'Détails',
          ),
          Tab(
            icon: Icon(Icons.timeline),
            text: 'Historique',
          ),
          Tab(
            icon: Icon(Icons.admin_panel_settings),
            text: 'Actions',
          ),
        ],
      ),
    );
  }

  Widget _buildOrderStatusHeader(BuildContext context, ThemeData theme) {
    final statusInfo = _getStatusInfo(_currentOrder.status);
    
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(
            statusInfo.icon,
            color: theme.colorScheme.onPrimary,
            size: 32,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                statusInfo.label,
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: theme.colorScheme.onPrimary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '${_currentOrder.totalAmount.toStringAsFixed(2)} DH',
                style: theme.textTheme.titleLarge?.copyWith(
                  color: theme.colorScheme.onPrimary.withOpacity(0.9),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                _formatDateTime(_currentOrder.createdAt),
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onPrimary.withOpacity(0.8),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBody(BuildContext context, ThemeData theme) {
    if (_isLoading) {
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
              'Chargement des détails...',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }

    return TabBarView(
      controller: _tabController,
      children: [
        _buildDetailsTab(context, theme),
        _buildHistoryTab(context, theme),
        _buildActionsTab(context, theme),
      ],
    );
  }

  Widget _buildDetailsTab(BuildContext context, ThemeData theme) {
    return RefreshIndicator(
      onRefresh: _refreshOrder,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Customer Information
            _buildCustomerCard(context, theme),
            const SizedBox(height: 16),
            
            // Delivery Information
            _buildDeliveryCard(context, theme),
            const SizedBox(height: 16),
            
            // Transporter Information (if assigned)
            if (_currentOrder.transporter != null)
              _buildTransporterCard(context, theme),
            if (_currentOrder.transporter != null)
              const SizedBox(height: 16),
            
            // Order Items
            _buildOrderItemsCard(context, theme),
            const SizedBox(height: 16),
            
            // Order Summary
            _buildOrderSummaryCard(context, theme),
            const SizedBox(height: 16),
            
            // Technical Information
            _buildTechnicalInfoCard(context, theme),
            
            // Add bottom padding for FAB
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryTab(BuildContext context, ThemeData theme) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _buildOrderTimeline(context, theme),
          const SizedBox(height: 80), // Bottom padding for FAB
        ],
      ),
    );
  }

  Widget _buildActionsTab(BuildContext context, ThemeData theme) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _buildQuickActions(context, theme),
          const SizedBox(height: 16),
          _buildStatusActions(context, theme),
          const SizedBox(height: 16),
          _buildManagementActions(context, theme),
          const SizedBox(height: 16),
          _buildDangerActions(context, theme),
          const SizedBox(height: 80), // Bottom padding for FAB
        ],
      ),
    );
  }

  Widget _buildCustomerCard(BuildContext context, ThemeData theme) {
    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.person,
                    color: theme.colorScheme.onPrimaryContainer,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  'Informations client',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            _buildInfoTile(
              context,
              theme,
              icon: Icons.account_circle,
              label: 'Nom',
              value: _currentOrder.clientName,
              onTap: () => _copyToClipboard(_currentOrder.clientName, 'Nom du client'),
            ),
            
            const SizedBox(height: 12),
            
            _buildInfoTile(
              context,
              theme,
              icon: Icons.phone,
              label: 'Téléphone',
              value: _formatPhoneNumber(_currentOrder.clientPhone),
              onTap: () => _showContactOptions(_currentOrder.clientPhone, _currentOrder.clientName),
              trailing: IconButton(
                icon: Icon(
                  Icons.call,
                  color: theme.colorScheme.primary,
                ),
                onPressed: () => _makePhoneCall(_currentOrder.clientPhone),
                tooltip: 'Appeler',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDeliveryCard(BuildContext context, ThemeData theme) {
    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.location_on,
                    color: theme.colorScheme.onSecondaryContainer,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  'Informations de livraison',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            _buildInfoTile(
              context,
              theme,
              icon: Icons.location_city,
              label: 'Ville',
              value: _currentOrder.city?.name ?? 'Non spécifiée',
            ),
            
            const SizedBox(height: 12),
            
            _buildInfoTile(
              context,
              theme,
              icon: Icons.map,
              label: 'Adresse',
              value: _currentOrder.address,
              maxLines: 3,
              onTap: () => _copyToClipboard(_currentOrder.address, 'Adresse'),
            ),
            
            if (_currentOrder.latitude != null && _currentOrder.longitude != null) ...[
              const SizedBox(height: 12),
              _buildInfoTile(
                context,
                theme,
                icon: Icons.gps_fixed,
                label: 'Coordonnées GPS',
                value: '${_currentOrder.latitude!.toStringAsFixed(6)}, ${_currentOrder.longitude!.toStringAsFixed(6)}',
                onTap: () => _openInMaps(),
                trailing: IconButton(
                  icon: Icon(
                    Icons.map,
                    color: theme.colorScheme.primary,
                  ),
                  onPressed: _openInMaps,
                  tooltip: 'Ouvrir dans Maps',
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildTransporterCard(BuildContext context, ThemeData theme) {
    final transporter = _currentOrder.transporter!;
    
    return Card(
      elevation: 0,
      color: theme.colorScheme.tertiaryContainer.withOpacity(0.3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: theme.colorScheme.tertiary.withOpacity(0.3),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: theme.colorScheme.tertiary,
                  child: Text(
                    transporter.name[0].toUpperCase(),
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.onTertiary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Transporteur assigné',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                      Text(
                        transporter.name,
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: transporter.isOnline ? Colors.green : Colors.grey,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    transporter.isOnline ? 'En ligne' : 'Hors ligne',
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            Row(
              children: [
                Expanded(
                  child: _buildTransporterStat(
                    context,
                    theme,
                    'Note',
                    '${transporter.rating.toStringAsFixed(1)}⭐',
                    Icons.star,
                  ),
                ),
                Expanded(
                  child: _buildTransporterStat(
                    context,
                    theme,
                    'Livraisons',
                    transporter.totalDeliveries.toString(),
                    Icons.local_shipping,
                  ),
                ),
                Expanded(
                  child: _buildTransporterStat(
                    context,
                    theme,
                    'Commission',
                    '${transporter.commission.toStringAsFixed(1)}%',
                    Icons.percent,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 16),
            
            Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    onPressed: () => _makePhoneCall(transporter.phone),
                    icon: const Icon(Icons.call),
                    label: const Text('Appeler'),
                    style: FilledButton.styleFrom(
                      backgroundColor: theme.colorScheme.tertiary,
                      foregroundColor: theme.colorScheme.onTertiary,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: FilledButton.tonal(
                    onPressed: () => _changeTransporter(),
                    icon: const Icon(Icons.swap_horiz),
                    label: const Text('Changer'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransporterStat(
    BuildContext context,
    ThemeData theme,
    String label,
    String value,
    IconData icon,
  ) {
    return Column(
      children: [
        Icon(
          icon,
          color: theme.colorScheme.onSurfaceVariant,
          size: 20,
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
            color: theme.colorScheme.onSurface,
          ),
        ),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }

  Widget _buildOrderItemsCard(BuildContext context, ThemeData theme) {
    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.shopping_bag,
                    color: theme.colorScheme.onPrimaryContainer,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  'Articles commandés',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    '${_currentOrder.items.length} article${_currentOrder.items.length > 1 ? 's' : ''}',
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: theme.colorScheme.onPrimary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            ..._currentOrder.items.asMap().entries.map((entry) {
              final index = entry.key;
              final item = entry.value;
              
              return Column(
                children: [
                  if (index > 0) 
                    Divider(
                      height: 24,
                      color: theme.colorScheme.outline.withOpacity(0.2),
                    ),
                  _buildOrderItem(context, theme, item),
                ],
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderItem(BuildContext context, ThemeData theme, OrderItem item) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Quantity badge
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: theme.colorScheme.secondaryContainer,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              '${item.quantity}×',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
                color: theme.colorScheme.onSecondaryContainer,
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        
        // Item details
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.productName,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: theme.colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '${item.unitPrice.toStringAsFixed(2)} DH × ${item.quantity}',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              if (item.notes.isNotEmpty) ...[
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.note,
                        size: 16,
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          item.notes,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),
        
        // Price
        Text(
          '${(item.unitPrice * item.quantity).toStringAsFixed(2)} DH',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
            color: theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }

  Widget _buildOrderSummaryCard(BuildContext context, ThemeData theme) {
    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.receipt,
                    color: theme.colorScheme.onPrimaryContainer,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  'Résumé financier',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            _buildSummaryRow(
              theme,
              'Sous-total',
              '${_currentOrder.subtotalAmount.toStringAsFixed(2)} DH',
              false,
            ),
            
            if (_currentOrder.deliveryFee > 0) ...[
              const SizedBox(height: 12),
              _buildSummaryRow(
                theme,
                'Frais de livraison',
                '${_currentOrder.deliveryFee.toStringAsFixed(2)} DH',
                false,
              ),
            ],
            
            if (_currentOrder.discount > 0) ...[
              const SizedBox(height: 12),
              _buildSummaryRow(
                theme,
                'Remise',
                '-${_currentOrder.discount.toStringAsFixed(2)} DH',
                false,
                isDiscount: true,
              ),
            ],
            
            Divider(
              height: 24,
              color: theme.colorScheme.outline.withOpacity(0.3),
            ),
            
            _buildSummaryRow(
              theme,
              'Total',
              '${_currentOrder.totalAmount.toStringAsFixed(2)} DH',
              true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryRow(
    ThemeData theme,
    String label,
    String value,
    bool isTotal, {
    bool isDiscount = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: isTotal
              ? theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: theme.colorScheme.onSurface,
                )
              : theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
        ),
        Text(
          value,
          style: isTotal
              ? theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: theme.colorScheme.primary,
                )
              : theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: isDiscount 
                      ? theme.colorScheme.error
                      : theme.colorScheme.onSurface,
                ),
        ),
      ],
    );
  }

  Widget _buildTechnicalInfoCard(BuildContext context, ThemeData theme) {
    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.info_outline,
                    color: theme.colorScheme.onSurfaceVariant,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  'Informations techniques',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            _buildInfoTile(
              context,
              theme,
              icon: Icons.tag,
              label: 'ID de commande',
              value: _currentOrder.id.toString(),
              onTap: () => _copyToClipboard(_currentOrder.id.toString(), 'ID de commande'),
            ),
            
            if (_currentOrder.trackingCode.isNotEmpty) ...[
              const SizedBox(height: 12),
              _buildInfoTile(
                context,
                theme,
                icon: Icons.qr_code,
                label: 'Code de suivi',
                value: _currentOrder.trackingCode,
                onTap: () => _copyToClipboard(_currentOrder.trackingCode, 'Code de suivi'),
              ),
            ],
            
            const SizedBox(height: 12),
            _buildInfoTile(
              context,
              theme,
              icon: Icons.access_time,
              label: 'Créée le',
              value: _formatDateTime(_currentOrder.createdAt),
            ),
            
            if (_currentOrder.updatedAt != null) ...[
              const SizedBox(height: 12),
              _buildInfoTile(
                context,
                theme,
                icon: Icons.update,
                label: 'Dernière modification',
                value: _formatDateTime(_currentOrder.updatedAt!),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildOrderTimeline(BuildContext context, ThemeData theme) {
    final events = _generateTimelineEvents();
    
    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.timeline,
                    color: theme.colorScheme.onPrimaryContainer,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  'Historique de la commande',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            ...events.asMap().entries.map((entry) {
              final index = entry.key;
              final event = entry.value;
              final isLast = index == events.length - 1;
              
              return _buildTimelineEvent(context, theme, event, isLast);
            }).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildTimelineEvent(
    BuildContext context,
    ThemeData theme,
    TimelineEvent event,
    bool isLast,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: event.isCompleted
                    ? theme.colorScheme.primary
                    : theme.colorScheme.outline.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                event.icon,
                color: event.isCompleted
                    ? theme.colorScheme.onPrimary
                    : theme.colorScheme.onSurfaceVariant,
                size: 20,
              ),
            ),
            if (!isLast)
              Container(
                width: 2,
                height: 60,
                color: theme.colorScheme.outline.withOpacity(0.3),
              ),
          ],
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: event.isCompleted
                        ? theme.colorScheme.onSurface
                        : theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                if (event.subtitle != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    event.subtitle!,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
                if (event.timestamp != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    _formatDateTime(event.timestamp!),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildQuickActions(BuildContext context, ThemeData theme) {
    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Actions rapides',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
                color: theme.colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 16),
            
            Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    onPressed: () => _makePhoneCall(_currentOrder.clientPhone),
                    icon: const Icon(Icons.call),
                    label: const Text('Appeler client'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: FilledButton.tonal.icon(
                    onPressed: _sendSMS,
                    icon: const Icon(Icons.sms),
                    label: const Text('Envoyer SMS'),
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 12),
            
            Row(
              children: [
                Expanded(
                  child: FilledButton.tonal.icon(
                    onPressed: _openInMaps,
                    icon: const Icon(Icons.map),
                    label: const Text('Ouvrir Maps'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: FilledButton.tonal.icon(
                    onPressed: _shareOrder,
                    icon: const Icon(Icons.share),
                    label: const Text('Partager'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusActions(BuildContext context, ThemeData theme) {
    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gestion du statut',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
                color: theme.colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 16),
            
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: _getAvailableStatusActions().map((action) {
                return FilledButton.tonal(
                  onPressed: () => _updateOrderStatus(action.status),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(action.icon, size: 18),
                      const SizedBox(width: 8),
                      Text(action.label),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildManagementActions(BuildContext context, ThemeData theme) {
    return Card(
      elevation: 0,
      color: theme.colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Actions de gestion',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
                color: theme.colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 16),
            
            if (_currentOrder.canAssign) ...[
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: _assignTransporter,
                  icon: const Icon(Icons.person_add),
                  label: const Text('Assigner un transporteur'),
                ),
              ),
              const SizedBox(height: 12),
            ],
            
            if (_currentOrder.transporter != null) ...[
              SizedBox(
                width: double.infinity,
                child: FilledButton.tonal.icon(
                  onPressed: _changeTransporter,
                  icon: const Icon(Icons.swap_horiz),
                  label: const Text('Changer le transporteur'),
                ),
              ),
              const SizedBox(height: 12),
            ],
            
            SizedBox(
              width: double.infinity,
              child: FilledButton.tonal.icon(
                onPressed: _addNote,
                icon: const Icon(Icons.note_add),
                label: const Text('Ajouter une note'),
              ),
            ),
            
            const SizedBox(height: 12),
            
            SizedBox(
              width: double.infinity,
              child: FilledButton.tonal.icon(
                onPressed: _editOrder,
                icon: const Icon(Icons.edit),
                label: const Text('Modifier la commande'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDangerActions(BuildContext context, ThemeData theme) {
    return Card(
      elevation: 0,
      color: theme.colorScheme.errorContainer.withOpacity(0.3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: theme.colorScheme.error.withOpacity(0.3),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.warning,
                  color: theme.colorScheme.error,
                  size: 24,
                ),
                const SizedBox(width: 8),
                Text(
                  'Zone de danger',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.error,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            if (_currentOrder.canCancel) ...[
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: _cancelOrder,
                  icon: const Icon(Icons.cancel),
                  label: const Text('Annuler la commande'),
                  style: FilledButton.styleFrom(
                    backgroundColor: theme.colorScheme.error,
                    foregroundColor: theme.colorScheme.onError,
                  ),
                ),
              ),
              const SizedBox(height: 12),
            ],
            
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: _deleteOrder,
                icon: const Icon(Icons.delete_forever),
                label: const Text('Supprimer définitivement'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: theme.colorScheme.error,
                  side: BorderSide(color: theme.colorScheme.error),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTile(
    BuildContext context,
    ThemeData theme, {
    required IconData icon,
    required String label,
    required String value,
    VoidCallback? onTap,
    Widget? trailing,
    int maxLines = 1,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
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
                  const SizedBox(height: 4),
                  Text(
                    value,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: maxLines,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            if (trailing != null) trailing,
          ],
        ),
      ),
    );
  }

  Widget _buildBottomActionBar(BuildContext context, ThemeData theme) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.outline.withOpacity(0.2),
          ),
        ),
      ),
      child: SafeArea(
        child: Row(
          children: [
            if (_currentOrder.canAssign)
              Expanded(
                child: FilledButton.icon(
                  onPressed: _assignTransporter,
                  icon: const Icon(Icons.person_add),
                  label: const Text('Assigner'),
                ),
              ),
            
            if (_currentOrder.canComplete) ...[
              if (_currentOrder.canAssign) const SizedBox(width: 12),
              Expanded(
                child: FilledButton.icon(
                  onPressed: _completeOrder,
                  icon: const Icon(Icons.check),
                  label: const Text('Compléter'),
                ),
              ),
            ],
            
            if (_currentOrder.canCancel) ...[
              if (_currentOrder.canAssign || _currentOrder.canComplete) 
                const SizedBox(width: 12),
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: _cancelOrder,
                  icon: const Icon(Icons.cancel),
                  label: const Text('Annuler'),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: theme.colorScheme.error,
                    side: BorderSide(color: theme.colorScheme.error),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildFloatingActionButton(BuildContext context, ThemeData theme) {
    return FloatingActionButton(
      onPressed: _refreshOrder,
      backgroundColor: theme.colorScheme.primaryContainer,
      foregroundColor: theme.colorScheme.onPrimaryContainer,
      tooltip: 'Actualiser',
      child: const Icon(Icons.refresh),
    );
  }

  // Event handlers and utility methods
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
        
        // Update current order if it's in the list
        final updatedOrder = orders.firstWhere(
          (order) => order.id == _currentOrder.id,
          orElse: () => _currentOrder,
        );
        if (updatedOrder != _currentOrder) {
          setState(() {
            _currentOrder = updatedOrder;
          });
        }
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

  void _handleMenuAction(String action) {
    switch (action) {
      case 'copy_id':
        _copyToClipboard(_currentOrder.id.toString(), 'ID de commande');
        break;
      case 'copy_tracking':
        _copyToClipboard(_currentOrder.trackingCode, 'Code de suivi');
        break;
      case 'share':
        _shareOrder();
        break;
    }
  }

  Future<void> _refreshOrder() async {
    setState(() => _isLoading = true);
    
    context.read<OrdersBloc>().add(
      OrdersEvent.getOrderById(orderId: _currentOrder.id),
    );
    
    // Simulate loading time for better UX
    await Future.delayed(const Duration(milliseconds: 500));
    
    setState(() => _isLoading = false);
  }

  void _assignTransporter() {
    TransporterAssignmentModal.show(
      context,
      order: _currentOrder,
      onAssignmentCompleted: () {
        _refreshOrder();
      },
    );
  }

  void _changeTransporter() {
    TransporterAssignmentModal.show(
      context,
      order: _currentOrder,
      onAssignmentCompleted: () {
        _refreshOrder();
      },
    );
  }

  void _updateOrderStatus(OrderStatus status) {
    context.read<OrdersBloc>().add(
      OrdersEvent.updateOrderStatus(
        orderId: _currentOrder.id,
        status: status,
      ),
    );
  }

  void _completeOrder() {
    _showConfirmationDialog(
      'Marquer comme livrée',
      'Confirmer la livraison de cette commande ?',
      'Confirmer',
      () => _updateOrderStatus(OrderStatus.delivered),
    );
  }

  void _cancelOrder() {
    _showConfirmationDialog(
      'Annuler la commande',
      'Êtes-vous sûr de vouloir annuler cette commande ?',
      'Annuler la commande',
      () => _updateOrderStatus(OrderStatus.canceled),
      isDestructive: true,
    );
  }

  void _deleteOrder() {
    _showConfirmationDialog(
      'Supprimer définitivement',
      'Cette action est irréversible. Êtes-vous sûr de vouloir supprimer cette commande ?',
      'Supprimer',
      () {
        context.read<OrdersBloc>().add(
          OrdersEvent.deleteOrder(orderId: _currentOrder.id),
        );
        Navigator.pop(context);
      },
      isDestructive: true,
    );
  }

  void _addNote() {
    // TODO: Implement add note functionality
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Fonctionnalité d\'ajout de note en développement'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _editOrder() {
    // TODO: Implement edit order functionality
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Fonctionnalité de modification en développement'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    await PhoneService().makePhoneCall(context, phoneNumber);
  }

  Future<void> _showContactOptions(String phoneNumber, String contactName) async {
    await PhoneService().showContactOptions(
      context,
      phoneNumber,
      contactName: contactName,
      role: 'client',
    );
  }

  void _sendSMS() {
    // TODO: Implement SMS functionality
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Fonctionnalité SMS en développement'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _openInMaps() {
    if (_currentOrder.latitude != null && _currentOrder.longitude != null) {
      // TODO: Implement maps integration
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Ouverture de Maps en développement'),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  void _shareOrder() {
    final orderInfo = 'Commande #${_currentOrder.orderNumber}\n'
        'Client: ${_currentOrder.clientName}\n'
        'Montant: ${_currentOrder.totalAmount.toStringAsFixed(2)} DH\n'
        'Statut: ${_getStatusInfo(_currentOrder.status).label}';
    
    _copyToClipboard(orderInfo, 'Informations de commande');
  }

  void _copyToClipboard(String text, String label) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$label copié'),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 1),
      ),
    );
  }

  void _showConfirmationDialog(
    String title,
    String message,
    String confirmText,
    VoidCallback onConfirm, {
    bool isDestructive = false,
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
            style: isDestructive
                ? FilledButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.error,
                    foregroundColor: Theme.of(context).colorScheme.onError,
                  )
                : null,
            child: Text(confirmText),
          ),
        ],
      ),
    );
  }

  // Utility methods
  String _formatPhoneNumber(String phone) {
    return PhoneService().formatPhoneNumber(phone);
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('dd/MM/yyyy à HH:mm').format(dateTime);
  }

  ({String label, IconData icon}) _getStatusInfo(OrderStatus status) {
    return status.when(
      pending: () => (label: 'En attente', icon: Icons.pending_outlined),
      assigned: () => (label: 'Assignée', icon: Icons.person_outlined),
      inTransit: () => (label: 'En transit', icon: Icons.local_shipping_outlined),
      delivered: () => (label: 'Livrée', icon: Icons.check_circle_outlined),
      canceled: () => (label: 'Annulée', icon: Icons.cancel_outlined),
      returned: () => (label: 'Retournée', icon: Icons.keyboard_return_outlined),
    );
  }

  List<StatusAction> _getAvailableStatusActions() {
    final actions = <StatusAction>[];
    
    switch (_currentOrder.status) {
      case OrderStatus.pending:
        actions.addAll([
          StatusAction(OrderStatus.assigned, 'Assigner', Icons.person_add),
          StatusAction(OrderStatus.inTransit, 'En transit', Icons.local_shipping),
        ]);
        break;
      case OrderStatus.assigned:
        actions.addAll([
          StatusAction(OrderStatus.inTransit, 'En transit', Icons.local_shipping),
          StatusAction(OrderStatus.delivered, 'Livrer', Icons.check_circle),
        ]);
        break;
      case OrderStatus.inTransit:
        actions.addAll([
          StatusAction(OrderStatus.delivered, 'Livrer', Icons.check_circle),
          StatusAction(OrderStatus.returned, 'Retourner', Icons.keyboard_return),
        ]);
        break;
      default:
        break;
    }
    
    return actions;
  }

  List<TimelineEvent> _generateTimelineEvents() {
    final events = <TimelineEvent>[];
    
    // Order created
    events.add(TimelineEvent(
      title: 'Commande créée',
      subtitle: 'Commande passée par ${_currentOrder.clientName}',
      icon: Icons.shopping_cart,
      timestamp: _currentOrder.createdAt,
      isCompleted: true,
    ));
    
    // Order assigned
    if (_currentOrder.assignedAt != null) {
      events.add(TimelineEvent(
        title: 'Transporteur assigné',
        subtitle: _currentOrder.transporter != null
            ? 'Assignée à ${_currentOrder.transporter!.name}'
            : 'Transporteur assigné',
        icon: Icons.person_add,
        timestamp: _currentOrder.assignedAt,
        isCompleted: true,
      ));
    } else if (_currentOrder.status != OrderStatus.pending) {
      events.add(TimelineEvent(
        title: 'En attente d\'assignation',
        subtitle: 'Recherche d\'un transporteur disponible',
        icon: Icons.person_add,
        isCompleted: false,
      ));
    }
    
    // In transit
    if (_currentOrder.status == OrderStatus.inTransit ||
        _currentOrder.status == OrderStatus.delivered ||
        _currentOrder.status == OrderStatus.returned) {
      events.add(TimelineEvent(
        title: 'En cours de livraison',
        subtitle: 'Commande prise en charge par le transporteur',
        icon: Icons.local_shipping,
        isCompleted: true,
      ));
    } else if (_currentOrder.transporter != null) {
      events.add(TimelineEvent(
        title: 'En attente de prise en charge',
        subtitle: 'Le transporteur doit récupérer la commande',
        icon: Icons.local_shipping,
        isCompleted: false,
      ));
    }
    
    // Delivered
    if (_currentOrder.status == OrderStatus.delivered) {
      events.add(TimelineEvent(
        title: 'Commande livrée',
        subtitle: 'Livraison confirmée',
        icon: Icons.check_circle,
        timestamp: _currentOrder.deliveredAt,
        isCompleted: true,
      ));
    } else if (_currentOrder.status == OrderStatus.returned) {
      events.add(TimelineEvent(
        title: 'Commande retournée',
        subtitle: 'Livraison échouée',
        icon: Icons.keyboard_return,
        isCompleted: true,
      ));
    } else if (_currentOrder.status == OrderStatus.canceled) {
      events.add(TimelineEvent(
        title: 'Commande annulée',
        subtitle: 'Commande annulée',
        icon: Icons.cancel,
        isCompleted: true,
      ));
    } else if (_currentOrder.status != OrderStatus.pending) {
      events.add(TimelineEvent(
        title: 'Livraison en attente',
        subtitle: 'En cours de livraison',
        icon: Icons.check_circle,
        isCompleted: false,
      ));
    }
    
    return events;
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

// Helper classes
class StatusAction {
  final OrderStatus status;
  final String label;
  final IconData icon;

  StatusAction(this.status, this.label, this.icon);
}

class TimelineEvent {
  final String title;
  final String? subtitle;
  final IconData icon;
  final DateTime? timestamp;
  final bool isCompleted;

  TimelineEvent({
    required this.title,
    this.subtitle,
    required this.icon,
    this.timestamp,
    required this.isCompleted,
  });
}