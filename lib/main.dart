import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services/auth_service.dart';
import 'services/firebase_notifications_helper.dart';
import 'services/permission_service.dart';
import 'screens/login_screen.dart';
import 'screens/orders_screen.dart';
import 'screens/order_details_screen.dart';
import 'screens/permissions_screen.dart';
import 'models/order.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  print("🚀 MAIN: App starting, Firebase will be initialized later..."); // Updated
  
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
          '/permissions': (context) => const PermissionsScreen(),
        },
        onGenerateRoute: (settings) {
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
    await Future.delayed(const Duration(seconds: 2));
    
    try {
      // Initialize permissions early
      if (mounted) {
        await PermissionService().initializePermissions(context);
      }
      
      final authService = Provider.of<AuthService>(context, listen: false);
      final isAuthenticated = await authService.validateToken();

      if (mounted) {
        if (isAuthenticated) {
          // Initialize FCM with context after authentication
          await FirebaseNotificationsHelper().initializeFCMWithContext(context);
          Navigator.pushReplacementNamed(context, '/orders');
        } else {
          Navigator.pushReplacementNamed(context, '/login');
        }
      }
    } catch (e) {
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
            
            const Text(
              '3an3an Manager',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            
            const SizedBox(height: 8),
            
            Text(
              'Gestion des commandes',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.9),
                fontWeight: FontWeight.w400,
              ),
            ),
            
            const SizedBox(height: 48),
            
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}