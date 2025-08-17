import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../models/order.dart';
import '../services/orders_service.dart';
import '../services/auth_service.dart';
import '../widgets/order_card.dart';
import 'order_details_screen.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> with TickerProviderStateMixin {
  final OrdersService _ordersService = OrdersService();
  final AuthService _authService = AuthService();
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  List<Order> _orders = [];
  List<Order> _filteredOrders = [];
  bool _isLoading = true;
  bool _isLoadingMore = false;
  String _selectedStatus = 'all';
  String _searchQuery = '';
  int _currentPage = 1;
  bool _hasMoreData = true;

  // Filter options
  final List<Map<String, String>> _statusFilters = [
    {'value': 'all', 'label': 'Toutes'},
    {'value': 'pending', 'label': 'En attente'},
    {'value': 'confirmed', 'label': 'Confirmées'},
    {'value': 'preparing', 'label': 'En préparation'},
    {'value': 'ready', 'label': 'Prêtes'},
    {'value': 'assigned', 'label': 'Assignées'},
    {'value': 'picked_up', 'label': 'Récupérées'},
    {'value': 'in_delivery', 'label': 'En livraison'},
    {'value': 'delivered', 'label': 'Livrées'},
    {'value': 'returned', 'label': 'Retournées'},
    {'value': 'cancelled', 'label': 'Annulées'},
  ];

  @override
  void initState() {
    super.initState();
    _loadOrders();
    _searchController.addListener(_onSearchChanged);
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    if (_searchController.text != _searchQuery) {
      setState(() {
        _searchQuery = _searchController.text;
        _currentPage = 1;
        _hasMoreData = true;
      });
      _loadOrders(reset: true);
    }
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 200) {
      if (!_isLoadingMore && _hasMoreData) {
        _loadMoreOrders();
      }
    }
  }

  Future<void> _loadOrders({bool reset = false}) async {
    if (reset) {
      setState(() {
        _isLoading = true;
        _orders.clear();
        _currentPage = 1;
      });
    }

    try {
      final response = await _ordersService.getOrders(
        page: _currentPage,
        status: _selectedStatus == 'all' ? null : _selectedStatus,
        search: _searchQuery.isNotEmpty ? _searchQuery : null,
      );

      if (response.isSuccess && response.data != null) {
        setState(() {
          if (reset) {
            _orders = response.data!;
          } else {
            _orders.addAll(response.data!);
          }
          _filteredOrders = _orders;
          _hasMoreData = response.data!.length == OrdersService.defaultPageSize;
          _isLoading = false;
          _isLoadingMore = false;
        });
      } else {
        _showErrorSnackBar(response.errorMessage ?? 'Erreur lors du chargement des commandes');
        setState(() {
          _isLoading = false;
          _isLoadingMore = false;
        });
      }
    } catch (e) {
      _showErrorSnackBar('Erreur de connexion');
      setState(() {
        _isLoading = false;
        _isLoadingMore = false;
      });
    }
  }

  Future<void> _loadMoreOrders() async {
    if (_isLoadingMore || !_hasMoreData) return;

    setState(() {
      _isLoadingMore = true;
      _currentPage++;
    });

    await _loadOrders();
  }

  Future<void> _refreshOrders() async {
    setState(() {
      _currentPage = 1;
      _hasMoreData = true;
    });
    await _loadOrders(reset: true);
  }

  void _onStatusFilterChanged(String status) {
    if (_selectedStatus != status) {
      setState(() {
        _selectedStatus = status;
        _currentPage = 1;
        _hasMoreData = true;
      });
      _loadOrders(reset: true);
    }
  }

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  void _navigateToOrderDetails(Order order) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OrderDetailsScreen(order: order),
      ),
    ).then((_) => _refreshOrders()); // Refresh when coming back
  }

  Future<void> _logout() async {
    await _authService.logout();
    if (mounted) {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text(
          '3an3an Manager',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFFEF5350),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.white),
            onPressed: _refreshOrders,
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onSelected: (value) {
              if (value == 'logout') {
                _logout();
              } else if (value == 'permissions') {
                Navigator.pushNamed(context, '/permissions');
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'permissions',
                child: Row(
                  children: [
                    Icon(Icons.security, color: Color(0xFFEF5350)),
                    SizedBox(width: 8),
                    Text('Permissions'),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 'logout',
                child: Row(
                  children: [
                    Icon(Icons.logout, color: Colors.red),
                    SizedBox(width: 8),
                    Text('Déconnexion'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          // Search and filter section
          _buildSearchAndFilters(),
          
          // Orders list
          Expanded(
            child: _buildOrdersList(),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchAndFilters() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Search bar
          TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Rechercher par nom client, téléphone ou N° commande...',
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              filled: true,
              fillColor: Colors.grey[50],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
          ),
          
          const SizedBox(height: 12),
          
          // Status filters
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _statusFilters.length,
              itemBuilder: (context, index) {
                final filter = _statusFilters[index];
                final isSelected = _selectedStatus == filter['value'];
                
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: FilterChip(
                    label: Text(
                      filter['label']!,
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black87,
                        fontSize: 12,
                      ),
                    ),
                    selected: isSelected,
                    onSelected: (_) => _onStatusFilterChanged(filter['value']!),
                    backgroundColor: Colors.grey[200],
                    selectedColor: const Color(0xFFEF5350),
                    checkmarkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOrdersList() {
    if (_isLoading) {
      return const Center(
        child: SpinKitCircle(
          color: Color(0xFFEF5350),
          size: 50,
        ),
      );
    }

    if (_filteredOrders.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.receipt_long,
              size: 80,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 16),
            Text(
              _searchQuery.isNotEmpty
                  ? 'Aucune commande trouvée pour "$_searchQuery"'
                  : 'Aucune commande disponible',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 8),
            TextButton.icon(
              onPressed: _refreshOrders,
              icon: const Icon(Icons.refresh),
              label: const Text('Actualiser'),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: _refreshOrders,
      color: const Color(0xFFEF5350),
      child: ListView.builder(
        controller: _scrollController,
        padding: const EdgeInsets.all(16),
        itemCount: _filteredOrders.length + (_hasMoreData ? 1 : 0),
        itemBuilder: (context, index) {
          if (index >= _filteredOrders.length) {
            // Loading indicator for pagination
            return const Padding(
              padding: EdgeInsets.all(16),
              child: Center(
                child: SpinKitCircle(
                  color: Color(0xFFEF5350),
                  size: 30,
                ),
              ),
            );
          }

          final order = _filteredOrders[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: OrderCard(
              order: order,
              onTap: () => _navigateToOrderDetails(order),
            ),
          );
        },
      ),
    );
  }
}