import 'package:intl/intl.dart';

enum OrderStatus {
  nouvelle,
  confirmee,
  enCoursVendeur,
  enCoursLivreur,
  livree,
  annulee,
  retournee,
  pending,
  confirmed,
  preparing,
  ready,
  assigned,
  pickedUp,
  inDelivery,
  delivered,
  returned,
  cancelled,
  inTransit,
}

extension OrderStatusExtension on OrderStatus {
  String get value {
    switch (this) {
      case OrderStatus.nouvelle:
        return 'nouvelle';
      case OrderStatus.confirmee:
        return 'confirmée';
      case OrderStatus.enCoursVendeur:
        return 'en cours - vendeur';
      case OrderStatus.enCoursLivreur:
        return 'en cours - livreur';
      case OrderStatus.livree:
        return 'livrée';
      case OrderStatus.annulee:
        return 'annulée';
      case OrderStatus.retournee:
        return 'retournée';
      case OrderStatus.pending:
        return 'pending';
      case OrderStatus.confirmed:
        return 'confirmed';
      case OrderStatus.preparing:
        return 'preparing';
      case OrderStatus.ready:
        return 'ready';
      case OrderStatus.assigned:
        return 'assigned';
      case OrderStatus.pickedUp:
        return 'picked_up';
      case OrderStatus.inDelivery:
        return 'in_delivery';
      case OrderStatus.delivered:
        return 'delivered';
      case OrderStatus.returned:
        return 'returned';
      case OrderStatus.cancelled:
        return 'cancelled';
      case OrderStatus.inTransit:
        return 'in_transit';
    }
  }

  static OrderStatus fromString(String status) {
    switch (status.toLowerCase()) {
      case 'nouvelle':
        return OrderStatus.nouvelle;
      case 'confirmée':
        return OrderStatus.confirmee;
      case 'en cours - vendeur':
        return OrderStatus.enCoursVendeur;
      case 'en cours - livreur':
        return OrderStatus.enCoursLivreur;
      case 'livrée':
        return OrderStatus.livree;
      case 'annulée':
        return OrderStatus.annulee;
      case 'retournée':
        return OrderStatus.retournee;
      case 'pending':
        return OrderStatus.pending;
      case 'confirmed':
        return OrderStatus.confirmed;
      case 'preparing':
        return OrderStatus.preparing;
      case 'ready':
        return OrderStatus.ready;
      case 'assigned':
        return OrderStatus.assigned;
      case 'picked_up':
        return OrderStatus.pickedUp;
      case 'in_delivery':
        return OrderStatus.inDelivery;
      case 'delivered':
        return OrderStatus.delivered;
      case 'returned':
        return OrderStatus.returned;
      case 'cancelled':
        return OrderStatus.cancelled;
      case 'in_transit':
        return OrderStatus.inTransit;
      default:
        return OrderStatus.pending;
    }
  }
}

class Order {
  final int id;
  final String tracking;
  final int cityId;
  final bool isNewOrder;
  final DateTime createdAt;
  
  // Client information
  final int clientId;
  final String clientName;
  final String clientPhone;
  final String clientStatus;
  final int? clientLocalisationId;
  final String clientAddress;
  
  // Shop information
  final int shopId;
  final String shopName;
  final String shopPhone;
  final String shopStatus;
  final String shopCity;
  final String shopAddress;
  
  // Transporter information
  final int? transporterId;
  final String? transporterName;
  final String? transporterPhone;
  final String? transporterStatus;
  
  // Order items and pricing
  final List<OrderItem> items;
  final double totalPrice;
  final double totalPriceToPay;
  final double orderPrice;
  final double deliveryPrice;
  final double deliveryPriceToPay;
  
  // Status and tracking
  final OrderStatus status;
  final String? note;
  final DateTime? estimatedDeliveryTime;
  final String? trackingCode;
  
  // Invoice information
  final int? deliveryInvoiceId;
  final int? shopInvoiceId;
  
  // Location information
  final String? cityName;
  final double? latitude;
  final double? longitude;

  // Additional fields from .NET API
  final String? address;
  final String? notes;
  final DateTime? updatedAt;
  final DateTime? deliveredAt;
  final double? subtotalAmount;
  final double? deliveryFee;
  final double? discount;
  final bool? isPriority;

  Order({
    required this.id,
    required this.tracking,
    required this.cityId,
    required this.isNewOrder,
    required this.createdAt,
    
    // Client information
    required this.clientId,
    required this.clientName,
    required this.clientPhone,
    required this.clientStatus,
    this.clientLocalisationId,
    required this.clientAddress,
    
    // Shop information
    required this.shopId,
    required this.shopName,
    required this.shopPhone,
    required this.shopStatus,
    required this.shopCity,
    required this.shopAddress,
    
    // Transporter information
    this.transporterId,
    this.transporterName,
    this.transporterPhone,
    this.transporterStatus,
    
    // Order items and pricing
    required this.items,
    required this.totalPrice,
    required this.totalPriceToPay,
    required this.orderPrice,
    required this.deliveryPrice,
    required this.deliveryPriceToPay,
    
    // Status and tracking
    required this.status,
    this.note,
    this.estimatedDeliveryTime,
    this.trackingCode,
    
    // Invoice information
    this.deliveryInvoiceId,
    this.shopInvoiceId,
    
    // Location information
    this.cityName,
    this.latitude,
    this.longitude,

    // Additional fields from .NET API
    this.address,
    this.notes,
    this.updatedAt,
    this.deliveredAt,
    this.subtotalAmount,
    this.deliveryFee,
    this.discount,
    this.isPriority,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    // Extract order items handling JSON.NET $values structure from SignalR
    dynamic orderItemsRaw = json['OrderItems'] ?? json['orderItems'] ?? [];
    if (orderItemsRaw is Map<String, dynamic> && orderItemsRaw.containsKey(r'$values')) {
      orderItemsRaw = orderItemsRaw[r'$values'];
    }
    
    // Filter out any $ref items (JSON.NET circular reference handling)
    final validItems = (orderItemsRaw as List).where((item) => item != null && item[r'$ref'] == null).toList();
    
    return Order(
      id: json['id'] ?? json['Id'] ?? 0,
      tracking: json['tracking'] ?? json['Tracking'] ?? 'N/A',
      cityId: json['cityId'] ?? json['CityId'] ?? 0,
      isNewOrder: json['isNewOrder'] ?? json['IsNewOrder'] ?? false,
      createdAt: DateTime.parse(json['createdAt'] ?? json['CreatedAt'] ?? DateTime.now().toIso8601String()),
      
      // Client information
      clientId: json['clientId'] ?? json['ClientId'] ?? 0,
      clientName: json['clientName'] ?? json['ClientName'] ?? 'N/A',
      clientPhone: json['clientPhone'] ?? json['ClientPhone'] ?? 'N/A',
      clientStatus: json['clientStatus'] ?? json['ClientStatus'] ?? 'N/A',
      clientLocalisationId: json['clientLocalisationId'] ?? json['ClientLocalisationId'],
      clientAddress: json['clientAddress'] ?? json['ClientAddress'] ?? 'N/A',
      
      // Shop information
      shopId: json['shopId'] ?? json['ShopId'] ?? 0,
      shopName: json['shopName'] ?? json['ShopName'] ?? 'N/A',
      shopPhone: json['shopPhone'] ?? json['ShopPhone'] ?? 'N/A',
      shopStatus: json['shopStatus'] ?? json['ShopStatus'] ?? 'N/A',
      shopCity: json['shopCity'] ?? json['ShopCity'] ?? 'N/A',
      shopAddress: json['shopAddress'] ?? json['ShopAddress'] ?? 'N/A',
      
      // Transporter information
      transporterId: json['transporterId'] ?? json['TransporterId'],
      transporterName: json['transporterName'] ?? json['TransporterName'],
      transporterPhone: json['transporterPhone'] ?? json['TransporterPhone'],
      transporterStatus: json['transporterStatus'] ?? json['TransporterStatus'],
      
      // Order items and pricing
      items: validItems.map<OrderItem>((item) => OrderItem.fromJson(item)).toList(),
      totalPrice: (json['totalPrice'] ?? json['TotalPrice'] ?? 0).toDouble(),
      totalPriceToPay: (json['totalPriceToPay'] ?? json['TotalPriceToPay'] ?? 0).toDouble(),
      orderPrice: (json['orderPrice'] ?? json['OrderPrice'] ?? 0).toDouble(),
      deliveryPrice: (json['deliveryPrice'] ?? json['DeliveryPrice'] ?? 0).toDouble(),
      deliveryPriceToPay: (json['deliveryPriceToPay'] ?? json['DeliveryPriceToPay'] ?? 0).toDouble(),
      
      // Status and tracking
      status: OrderStatusExtension.fromString(json['status'] ?? json['Status'] ?? 'pending'),
      note: json['note'] ?? json['Note'],
      estimatedDeliveryTime: json['EstimatedDeliveryTime'] != null || json['estimatedDeliveryTime'] != null
          ? DateTime.parse(json['EstimatedDeliveryTime'] ?? json['estimatedDeliveryTime'])
          : null,
      trackingCode: json['trackingCode'] ?? json['TrackingCode'],
      
      // Invoice information
      deliveryInvoiceId: json['deliveryInvoiceId'] ?? json['DeliveryInvoiceId'],
      shopInvoiceId: json['shopInvoiceId'] ?? json['ShopInvoiceId'],
      
      // Location information
      cityName: json['cityName'] ?? json['CityName'],
      latitude: (json['latitude'] ?? json['Latitude'])?.toDouble(),
      longitude: (json['longitude'] ?? json['Longitude'])?.toDouble(),

      // Additional fields from .NET API
      address: json['address'] ?? json['Address'],
      notes: json['notes'] ?? json['Notes'],
      updatedAt: json['UpdatedAt'] != null || json['updatedAt'] != null
          ? DateTime.parse(json['UpdatedAt'] ?? json['updatedAt'])
          : null,
      deliveredAt: json['DeliveredAt'] != null || json['deliveredAt'] != null
          ? DateTime.parse(json['DeliveredAt'] ?? json['deliveredAt'])
          : null,
      subtotalAmount: (json['subtotalAmount'] ?? json['SubtotalAmount'] ?? json['totalPrice'] ?? json['TotalPrice'] ?? 0).toDouble(),
      deliveryFee: (json['deliveryFee'] ?? json['DeliveryFee'] ?? json['deliveryPrice'] ?? json['DeliveryPrice'] ?? 0).toDouble(),
      discount: (json['discount'] ?? json['Discount'] ?? 0).toDouble(),
      isPriority: json['isPriority'] ?? json['IsPriority'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Id': id,
      'Tracking': tracking,
      'CityId': cityId,
      'IsNewOrder': isNewOrder,
      'CreatedAt': createdAt.toIso8601String(),
      
      // Client information
      'ClientId': clientId,
      'ClientName': clientName,
      'ClientPhone': clientPhone,
      'ClientStatus': clientStatus,
      'ClientLocalisationId': clientLocalisationId,
      'ClientAddress': clientAddress,
      
      // Shop information
      'ShopId': shopId,
      'ShopName': shopName,
      'ShopPhone': shopPhone,
      'ShopStatus': shopStatus,
      'ShopCity': shopCity,
      'ShopAddress': shopAddress,
      
      // Transporter information
      'TransporterId': transporterId,
      'TransporterName': transporterName,
      'TransporterPhone': transporterPhone,
      'TransporterStatus': transporterStatus,
      
      // Order items and pricing
      'OrderItems': items.map((item) => item.toJson()).toList(),
      'TotalPrice': totalPrice,
      'TotalPriceToPay': totalPriceToPay,
      'OrderPrice': orderPrice,
      'DeliveryPrice': deliveryPrice,
      'DeliveryPriceToPay': deliveryPriceToPay,
      
      // Status and tracking
      'Status': status.value,
      'Note': note,
      'EstimatedDeliveryTime': estimatedDeliveryTime?.toIso8601String(),
      'TrackingCode': trackingCode,
      
      // Invoice information
      'DeliveryInvoiceId': deliveryInvoiceId,
      'ShopInvoiceId': shopInvoiceId,
      
      // Location information
      'CityName': cityName,
      'Latitude': latitude,
      'Longitude': longitude,

      // Additional fields
      'Address': address,
      'Notes': notes,
      'UpdatedAt': updatedAt?.toIso8601String(),
      'DeliveredAt': deliveredAt?.toIso8601String(),
      'SubtotalAmount': subtotalAmount,
      'DeliveryFee': deliveryFee,
      'Discount': discount,
      'IsPriority': isPriority,
    };
  }

  String get formattedCreatedAt {
    return DateFormat('dd/MM/yyyy HH:mm').format(createdAt);
  }

  /// Get order number - using tracking as order number
  String get orderNumber {
    return tracking;
  }

  /// Get total amount - alias for totalPriceToPay
  double get totalAmount {
    return totalPriceToPay;
  }

  String get formattedTotalPrice {
    return '${totalPrice.toStringAsFixed(2)} MAD';
  }

  String get formattedTotalPriceToPay {
    return '${totalPriceToPay.toStringAsFixed(2)} MAD';
  }

  String get formattedOrderPrice {
    return '${orderPrice.toStringAsFixed(2)} MAD';
  }

  String get formattedDeliveryPrice {
    return '${deliveryPrice.toStringAsFixed(2)} MAD';
  }

  String get formattedDeliveryPriceToPay {
    return '${deliveryPriceToPay.toStringAsFixed(2)} MAD';
  }

  String get statusDisplayName {
    switch (status) {
      case OrderStatus.nouvelle:
        return 'Nouvelle';
      case OrderStatus.confirmee:
        return 'Confirmée';
      case OrderStatus.enCoursVendeur:
        return 'En cours - Vendeur';
      case OrderStatus.enCoursLivreur:
        return 'En cours - Livreur';
      case OrderStatus.livree:
        return 'Livrée';
      case OrderStatus.annulee:
        return 'Annulée';
      case OrderStatus.retournee:
        return 'Retournée';
      case OrderStatus.pending:
        return 'En attente';
      case OrderStatus.confirmed:
        return 'Confirmée';
      case OrderStatus.preparing:
        return 'En préparation';
      case OrderStatus.ready:
        return 'Prête';
      case OrderStatus.assigned:
        return 'Assignée';
      case OrderStatus.pickedUp:
        return 'Récupérée';
      case OrderStatus.inDelivery:
        return 'En livraison';
      case OrderStatus.delivered:
        return 'Livrée';
      case OrderStatus.returned:
        return 'Retournée';
      case OrderStatus.cancelled:
        return 'Annulée';
      case OrderStatus.inTransit:
        return 'En transit';
    }
  }

  bool get isCompleted {
    return [
      OrderStatus.delivered,
      OrderStatus.returned,
      OrderStatus.cancelled,
      OrderStatus.livree,
      OrderStatus.retournee,
      OrderStatus.annulee
    ].contains(status);
  }

  bool get isActive {
    return !isCompleted;
  }

  /// Check if this order has an assigned transporter
  bool get hasTransporter {
    return transporterId != null && transporterId! > 0;
  }

  /// Check if this order is new/pending and needs action
  bool get needsAction {
    return [OrderStatus.nouvelle, OrderStatus.pending].contains(status);
  }

  /// Get the primary status color for UI display
  String get statusColor {
    switch (status) {
      case OrderStatus.nouvelle:
      case OrderStatus.pending:
        return '#FFA726'; // Orange
      case OrderStatus.confirmee:
      case OrderStatus.confirmed:
        return '#42A5F5'; // Blue
      case OrderStatus.enCoursVendeur:
      case OrderStatus.preparing:
        return '#AB47BC'; // Purple
      case OrderStatus.enCoursLivreur:
      case OrderStatus.inDelivery:
        return '#29B6F6'; // Light blue
      case OrderStatus.livree:
      case OrderStatus.delivered:
        return '#66BB6A'; // Green
      case OrderStatus.retournee:
      case OrderStatus.returned:
        return '#FF7043'; // Deep orange
      case OrderStatus.annulee:
      case OrderStatus.cancelled:
        return '#EF5350'; // Red
      default:
        return '#9E9E9E'; // Grey
    }
  }

  /// Check if this order can be assigned to a transporter
  bool get canAssign {
    return [OrderStatus.nouvelle, OrderStatus.pending, OrderStatus.confirmed].contains(status);
  }

  /// Check if this order can be cancelled
  bool get canCancel {
    return !isCompleted && status != OrderStatus.cancelled;
  }

  /// Check if this order can be marked as complete
  bool get canComplete {
    return [OrderStatus.inDelivery, OrderStatus.enCoursLivreur].contains(status);
  }

  /// Get a placeholder city object for compatibility
  Map<String, dynamic>? get city {
    if (cityName != null) {
      return {'name': cityName};
    }
    return null;
  }
}

class OrderItem {
  final int id;
  final String productName;
  final int quantity;
  final double unitPrice;
  final double totalPrice;
  final String? note;
  final List<OrderItemOption> options;
  final List<OrderItemSupplement> supplements;

  /// Alias for note to maintain compatibility
  String get notes => note ?? '';

  OrderItem({
    required this.id,
    required this.productName,
    required this.quantity,
    required this.unitPrice,
    required this.totalPrice,
    this.note,
    required this.options,
    required this.supplements,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) {
    return OrderItem(
      id: json['Id'] ?? json['id'] ?? 0,
      productName: json['ProductName'] ?? json['productName'] ?? '',
      quantity: json['Quantity'] ?? json['quantity'] ?? 1,
      unitPrice: (json['UnitPrice'] ?? json['unitPrice'] ?? 0).toDouble(),
      totalPrice: (json['TotalPrice'] ?? json['totalPrice'] ?? 0).toDouble(),
      note: json['Note'] ?? json['note'],
      options: (json['Options'] ?? json['options'] ?? [])
          .map<OrderItemOption>((option) => OrderItemOption.fromJson(option))
          .toList(),
      supplements: (json['Supplements'] ?? json['supplements'] ?? [])
          .map<OrderItemSupplement>((supplement) => OrderItemSupplement.fromJson(supplement))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Id': id,
      'ProductName': productName,
      'Quantity': quantity,
      'UnitPrice': unitPrice,
      'TotalPrice': totalPrice,
      'Note': note,
      'Options': options.map((option) => option.toJson()).toList(),
      'Supplements': supplements.map((supplement) => supplement.toJson()).toList(),
    };
  }

  String get formattedUnitPrice {
    return '${unitPrice.toStringAsFixed(2)} MAD';
  }

  String get formattedTotalPrice {
    return '${totalPrice.toStringAsFixed(2)} MAD';
  }
}

class OrderItemOption {
  final int id;
  final String optionName;
  final String choiceName;
  final double? additionalPrice;

  OrderItemOption({
    required this.id,
    required this.optionName,
    required this.choiceName,
    this.additionalPrice,
  });

  factory OrderItemOption.fromJson(Map<String, dynamic> json) {
    return OrderItemOption(
      id: json['Id'] ?? json['id'] ?? 0,
      optionName: json['OptionName'] ?? json['optionName'] ?? '',
      choiceName: json['ChoiceName'] ?? json['choiceName'] ?? '',
      additionalPrice: (json['AdditionalPrice'] ?? json['additionalPrice'])?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Id': id,
      'OptionName': optionName,
      'ChoiceName': choiceName,
      'AdditionalPrice': additionalPrice,
    };
  }
}

class OrderItemSupplement {
  final int id;
  final String supplementName;
  final double price;

  OrderItemSupplement({
    required this.id,
    required this.supplementName,
    required this.price,
  });

  factory OrderItemSupplement.fromJson(Map<String, dynamic> json) {
    return OrderItemSupplement(
      id: json['Id'] ?? json['id'] ?? 0,
      supplementName: json['SupplementName'] ?? json['supplementName'] ?? '',
      price: (json['Price'] ?? json['price'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Id': id,
      'SupplementName': supplementName,
      'Price': price,
    };
  }

  String get formattedPrice {
    return '${price.toStringAsFixed(2)} MAD';
  }
}