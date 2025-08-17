import 'package:intl/intl.dart';

class Order {
  final int id;
  final String clientName;
  final String clientPhone;
  final String clientAddress;
  final String shopName;
  final String shopPhone;
  final String shopAddress;
  final double totalPrice;
  final double deliveryPrice;
  final String status;
  final String? note;
  final DateTime createdAt;
  final DateTime? estimatedDeliveryTime;
  final String? transporterName;
  final String? transporterPhone;
  final int? cityId;
  final String? cityName;
  final List<OrderItem> items;
  final String? trackingCode;
  final double? latitude;
  final double? longitude;

  Order({
    required this.id,
    required this.clientName,
    required this.clientPhone,
    required this.clientAddress,
    required this.shopName,
    required this.shopPhone,
    required this.shopAddress,
    required this.totalPrice,
    required this.deliveryPrice,
    required this.status,
    this.note,
    required this.createdAt,
    this.estimatedDeliveryTime,
    this.transporterName,
    this.transporterPhone,
    this.cityId,
    this.cityName,
    required this.items,
    this.trackingCode,
    this.latitude,
    this.longitude,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['Id'] ?? json['id'] ?? 0,
      clientName: json['ClientName'] ?? json['clientName'] ?? '',
      clientPhone: json['ClientPhone'] ?? json['clientPhone'] ?? '',
      clientAddress: json['ClientAddress'] ?? json['clientAddress'] ?? '',
      shopName: json['ShopName'] ?? json['shopName'] ?? '',
      shopPhone: json['ShopPhone'] ?? json['shopPhone'] ?? '',
      shopAddress: json['ShopAddress'] ?? json['shopAddress'] ?? '',
      totalPrice: (json['TotalPrice'] ?? json['totalPrice'] ?? 0).toDouble(),
      deliveryPrice: (json['DeliveryPrice'] ?? json['deliveryPrice'] ?? 0).toDouble(),
      status: json['Status'] ?? json['status'] ?? 'pending',
      note: json['Note'] ?? json['note'],
      createdAt: DateTime.parse(json['CreatedAt'] ?? json['createdAt'] ?? DateTime.now().toIso8601String()),
      estimatedDeliveryTime: json['EstimatedDeliveryTime'] != null || json['estimatedDeliveryTime'] != null
          ? DateTime.parse(json['EstimatedDeliveryTime'] ?? json['estimatedDeliveryTime'])
          : null,
      transporterName: json['TransporterName'] ?? json['transporterName'],
      transporterPhone: json['TransporterPhone'] ?? json['transporterPhone'],
      cityId: json['CityId'] ?? json['cityId'],
      cityName: json['CityName'] ?? json['cityName'],
      items: (json['Items'] ?? json['items'] ?? [])
          .map<OrderItem>((item) => OrderItem.fromJson(item))
          .toList(),
      trackingCode: json['TrackingCode'] ?? json['trackingCode'],
      latitude: (json['Latitude'] ?? json['latitude'])?.toDouble(),
      longitude: (json['Longitude'] ?? json['longitude'])?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Id': id,
      'ClientName': clientName,
      'ClientPhone': clientPhone,
      'ClientAddress': clientAddress,
      'ShopName': shopName,
      'ShopPhone': shopPhone,
      'ShopAddress': shopAddress,
      'TotalPrice': totalPrice,
      'DeliveryPrice': deliveryPrice,
      'Status': status,
      'Note': note,
      'CreatedAt': createdAt.toIso8601String(),
      'EstimatedDeliveryTime': estimatedDeliveryTime?.toIso8601String(),
      'TransporterName': transporterName,
      'TransporterPhone': transporterPhone,
      'CityId': cityId,
      'CityName': cityName,
      'Items': items.map((item) => item.toJson()).toList(),
      'TrackingCode': trackingCode,
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

  String get formattedDeliveryPrice {
    return '${deliveryPrice.toStringAsFixed(2)} MAD';
  }

  String get statusDisplayName {
    switch (status.toLowerCase()) {
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
    return ['delivered', 'returned', 'cancelled'].contains(status.toLowerCase());
  }

  bool get isActive {
    return !isCompleted;
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