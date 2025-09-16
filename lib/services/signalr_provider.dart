import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'signalr_service.dart';

/// Provider for SignalR service to make it available throughout the app
class SignalRProvider extends StatefulWidget {
  final Widget child;
  
  const SignalRProvider({
    super.key,
    required this.child,
  });

  @override
  State<SignalRProvider> createState() => _SignalRProviderState();
}

class _SignalRProviderState extends State<SignalRProvider> 
    with WidgetsBindingObserver {
  
  late final SignalRService _signalRService;
  
  @override
  void initState() {
    super.initState();
    _signalRService = SignalRService.instance;
    WidgetsBinding.instance.addObserver(this);
    
    // Initialize connection
    _initializeConnection();
  }

  Future<void> _initializeConnection() async {
    try {
      await _signalRService.connect();
    } catch (e) {
      debugPrint('Failed to initialize SignalR connection: $e');
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    
    switch (state) {
      case AppLifecycleState.resumed:
        // Reconnect when app comes back to foreground
        if (!_signalRService.isConnected) {
          _signalRService.connect();
        }
        break;
      case AppLifecycleState.paused:
        // Keep connection alive when app goes to background
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.detached:
        // Disconnect when app is being destroyed
        _signalRService.disconnect();
        break;
      case AppLifecycleState.hidden:
        break;
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _signalRService.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<SignalRService>.value(
      value: _signalRService,
      child: widget.child,
    );
  }
}

/// Extension to easily access SignalR service from context
extension SignalRContextExtension on BuildContext {
  SignalRService get signalR => Provider.of<SignalRService>(this, listen: false);
}