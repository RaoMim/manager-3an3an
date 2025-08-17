import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'firebase_options.dart';
import 'services/auth_service.dart';
import 'services/firebase_notifications_helper.dart';
import 'screens/login_screen.dart';
import 'screens/orders_screen.dart';
import 'screens/order_details_screen.dart';
import 'models/order.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  try {
    // Initialize Firebase
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    
    if (kDebugMode) {
      print("Firebase initialized successfully");
    }
  } catch (e) {
    if (kDebugMode) {
      print("Error initializing Firebase: $e");
    }
  }
  
  runApp(const Manager3an3anApp());
}

class Manager3an3anApp extends StatelessWidget {
  const Manager3an3anApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(),
        ),
        Provider<FirebaseNotificationsHelper>(
          create: (_) => FirebaseNotificationsHelper(),
        ),
      ],
      child: MaterialApp(
        title: '3an3an Manager',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFFEF5350),
            primary: const Color(0xFFEF5350),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFFEF5350),
            foregroundColor: Colors.white,
            elevation: 0,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFEF5350),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xFFEF5350)),
            ),
          ),
          cardTheme: const CardThemeData(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/login': (context) => const LoginScreen(),
          '/orders': (context) => const OrdersScreen(),
        },
        onGenerateRoute: (settings) {
          // Handle custom routes that need parameters
          if (settings.name == '/order-details') {
            final order = settings.arguments as Order;
            return MaterialPageRoute(
              builder: (context) => OrderDetailsScreen(order: order),
            );
          }
          return null;
        },
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    try {
      // Initialize Firebase Notifications
      final notificationsHelper = Provider.of<FirebaseNotificationsHelper>(context, listen: false);
      await notificationsHelper.initializeFCM();
      
      // Setup order notification callback
      notificationsHelper.onNewOrderReceived = (Order order) {
        // Handle new order notification
        if (kDebugMode) {
          print("New order received in app: ${order.id}");
        }
        
        // Show notification to user if app is in foreground
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Nouvelle commande #${order.id} de ${order.clientName}'),
              backgroundColor: const Color(0xFFEF5350),
              action: SnackBarAction(
                label: 'Voir',
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/orders',
                    (route) => false,
                  );
                },
              ),
            ),
          );
        }
      };

      // Check authentication status
      final authService = Provider.of<AuthService>(context, listen: false);
      final isAuthenticated = await authService.validateToken();

      // Navigate based on authentication status
      if (mounted) {
        if (isAuthenticated) {
          Navigator.pushReplacementNamed(context, '/orders');
        } else {
          Navigator.pushReplacementNamed(context, '/login');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error during app initialization: $e");
      }
      
      // On error, go to login
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/login');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEF5350),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: const Icon(
                Icons.admin_panel_settings,
                size: 60,
                color: Color(0xFFEF5350),
              ),
            ),
            
            const SizedBox(height: 32),
            
            // App name
            const Text(
              '3an3an Manager',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            
            const SizedBox(height: 8),
            
            // Subtitle
            Text(
              'Gestion des commandes',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.9),
                fontWeight: FontWeight.w400,
              ),
            ),
            
            const SizedBox(height: 48),
            
            // Loading indicator
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
