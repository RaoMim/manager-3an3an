import 'dart:async';
import 'dart:convert';
import 'dart:developer' as developer;
import 'package:signalr_netcore/signalr_client.dart';
import '../models/order.dart';
import 'auth_service.dart';

/// SignalR service for real-time order updates
class SignalRService {
  static const String _baseUrl = 'https://akl.3an3an.ma';
  static const String _hubUrl = '$_baseUrl/orderHub';
  
  static SignalRService? _instance;
  static SignalRService get instance => _instance ??= SignalRService._();
  
  HubConnection? _connection;
  final AuthService _authService = AuthService();
  
  // Connection state
  bool get isConnected => _connection?.state == HubConnectionState.Connected;
  bool get isConnecting => _connection?.state == HubConnectionState.Connecting;
  bool get isDisconnected => _connection?.state == HubConnectionState.Disconnected;
  
  // Stream controllers for real-time events
  final StreamController<Order> _orderUpdatedController = StreamController<Order>.broadcast();
  final StreamController<Map<String, dynamic>> _orderNotificationController = StreamController<Map<String, dynamic>>.broadcast();
  final StreamController<Map<String, dynamic>> _transporterStatusController = StreamController<Map<String, dynamic>>.broadcast();
  final StreamController<Map<String, dynamic>> _statisticsUpdateController = StreamController<Map<String, dynamic>>.broadcast();
  final StreamController<HubConnectionState> _connectionStateController = StreamController<HubConnectionState>.broadcast();

  // Public streams
  Stream<Order> get orderUpdatedStream => _orderUpdatedController.stream;
  Stream<Map<String, dynamic>> get orderNotificationStream => _orderNotificationController.stream;
  Stream<Map<String, dynamic>> get transporterStatusStream => _transporterStatusController.stream;
  Stream<Map<String, dynamic>> get statisticsUpdateStream => _statisticsUpdateController.stream;
  Stream<HubConnectionState> get connectionStateStream => _connectionStateController.stream;

  SignalRService._();

  /// Initialize and connect to SignalR hub
  Future<bool> connect() async {
    try {
      if (_connection != null && isConnected) {
        developer.log('SignalR already connected');
        return true;
      }

      // Get auth token
      final token = await _authService.getToken();
      if (token == null) {
        developer.log('No auth token available for SignalR connection');
        return false;
      }

      // Create connection
      _connection = HubConnectionBuilder()
          .withUrl(_hubUrl, options: HttpConnectionOptions(
            accessTokenFactory: () async => token,
            headers: {'Authorization': 'Bearer $token'},
            transport: HttpTransportType.WebSockets,
            logLevel: LogLevel.Information,
          ))
          .build();

      // Setup event handlers
      _setupEventHandlers();

      // Setup connection lifecycle handlers
      _connection!.onclose(({error}) {
        developer.log('SignalR connection closed: $error');
        _connectionStateController.add(HubConnectionState.Disconnected);
        _scheduleReconnect();
      });

      _connection!.onreconnecting(({error}) {
        developer.log('SignalR reconnecting: $error');
        _connectionStateController.add(HubConnectionState.Reconnecting);
      });

      _connection!.onreconnected(({connectionId}) {
        developer.log('SignalR reconnected: $connectionId');
        _connectionStateController.add(HubConnectionState.Connected);
      });

      // Connect
      await _connection!.start();
      
      if (isConnected) {
        developer.log('SignalR connected successfully');
        _connectionStateController.add(HubConnectionState.Connected);
        
        // Join manager group for notifications
        await _joinManagerGroup();
        
        return true;
      }

      return false;
    } catch (e) {
      developer.log('SignalR connection error: $e');
      _connectionStateController.add(HubConnectionState.Disconnected);
      _scheduleReconnect();
      return false;
    }
  }

  /// Setup SignalR event handlers
  void _setupEventHandlers() {
    if (_connection == null) return;

    // Order notification from web dashboard
    _connection!.on('ReceiveOrderNotification', (List<Object?>? arguments) {
      try {
        if (arguments != null && arguments.isNotEmpty) {
          final data = arguments[0] as Map<String, dynamic>?;
          if (data != null) {
            developer.log('Received order notification: $data');
            _orderNotificationController.add(data);
            
            // If it contains order data, parse and emit order update
            if (data['order'] != null) {
              final order = Order.fromJson(data['order']);
              _orderUpdatedController.add(order);
            }
          }
        }
      } catch (e) {
        developer.log('Error processing order notification: $e');
      }
    });

    // Order status updated
    _connection!.on('OrderStatusUpdated', (List<Object?>? arguments) {
      try {
        if (arguments != null && arguments.isNotEmpty) {
          final orderData = arguments[0] as Map<String, dynamic>?;
          if (orderData != null) {
            developer.log('Order status updated: $orderData');
            final order = Order.fromJson(orderData);
            _orderUpdatedController.add(order);
          }
        }
      } catch (e) {
        developer.log('Error processing order status update: $e');
      }
    });

    // Order assigned to transporter
    _connection!.on('OrderAssigned', (List<Object?>? arguments) {
      try {
        if (arguments != null && arguments.isNotEmpty) {
          final data = arguments[0] as Map<String, dynamic>?;
          if (data != null) {
            developer.log('Order assigned: $data');
            _orderNotificationController.add({
              'type': 'order_assigned',
              'data': data,
            });
            
            if (data['order'] != null) {
              final order = Order.fromJson(data['order']);
              _orderUpdatedController.add(order);
            }
          }
        }
      } catch (e) {
        developer.log('Error processing order assignment: $e');
      }
    });

    // Transporter status changed
    _connection!.on('TransporterStatusChanged', (List<Object?>? arguments) {
      try {
        if (arguments != null && arguments.isNotEmpty) {
          final data = arguments[0] as Map<String, dynamic>?;
          if (data != null) {
            developer.log('Transporter status changed: $data');
            _transporterStatusController.add(data);
          }
        }
      } catch (e) {
        developer.log('Error processing transporter status change: $e');
      }
    });

    // Statistics updated
    _connection!.on('StatisticsUpdated', (List<Object?>? arguments) {
      try {
        if (arguments != null && arguments.isNotEmpty) {
          final data = arguments[0] as Map<String, dynamic>?;
          if (data != null) {
            developer.log('Statistics updated: $data');
            _statisticsUpdateController.add(data);
          }
        }
      } catch (e) {
        developer.log('Error processing statistics update: $e');
      }
    });

    // New order created
    _connection!.on('NewOrderCreated', (List<Object?>? arguments) {
      try {
        if (arguments != null && arguments.isNotEmpty) {
          final orderData = arguments[0] as Map<String, dynamic>?;
          if (orderData != null) {
            developer.log('New order created: $orderData');
            final order = Order.fromJson(orderData);
            _orderUpdatedController.add(order);
            
            _orderNotificationController.add({
              'type': 'new_order',
              'order': orderData,
            });
          }
        }
      } catch (e) {
        developer.log('Error processing new order: $e');
      }
    });
  }

  /// Join the manager group to receive notifications
  Future<void> _joinManagerGroup() async {
    try {
      if (_connection != null && isConnected) {
        await _connection!.invoke('JoinManagerGroup');
        developer.log('Joined manager group successfully');
      }
    } catch (e) {
      developer.log('Error joining manager group: $e');
    }
  }

  /// Leave the manager group
  Future<void> _leaveManagerGroup() async {
    try {
      if (_connection != null && isConnected) {
        await _connection!.invoke('LeaveManagerGroup');
        developer.log('Left manager group successfully');
      }
    } catch (e) {
      developer.log('Error leaving manager group: $e');
    }
  }

  /// Send a hub method call
  Future<void> invokeMethod(String methodName, [List<Object>? args]) async {
    try {
      if (_connection != null && isConnected) {
        await _connection!.invoke(methodName, args: args);
        developer.log('Hub method invoked: $methodName');
      } else {
        developer.log('Cannot invoke method, not connected to hub');
        // Try to reconnect
        await connect();
      }
    } catch (e) {
      developer.log('Error invoking hub method $methodName: $e');
    }
  }

  /// Notify order status change
  Future<void> notifyOrderStatusChange(int orderId, String status) async {
    await invokeMethod('NotifyOrderStatusChange', [orderId, status]);
  }

  /// Notify order assignment
  Future<void> notifyOrderAssignment(int orderId, int transporterId) async {
    await invokeMethod('NotifyOrderAssignment', [orderId, transporterId]);
  }

  /// Request statistics refresh
  Future<void> requestStatisticsRefresh() async {
    await invokeMethod('RequestStatisticsRefresh');
  }

  /// Schedule automatic reconnection
  void _scheduleReconnect() {
    Timer(const Duration(seconds: 5), () {
      if (isDisconnected) {
        developer.log('Attempting to reconnect to SignalR...');
        connect();
      }
    });
  }

  /// Disconnect from SignalR hub
  Future<void> disconnect() async {
    try {
      if (_connection != null) {
        await _leaveManagerGroup();
        await _connection!.stop();
        _connectionStateController.add(HubConnectionState.Disconnected);
        developer.log('SignalR disconnected');
      }
    } catch (e) {
      developer.log('Error disconnecting from SignalR: $e');
    }
  }

  /// Dispose resources
  void dispose() {
    disconnect();
    _orderUpdatedController.close();
    _orderNotificationController.close();
    _transporterStatusController.close();
    _statisticsUpdateController.close();
    _connectionStateController.close();
  }
}

/// Extension for easy access to SignalR in widgets
extension SignalRServiceExtension on SignalRService {
  /// Get a stream that automatically connects when first listened to
  Stream<T> getAutoConnectStream<T>(Stream<T> stream) {
    return stream.transform(StreamTransformer<T, T>.fromHandlers(
      handleListen: (sink, cancelOnError) {
        // Auto-connect when stream is first listened to
        if (!isConnected && !isConnecting) {
          connect();
        }
        return stream.listen((data) => sink.add(data), cancelOnError: cancelOnError);
      },
    ));
  }
}