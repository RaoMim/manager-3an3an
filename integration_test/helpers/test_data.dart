import 'dart:math';
import 'package:manager_3an3an/models/order.dart';
import 'package:manager_3an3an/models/transporter.dart';
import 'package:manager_3an3an/models/city.dart';

/// Test data generator for integration testing
/// Provides realistic mock data for testing various scenarios
class TestData {
  static final Random _random = Random();

  /// Generate mock orders for testing
  static List<Order> generateMockOrders(int count) {
    final orders = <Order>[];
    final statuses = ['pending', 'assigned', 'in_progress', 'delivered', 'cancelled'];
    final cities = _getMockCityNames();
    
    for (int i = 0; i < count; i++) {
      final orderId = 1000 + i;
      final cityName = cities[_random.nextInt(cities.length)];
      final status = statuses[_random.nextInt(statuses.length)];
      final createdAt = DateTime.now().subtract(Duration(days: _random.nextInt(30)));
      
      orders.add(Order(
        id: orderId,
        orderNumber: 'CMD${orderId.toString().padLeft(6, '0')}',
        customerName: _generateCustomerName(),
        customerPhone: _generatePhoneNumber(),
        customerAddress: _generateAddress(cityName),
        cityId: _random.nextInt(10) + 1,
        cityName: cityName,
        totalAmount: (_random.nextDouble() * 1000 + 50).round().toDouble(),
        description: _generateOrderDescription(),
        status: status,
        transporterId: _random.nextBool() ? _random.nextInt(20) + 1 : null,
        transporterName: _random.nextBool() ? _generateTransporterName() : null,
        transporterPhone: _random.nextBool() ? _generatePhoneNumber() : null,
        deliveryDate: _random.nextBool() 
            ? createdAt.add(Duration(days: _random.nextInt(7) + 1))
            : null,
        notes: _random.nextBool() ? _generateNotes() : null,
        createdAt: createdAt,
        updatedAt: createdAt.add(Duration(minutes: _random.nextInt(1440))),
      ));
    }
    
    return orders;
  }

  /// Generate mock transporters for testing
  static List<Transporter> generateMockTransporters(int count) {
    final transporters = <Transporter>[];
    final statuses = ['active', 'inactive', 'busy'];
    final cities = _getMockCityNames();
    
    for (int i = 0; i < count; i++) {
      final transporterId = i + 1;
      final cityName = cities[_random.nextInt(cities.length)];
      final status = statuses[_random.nextInt(statuses.length)];
      
      transporters.add(Transporter(
        id: transporterId,
        name: _generateTransporterName(),
        phone: _generatePhoneNumber(),
        email: _generateEmail(),
        cityId: _random.nextInt(10) + 1,
        cityName: cityName,
        vehicleType: _generateVehicleType(),
        vehiclePlate: _generateVehiclePlate(),
        status: status,
        rating: (_random.nextDouble() * 2 + 3).round().toDouble(), // 3-5 rating
        completedOrders: _random.nextInt(500),
        currentOrders: status == 'busy' ? _random.nextInt(5) + 1 : 0,
        maxOrders: _random.nextInt(5) + 3, // 3-7 max orders
        isAvailable: status == 'active',
        latitude: _generateLatitude(),
        longitude: _generateLongitude(),
        lastActiveAt: DateTime.now().subtract(Duration(minutes: _random.nextInt(120))),
        createdAt: DateTime.now().subtract(Duration(days: _random.nextInt(365))),
        updatedAt: DateTime.now().subtract(Duration(minutes: _random.nextInt(60))),
      ));
    }
    
    return transporters;
  }

  /// Generate mock cities for testing
  static List<City> generateMockCities() {
    final cityNames = _getMockCityNames();
    final cities = <City>[];
    
    for (int i = 0; i < cityNames.length; i++) {
      cities.add(City(
        id: i + 1,
        name: cityNames[i],
        region: _getRegionForCity(cityNames[i]),
        isActive: true,
        deliveryFee: (_random.nextDouble() * 50 + 10).round().toDouble(),
        estimatedDeliveryTime: _random.nextInt(120) + 30, // 30-150 minutes
        latitude: _generateLatitude(),
        longitude: _generateLongitude(),
        createdAt: DateTime.now().subtract(Duration(days: _random.nextInt(365))),
        updatedAt: DateTime.now().subtract(Duration(days: _random.nextInt(30))),
      ));
    }
    
    return cities;
  }

  /// Generate mock statistics for testing
  static Map<String, dynamic> generateMockStatistics() {
    return {
      'total_orders': _random.nextInt(1000) + 500,
      'pending_orders': _random.nextInt(50) + 10,
      'assigned_orders': _random.nextInt(30) + 5,
      'in_progress_orders': _random.nextInt(40) + 8,
      'delivered_orders': _random.nextInt(800) + 400,
      'cancelled_orders': _random.nextInt(20) + 2,
      'total_transporters': _random.nextInt(50) + 20,
      'active_transporters': _random.nextInt(30) + 10,
      'busy_transporters': _random.nextInt(15) + 3,
      'available_transporters': _random.nextInt(20) + 5,
      'total_revenue': (_random.nextDouble() * 50000 + 10000).round().toDouble(),
      'today_revenue': (_random.nextDouble() * 2000 + 200).round().toDouble(),
      'avg_delivery_time': _random.nextInt(60) + 30, // 30-90 minutes
      'customer_satisfaction': (_random.nextDouble() * 1.5 + 3.5).round() / 10 * 10, // 3.5-5.0
      'last_updated': DateTime.now().millisecondsSinceEpoch,
    };
  }

  /// Private helper methods
  static List<String> _getMockCityNames() {
    return [
      'Casablanca',
      'Rabat',
      'Fès',
      'Marrakech',
      'Agadir',
      'Tanger',
      'Meknès',
      'Oujda',
      'Kénitra',
      'Tétouan',
      'Safi',
      'Mohammedia',
      'El Jadida',
      'Beni Mellal',
      'Nador',
    ];
  }

  static String _generateCustomerName() {
    final firstNames = ['Ahmed', 'Fatima', 'Mohammed', 'Aicha', 'Youssef', 'Khadija', 'Hassan', 'Zahra', 'Omar', 'Amina'];
    final lastNames = ['Alaoui', 'Benali', 'Idrissi', 'Fassi', 'Tazi', 'Benjelloun', 'Chraibi', 'Filali', 'Kadiri', 'Naciri'];
    
    return '${firstNames[_random.nextInt(firstNames.length)]} ${lastNames[_random.nextInt(lastNames.length)]}';
  }

  static String _generateTransporterName() {
    final names = ['Abdellah Transport', 'Said Livraison', 'Express Maghreb', 'Rapid Delivery', 'Atlas Express'];
    return names[_random.nextInt(names.length)];
  }

  static String _generatePhoneNumber() {
    return '+212${_random.nextInt(9) + 1}${_random.nextInt(90000000) + 10000000}';
  }

  static String _generateEmail() {
    final domains = ['gmail.com', 'yahoo.com', 'hotmail.com', 'outlook.com'];
    final username = 'user${_random.nextInt(10000)}';
    return '$username@${domains[_random.nextInt(domains.length)]}';
  }

  static String _generateAddress(String cityName) {
    final streetNumbers = _random.nextInt(999) + 1;
    final streetNames = ['Rue Mohammed V', 'Avenue Hassan II', 'Boulevard Zerktouni', 'Rue des FAR', 'Avenue Allal Ben Abdellah'];
    final neighborhoods = ['Centre Ville', 'Maarif', 'Gauthier', 'Palmier', 'Racine'];
    
    return '$streetNumbers ${streetNames[_random.nextInt(streetNames.length)]}, ${neighborhoods[_random.nextInt(neighborhoods.length)]}, $cityName';
  }

  static String _generateOrderDescription() {
    final items = ['Électronique', 'Vêtements', 'Livres', 'Cosmétiques', 'Alimentaire', 'Mobilier', 'Jouets'];
    final quantities = _random.nextInt(5) + 1;
    final item = items[_random.nextInt(items.length)];
    
    return '$quantities x $item';
  }

  static String _generateNotes() {
    final notes = [
      'Livraison urgente',
      'Appeler avant livraison',
      'Fragile - manipuler avec précaution',
      'Paiement à la livraison',
      'Vérifier l\'identité du destinataire',
      'Livraison en main propre uniquement',
    ];
    return notes[_random.nextInt(notes.length)];
  }

  static String _generateVehicleType() {
    final types = ['Moto', 'Voiture', 'Camionnette', 'Vélo'];
    return types[_random.nextInt(types.length)];
  }

  static String _generateVehiclePlate() {
    final letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    final numbers = _random.nextInt(90000) + 10000;
    final letter1 = letters[_random.nextInt(letters.length)];
    final letter2 = letters[_random.nextInt(letters.length)];
    
    return '$numbers-$letter1-$letter2';
  }

  static double _generateLatitude() {
    // Morocco latitude range: approximately 21° to 36° North
    return 21 + (_random.nextDouble() * 15);
  }

  static double _generateLongitude() {
    // Morocco longitude range: approximately -17° to -1° West
    return -17 + (_random.nextDouble() * 16);
  }

  static String _getRegionForCity(String cityName) {
    final regionMap = {
      'Casablanca': 'Grand Casablanca',
      'Rabat': 'Rabat-Salé-Kénitra',
      'Fès': 'Fès-Meknès',
      'Marrakech': 'Marrakech-Safi',
      'Agadir': 'Souss-Massa',
      'Tanger': 'Tanger-Tétouan-Al Hoceïma',
      'Meknès': 'Fès-Meknès',
      'Oujda': 'Oriental',
      'Kénitra': 'Rabat-Salé-Kénitra',
      'Tétouan': 'Tanger-Tétouan-Al Hoceïma',
    };
    
    return regionMap[cityName] ?? 'Autre';
  }

  /// Generate test scenario data
  static Map<String, dynamic> generateTestScenario(String scenarioType) {
    switch (scenarioType) {
      case 'high_load':
        return {
          'orders_count': 1000,
          'transporters_count': 100,
          'concurrent_users': 50,
          'update_frequency': 1, // seconds
        };
      case 'network_error':
        return {
          'error_rate': 0.3, // 30% of requests fail
          'timeout_duration': 5000, // 5 seconds
          'retry_attempts': 3,
        };
      case 'offline_mode':
        return {
          'cache_duration': 3600, // 1 hour
          'offline_duration': 300, // 5 minutes
          'sync_on_reconnect': true,
        };
      default:
        return {
          'orders_count': 50,
          'transporters_count': 20,
          'update_frequency': 30, // seconds
        };
    }
  }
}