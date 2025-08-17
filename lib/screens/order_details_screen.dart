import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import '../models/order.dart';
import '../services/orders_service.dart';
import '../services/phone_service.dart';

class OrderDetailsScreen extends StatefulWidget {
  final Order order;

  const OrderDetailsScreen({
    super.key,
    required this.order,
  });

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  final OrdersService _ordersService = OrdersService();
  late Order _order;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _order = widget.order;
  }

  Future<void> _refreshOrder() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final response = await _ordersService.getOrderById(_order.id);
      if (response.isSuccess && response.data != null) {
        setState(() {
          _order = response.data!;
        });
      } else {
        _showErrorSnackBar(response.errorMessage ?? 'Erreur lors du rafraîchissement');
      }
    } catch (e) {
      _showErrorSnackBar('Erreur de connexion');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  void _showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    await PhoneService().makePhoneCall(context, phoneNumber);
  }

  Future<void> _showContactOptions(String phoneNumber, String contactName, String role) async {
    await PhoneService().showContactOptions(
      context,
      phoneNumber,
      contactName: contactName,
      role: role,
    );
  }

  void _copyToClipboard(String text, String label) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$label copié dans le presse-papiers'),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(
          'Commande #${_order.id}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFFEF5350),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _isLoading ? null : _refreshOrder,
          ),
        ],
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Color(0xFFEF5350),
              ),
            )
          : RefreshIndicator(
              onRefresh: _refreshOrder,
              color: const Color(0xFFEF5350),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Order status card
                    _buildStatusCard(),
                    
                    const SizedBox(height: 16),
                    
                    // Client information
                    _buildClientCard(),
                    
                    const SizedBox(height: 16),
                    
                    // Shop information
                    _buildShopCard(),
                    
                    const SizedBox(height: 16),
                    
                    // Transporter information (if assigned)
                    if (_order.transporterName != null && _order.transporterName!.isNotEmpty)
                      _buildTransporterCard(),
                    
                    if (_order.transporterName != null && _order.transporterName!.isNotEmpty)
                      const SizedBox(height: 16),
                    
                    // Order items
                    _buildOrderItemsCard(),
                    
                    const SizedBox(height: 16),
                    
                    // Order summary
                    _buildOrderSummaryCard(),
                    
                    const SizedBox(height: 16),
                    
                    // Additional information
                    _buildAdditionalInfoCard(),
                  ],
                ),
              ),
            ),
    );
  }

  Widget _buildStatusCard() {
    Color statusColor;
    IconData statusIcon;
    
    switch (_order.status.toLowerCase()) {
      case 'pending':
        statusColor = Colors.orange;
        statusIcon = Icons.schedule;
        break;
      case 'confirmed':
        statusColor = Colors.blue;
        statusIcon = Icons.check_circle_outline;
        break;
      case 'preparing':
        statusColor = Colors.purple;
        statusIcon = Icons.restaurant;
        break;
      case 'ready':
        statusColor = Colors.teal;
        statusIcon = Icons.check_circle;
        break;
      case 'assigned':
        statusColor = Colors.indigo;
        statusIcon = Icons.assignment_ind;
        break;
      case 'picked_up':
        statusColor = Colors.amber;
        statusIcon = Icons.local_shipping;
        break;
      case 'in_delivery':
        statusColor = Colors.lightBlue;
        statusIcon = Icons.delivery_dining;
        break;
      case 'delivered':
        statusColor = Colors.green;
        statusIcon = Icons.check_circle;
        break;
      case 'returned':
        statusColor = Colors.red;
        statusIcon = Icons.keyboard_return;
        break;
      case 'cancelled':
        statusColor = Colors.grey;
        statusIcon = Icons.cancel;
        break;
      default:
        statusColor = Colors.grey;
        statusIcon = Icons.help_outline;
    }

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [statusColor.withOpacity(0.1), statusColor.withOpacity(0.05)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Icon(
              statusIcon,
              size: 48,
              color: statusColor,
            ),
            const SizedBox(height: 12),
            Text(
              _order.statusDisplayName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: statusColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Créée le ${_order.formattedCreatedAt}',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
            if (_order.trackingCode != null && _order.trackingCode!.isNotEmpty) ...[
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: statusColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.qr_code, size: 16, color: statusColor),
                    const SizedBox(width: 4),
                    Text(
                      'Code: ${_order.trackingCode}',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: statusColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildClientCard() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.person, color: Colors.blue[700], size: 24),
                const SizedBox(width: 8),
                const Text(
                  'Client',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            _buildInfoRow(
              icon: Icons.account_circle,
              label: 'Nom',
              value: _order.clientName,
              onTap: () => _copyToClipboard(_order.clientName, 'Nom du client'),
            ),
            
            if (_order.clientPhone.isNotEmpty) ...[
              const SizedBox(height: 12),
              _buildInfoRow(
                icon: Icons.phone,
                label: 'Téléphone',
                value: PhoneService().formatPhoneNumber(_order.clientPhone),
                onTap: () => _showContactOptions(_order.clientPhone, _order.clientName, 'client'),
                onLongPress: () => _copyToClipboard(_order.clientPhone, 'Téléphone'),
                actionIcon: Icons.call,
              ),
            ],
            
            if (_order.clientAddress.isNotEmpty) ...[
              const SizedBox(height: 12),
              _buildInfoRow(
                icon: Icons.location_on,
                label: 'Adresse',
                value: _order.clientAddress,
                onTap: () => _copyToClipboard(_order.clientAddress, 'Adresse'),
                maxLines: 3,
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildShopCard() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.store, color: Colors.green[700], size: 24),
                const SizedBox(width: 8),
                const Text(
                  'Magasin',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            _buildInfoRow(
              icon: Icons.business,
              label: 'Nom',
              value: _order.shopName,
              onTap: () => _copyToClipboard(_order.shopName, 'Nom du magasin'),
            ),
            
            if (_order.shopPhone.isNotEmpty) ...[
              const SizedBox(height: 12),
              _buildInfoRow(
                icon: Icons.phone,
                label: 'Téléphone',
                value: PhoneService().formatPhoneNumber(_order.shopPhone),
                onTap: () => _showContactOptions(_order.shopPhone, _order.shopName, 'shop'),
                onLongPress: () => _copyToClipboard(_order.shopPhone, 'Téléphone'),
                actionIcon: Icons.call,
              ),
            ],
            
            if (_order.shopAddress.isNotEmpty) ...[
              const SizedBox(height: 12),
              _buildInfoRow(
                icon: Icons.location_on,
                label: 'Adresse',
                value: _order.shopAddress,
                onTap: () => _copyToClipboard(_order.shopAddress, 'Adresse'),
                maxLines: 3,
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildTransporterCard() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.delivery_dining, color: Colors.orange[700], size: 24),
                const SizedBox(width: 8),
                const Text(
                  'Livreur',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            if (_order.transporterName != null && _order.transporterName!.isNotEmpty)
              _buildInfoRow(
                icon: Icons.person,
                label: 'Nom',
                value: _order.transporterName!,
                onTap: () => _copyToClipboard(_order.transporterName!, 'Nom du livreur'),
              ),
            
            if (_order.transporterPhone != null && _order.transporterPhone!.isNotEmpty) ...[
              const SizedBox(height: 12),
              _buildInfoRow(
                icon: Icons.phone,
                label: 'Téléphone',
                value: PhoneService().formatPhoneNumber(_order.transporterPhone!),
                onTap: () => _showContactOptions(_order.transporterPhone!, _order.transporterName ?? 'Transporteur', 'transporter'),
                onLongPress: () => _copyToClipboard(_order.transporterPhone!, 'Téléphone'),
                actionIcon: Icons.call,
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildOrderItemsCard() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.shopping_basket, color: Colors.purple[700], size: 24),
                const SizedBox(width: 8),
                Text(
                  'Articles (${_order.items.length})',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            ..._order.items.asMap().entries.map((entry) {
              final index = entry.key;
              final item = entry.value;
              
              return Column(
                children: [
                  if (index > 0) const Divider(height: 24),
                  _buildOrderItem(item),
                ],
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderItem(OrderItem item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  '${item.quantity}x',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.productName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${item.formattedUnitPrice} × ${item.quantity}',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  if (item.note != null && item.note!.isNotEmpty) ...[
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.amber[50],
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.amber[200]!),
                      ),
                      child: Text(
                        'Note: ${item.note}',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.amber[800],
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            Text(
              item.formattedTotalPrice,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFFEF5350),
              ),
            ),
          ],
        ),
        
        // Options and supplements
        if (item.options.isNotEmpty || item.supplements.isNotEmpty) ...[
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 52),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...item.options.map((option) => Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Text(
                    '• ${option.optionName}: ${option.choiceName}',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                )),
                ...item.supplements.map((supplement) => Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Text(
                    '+ ${supplement.supplementName} (${supplement.formattedPrice})',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                )),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildOrderSummaryCard() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.receipt, color: Colors.red[700], size: 24),
                const SizedBox(width: 8),
                const Text(
                  'Résumé de la commande',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sous-total',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  _order.formattedTotalPrice,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            
            if (_order.deliveryPrice > 0) ...[
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Frais de livraison',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    _order.formattedDeliveryPrice,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
            
            const Divider(height: 24),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  '${(_order.totalPrice + _order.deliveryPrice).toStringAsFixed(2)} MAD',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFEF5350),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAdditionalInfoCard() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.info_outline, color: Colors.blue[700], size: 24),
                const SizedBox(width: 8),
                const Text(
                  'Informations supplémentaires',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            if (_order.cityName != null && _order.cityName!.isNotEmpty)
              _buildInfoRow(
                icon: Icons.location_city,
                label: 'Ville',
                value: _order.cityName!,
              ),
            
            if (_order.estimatedDeliveryTime != null) ...[
              const SizedBox(height: 12),
              _buildInfoRow(
                icon: Icons.schedule,
                label: 'Livraison estimée',
                value: DateFormat('dd/MM/yyyy HH:mm').format(_order.estimatedDeliveryTime!),
              ),
            ],
            
            if (_order.note != null && _order.note!.isNotEmpty) ...[
              const SizedBox(height: 12),
              _buildInfoRow(
                icon: Icons.note,
                label: 'Note',
                value: _order.note!,
                maxLines: 3,
              ),
            ],
            
            const SizedBox(height: 12),
            _buildInfoRow(
              icon: Icons.numbers,
              label: 'ID de commande',
              value: _order.id.toString(),
              onTap: () => _copyToClipboard(_order.id.toString(), 'ID de commande'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
    VoidCallback? onTap,
    VoidCallback? onLongPress,
    IconData? actionIcon,
    int maxLines = 1,
  }) {
    return InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 20,
              color: Colors.grey[600],
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    value,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: maxLines,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            if (actionIcon != null) ...[
              const SizedBox(width: 8),
              Icon(
                actionIcon,
                size: 18,
                color: Colors.grey[600],
              ),
            ],
          ],
        ),
      ),
    );
  }
}