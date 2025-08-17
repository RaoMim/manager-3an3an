import 'package:flutter/material.dart';
import '../models/order.dart';

class OrderCard extends StatelessWidget {
  final Order order;
  final VoidCallback? onTap;
  final VoidCallback? onStatusUpdate;

  const OrderCard({
    super.key,
    required this.order,
    this.onTap,
    this.onStatusUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with order ID and status
              _buildHeader(),
              
              const SizedBox(height: 12),
              
              // Client information
              _buildClientInfo(),
              
              const SizedBox(height: 12),
              
              // Shop information
              _buildShopInfo(),
              
              const SizedBox(height: 12),
              
              // Order details (items count, total price)
              _buildOrderDetails(),
              
              const SizedBox(height: 12),
              
              // Footer with date and transporter info
              _buildFooter(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Order ID
        Text(
          'Commande #${order.id}',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        
        // Status badge
        _buildStatusBadge(),
      ],
    );
  }

  Widget _buildStatusBadge() {
    Color backgroundColor;
    Color textColor = Colors.white;
    
    switch (order.status.toLowerCase()) {
      case 'pending':
        backgroundColor = Colors.orange;
        break;
      case 'confirmed':
        backgroundColor = Colors.blue;
        break;
      case 'preparing':
        backgroundColor = Colors.purple;
        break;
      case 'ready':
        backgroundColor = Colors.teal;
        break;
      case 'assigned':
        backgroundColor = Colors.indigo;
        break;
      case 'picked_up':
        backgroundColor = Colors.amber;
        textColor = Colors.black87;
        break;
      case 'in_delivery':
        backgroundColor = Colors.lightBlue;
        break;
      case 'delivered':
        backgroundColor = Colors.green;
        break;
      case 'returned':
        backgroundColor = Colors.red;
        break;
      case 'cancelled':
        backgroundColor = Colors.grey;
        break;
      default:
        backgroundColor = Colors.grey;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        order.statusDisplayName,
        style: TextStyle(
          color: textColor,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildClientInfo() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.blue[100]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.person, size: 16, color: Colors.blue[700]),
              const SizedBox(width: 8),
              const Text(
                'Client',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            order.clientName,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          if (order.clientPhone.isNotEmpty) ...[
            const SizedBox(height: 2),
            Text(
              order.clientPhone,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ],
          if (order.clientAddress.isNotEmpty) ...[
            const SizedBox(height: 2),
            Text(
              order.clientAddress,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildShopInfo() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.green[100]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.store, size: 16, color: Colors.green[700]),
              const SizedBox(width: 8),
              const Text(
                'Magasin',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            order.shopName,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          if (order.shopPhone.isNotEmpty) ...[
            const SizedBox(height: 2),
            Text(
              order.shopPhone,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildOrderDetails() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Items count
        Row(
          children: [
            Icon(Icons.shopping_basket, size: 16, color: Colors.grey[600]),
            const SizedBox(width: 4),
            Text(
              '${order.items.length} article${order.items.length > 1 ? 's' : ''}',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        
        // Total price
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              order.formattedTotalPrice,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFFEF5350),
              ),
            ),
            if (order.deliveryPrice > 0) ...[
              Text(
                '+ ${order.formattedDeliveryPrice} livraison',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Created date
        Row(
          children: [
            Icon(Icons.schedule, size: 14, color: Colors.grey[600]),
            const SizedBox(width: 4),
            Text(
              order.formattedCreatedAt,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        
        // Transporter info (if assigned)
        if (order.transporterName != null && order.transporterName!.isNotEmpty)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.orange[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.delivery_dining, size: 12, color: Colors.orange[700]),
                const SizedBox(width: 4),
                Text(
                  order.transporterName!,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.orange[700],
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}