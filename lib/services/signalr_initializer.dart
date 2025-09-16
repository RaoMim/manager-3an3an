import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';
import 'signalr_service.dart';

/// Utility class to initialize and manage SignalR connections
class SignalRInitializer {
  static SignalRInitializer? _instance;
  static SignalRInitializer get instance => _instance ??= SignalRInitializer._();

  SignalRInitializer._();

  SignalRService? _signalRService;
  bool _isInitialized = false;

  /// Initialize SignalR service
  Future<bool> initialize() async {
    if (_isInitialized) {
      developer.log('SignalR already initialized');
      return true;
    }

    try {
      _signalRService = SignalRService.instance;
      
      // Connect to the hub
      final connected = await _signalRService!.connect();
      
      if (connected) {
        _isInitialized = true;
        developer.log('SignalR initialized successfully');
        
        // Subscribe to connection state changes for debugging
        if (kDebugMode) {
          _signalRService!.connectionStateStream.listen((state) {
            developer.log('SignalR connection state changed: $state');
          });
        }
        
        return true;
      } else {
        developer.log('Failed to connect to SignalR hub');
        return false;
      }
    } catch (e) {
      developer.log('Error initializing SignalR: $e');
      return false;
    }
  }

  /// Check if SignalR is initialized and connected
  bool get isReady => _isInitialized && (_signalRService?.isConnected ?? false);

  /// Get the SignalR service instance
  SignalRService? get service => _signalRService;

  /// Reconnect if disconnected
  Future<bool> ensureConnection() async {
    if (!_isInitialized) {
      return await initialize();
    }

    if (_signalRService != null && !_signalRService!.isConnected) {
      try {
        return await _signalRService!.connect();
      } catch (e) {
        developer.log('Error reconnecting to SignalR: $e');
        return false;
      }
    }

    return true;
  }

  /// Dispose resources
  Future<void> dispose() async {
    if (_signalRService != null) {
      await _signalRService!.disconnect();
    }
    _isInitialized = false;
    _signalRService = null;
  }

  /// Retry connection with exponential backoff
  Future<bool> retryConnection({int maxAttempts = 3}) async {
    for (int attempt = 1; attempt <= maxAttempts; attempt++) {
      developer.log('SignalR connection attempt $attempt of $maxAttempts');
      
      if (await ensureConnection()) {
        developer.log('SignalR connected successfully on attempt $attempt');
        return true;
      }
      
      if (attempt < maxAttempts) {
        // Exponential backoff: 2^attempt seconds
        final delaySeconds = (1 << attempt);
        developer.log('Waiting ${delaySeconds}s before retry...');
        await Future.delayed(Duration(seconds: delaySeconds));
      }
    }
    
    developer.log('Failed to connect to SignalR after $maxAttempts attempts');
    return false;
  }
}

/// Mixin to add SignalR connectivity awareness to widgets
mixin SignalRConnectionMixin {
  /// Check if SignalR is connected and ready
  bool get isSignalRReady => SignalRInitializer.instance.isReady;
  
  /// Get SignalR service instance
  SignalRService? get signalRService => SignalRInitializer.instance.service;
  
  /// Ensure SignalR connection before performing operations
  Future<bool> ensureSignalRConnection() async {
    return await SignalRInitializer.instance.ensureConnection();
  }
}