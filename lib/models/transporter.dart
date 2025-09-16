class Transporter {
  final int id;
  final String name;
  final String phone;
  final String email;
  final String status;
  final bool blocked;
  final double? latitude;
  final double? longitude;
  final int? cityId;
  final String? cityName;
  final DateTime createdAt;
  final DateTime? lastActiveAt;
  final double commission;
  final int totalDeliveries;
  final double rating;

  Transporter({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.status,
    required this.blocked,
    this.latitude,
    this.longitude,
    this.cityId,
    this.cityName,
    required this.createdAt,
    this.lastActiveAt,
    required this.commission,
    required this.totalDeliveries,
    required this.rating,
  });

  factory Transporter.fromJson(Map<String, dynamic> json) {
    return Transporter(
      id: json['id'] ?? json['Id'] ?? 0,
      name: json['name'] ?? json['Name'] ?? 'N/A',
      phone: json['phone'] ?? json['Phone'] ?? 'N/A',
      email: json['email'] ?? json['Email'] ?? 'N/A',
      status: json['status'] ?? json['Status'] ?? 'Hors Ligne',
      blocked: json['blocked'] ?? json['Blocked'] ?? false,
      latitude: (json['latitude'] ?? json['Latitude'])?.toDouble(),
      longitude: (json['longitude'] ?? json['Longitude'])?.toDouble(),
      cityId: json['cityId'] ?? json['CityId'],
      cityName: json['cityName'] ?? json['CityName'],
      createdAt: DateTime.parse(json['createdAt'] ?? json['CreatedAt'] ?? DateTime.now().toIso8601String()),
      lastActiveAt: json['lastActiveAt'] != null || json['LastActiveAt'] != null
          ? DateTime.parse(json['lastActiveAt'] ?? json['LastActiveAt'])
          : null,
      commission: (json['commission'] ?? json['Commission'] ?? 0).toDouble(),
      totalDeliveries: json['totalDeliveries'] ?? json['TotalDeliveries'] ?? 0,
      rating: (json['rating'] ?? json['Rating'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Id': id,
      'Name': name,
      'Phone': phone,
      'Email': email,
      'Status': status,
      'Blocked': blocked,
      'Latitude': latitude,
      'Longitude': longitude,
      'CityId': cityId,
      'CityName': cityName,
      'CreatedAt': createdAt.toIso8601String(),
      'LastActiveAt': lastActiveAt?.toIso8601String(),
      'Commission': commission,
      'TotalDeliveries': totalDeliveries,
      'Rating': rating,
    };
  }

  /// Create a copy of this transporter with some fields updated
  Transporter copyWith({
    int? id,
    String? name,
    String? phone,
    String? email,
    String? status,
    bool? blocked,
    double? latitude,
    double? longitude,
    int? cityId,
    String? cityName,
    DateTime? createdAt,
    DateTime? lastActiveAt,
    double? commission,
    int? totalDeliveries,
    double? rating,
  }) {
    return Transporter(
      id: id ?? this.id,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      status: status ?? this.status,
      blocked: blocked ?? this.blocked,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      cityId: cityId ?? this.cityId,
      cityName: cityName ?? this.cityName,
      createdAt: createdAt ?? this.createdAt,
      lastActiveAt: lastActiveAt ?? this.lastActiveAt,
      commission: commission ?? this.commission,
      totalDeliveries: totalDeliveries ?? this.totalDeliveries,
      rating: rating ?? this.rating,
    );
  }

  /// Check if transporter is available for assignment
  bool get isAvailable {
    return status.toLowerCase() == 'en ligne' && !blocked;
  }

  /// Check if transporter is online
  bool get isOnline {
    return status.toLowerCase() == 'en ligne';
  }

  /// Get status display name
  String get statusDisplayName {
    switch (status.toLowerCase()) {
      case 'en ligne':
        return 'En Ligne';
      case 'hors ligne':
        return 'Hors Ligne';
      case 'en livraison':
        return 'En Livraison';
      case 'occupé':
        return 'Occupé';
      default:
        return status;
    }
  }

  /// Get status color for UI display
  String get statusColor {
    if (blocked) return '#EF5350'; // Red for blocked
    
    switch (status.toLowerCase()) {
      case 'en ligne':
        return '#66BB6A'; // Green
      case 'en livraison':
        return '#29B6F6'; // Light blue
      case 'occupé':
        return '#FFA726'; // Orange
      case 'hors ligne':
      default:
        return '#9E9E9E'; // Grey
    }
  }

  /// Get formatted commission percentage
  String get formattedCommission {
    return '${commission.toStringAsFixed(1)}%';
  }

  /// Get formatted rating
  String get formattedRating {
    return '${rating.toStringAsFixed(1)}/5';
  }

  /// Get display name with phone
  String get displayNameWithPhone {
    return '$name ($phone)';
  }

  /// Get last active time formatted
  String get lastActiveFormatted {
    if (lastActiveAt == null) return 'Jamais connecté';
    
    final now = DateTime.now();
    final difference = now.difference(lastActiveAt!);
    
    if (difference.inMinutes < 1) {
      return 'En ligne maintenant';
    } else if (difference.inMinutes < 60) {
      return 'Il y a ${difference.inMinutes} min';
    } else if (difference.inHours < 24) {
      return 'Il y a ${difference.inHours}h';
    } else {
      return 'Il y a ${difference.inDays} jours';
    }
  }
}

/// Transporter statistics model for dashboard
class TransporterStatistics {
  final int totalTransporters;
  final int onlineTransporters;
  final int activeDeliveries;
  final int blockedTransporters;
  final double averageRating;
  final double averageCommission;

  TransporterStatistics({
    required this.totalTransporters,
    required this.onlineTransporters,
    required this.activeDeliveries,
    required this.blockedTransporters,
    required this.averageRating,
    required this.averageCommission,
  });

  factory TransporterStatistics.fromJson(Map<String, dynamic> json) {
    return TransporterStatistics(
      totalTransporters: json['totalTransporters'] ?? json['TotalTransporters'] ?? 0,
      onlineTransporters: json['onlineTransporters'] ?? json['OnlineTransporters'] ?? 0,
      activeDeliveries: json['activeDeliveries'] ?? json['ActiveDeliveries'] ?? 0,
      blockedTransporters: json['blockedTransporters'] ?? json['BlockedTransporters'] ?? 0,
      averageRating: (json['averageRating'] ?? json['AverageRating'] ?? 0).toDouble(),
      averageCommission: (json['averageCommission'] ?? json['AverageCommission'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'TotalTransporters': totalTransporters,
      'OnlineTransporters': onlineTransporters,
      'ActiveDeliveries': activeDeliveries,
      'BlockedTransporters': blockedTransporters,
      'AverageRating': averageRating,
      'AverageCommission': averageCommission,
    };
  }
}