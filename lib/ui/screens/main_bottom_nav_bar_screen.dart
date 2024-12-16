import 'package:easy_buy/ui/screens/main_cart_screen.dart';
import 'package:easy_buy/ui/screens/main_home_screen.dart';
import 'package:easy_buy/ui/screens/main_profile_screen.dart';
import 'package:easy_buy/ui/screens/wish_list_screen.dart';
import 'package:flutter/material.dart';

class MainBottomNavBarScreen extends StatefulWidget {
  const MainBottomNavBarScreen({super.key});

  @override
  State<MainBottomNavBarScreen> createState() => _MainBottomNavBarScreenState();
}

class _MainBottomNavBarScreenState extends State<MainBottomNavBarScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = const [
    MainHomeScreen(),
    WishListScreen(),
    MainCartScreen(),
    MainProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'Wishlist'),
          NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          NavigationDestination(icon: Icon(Icons.person_pin), label: 'Account'),
        ],
      ),
    );
  }
}
