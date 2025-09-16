import 'package:intl/intl.dart';

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
  final String status;
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
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    // Extract order items handling JSON.NET $values structure from SignalR
    List<dynamic> orderItemsRaw = json['OrderItems'] ?? json['orderItems'] ?? [];
    if (orderItemsRaw is Map && orderItemsRaw['\$values'] != null) {
      orderItemsRaw = orderItemsRaw['\$values'];
    }
    
    // Filter out any $ref items (JSON.NET circular reference handling)
    final validItems = (orderItemsRaw as List).where((item) => item != null && item['\$ref'] == null).toList();
    
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
      status: json['status'] ?? json['Status'] ?? 'N/A',
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
      'Status': status,
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
    };
  }

  String get formattedCreatedAt {
    return DateFormat('dd/MM/yyyy HH:mm').format(createdAt);
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
    switch (status.toLowerCase()) {
      case 'nouvelle':
        return 'Nouvelle';
      case 'confirmée':
        return 'Confirmée';
      case 'en cours - vendeur':
        return 'En cours - Vendeur';
      case 'en cours - livreur':
        return 'En cours - Livreur';
      case 'livrée':
        return 'Livrée';
      case 'annulée':
        return 'Annulée';
      case 'retournée':
        return 'Retournée';
      case 'pending':
        return 'En attente';
      case 'confirmed':
        return 'Confirmée';
      case 'preparing':
        return 'En préparation';
      case 'ready':
        return 'Prête';
      case 'assigned':
        return 'Assignée';
      case 'picked_up':
        return 'Récupérée';
      case 'in_delivery':
        return 'En livraison';
      case 'delivered':
        return 'Livrée';
      case 'returned':
        return 'Retournée';
      case 'cancelled':
        return 'Annulée';
      default:
        return status;
    }
  }

  bool get isCompleted {
    return ['delivered', 'returned', 'cancelled', 'livrée', 'retournée', 'annulée'].contains(status.toLowerCase());
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
    return ['nouvelle', 'pending'].contains(status.toLowerCase());
  }

  /// Get the primary status color for UI display
  String get statusColor {
    switch (status.toLowerCase()) {
      case 'nouvelle':
      case 'pending':
        return '#FFA726'; // Orange
      case 'confirmée':
      case 'confirmed':
        return '#42A5F5'; // Blue
      case 'en cours - vendeur':
      case 'preparing':
        return '#AB47BC'; // Purple
      case 'en cours - livreur':
      case 'in_delivery':
        return '#29B6F6'; // Light blue
      case 'livrée':
      case 'delivered':
        return '#66BB6A'; // Green
      case 'retournée':
      case 'returned':
        return '#FF7043'; // Deep orange
      case 'annulée':
      case 'cancelled':
        return '#EF5350'; // Red
      default:
        return '#9E9E9E'; // Grey
    }
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