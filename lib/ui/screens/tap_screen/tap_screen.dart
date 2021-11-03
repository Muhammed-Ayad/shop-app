import 'package:flutter/material.dart';
import '../home/home_screen.dart';

import 'account_screen.dart';
import 'favorite_screen.dart';
import 'order_screen.dart';

class TapScreen extends StatefulWidget {
  const TapScreen({Key? key}) : super(key: key);

  @override
  _TapScreenState createState() => _TapScreenState();
}

class _TapScreenState extends State<TapScreen> {
  int _seletedPageIndex = 0;
  final List<Map<String, Widget>> _pages = [
    {
      'page': const HomeScreen(),
      'title': const Text('HomeScreen'),
    },
    {
      'page': const OrderScreen(),
      'title': const Text('OrderScreen'),
    },
    {
      'page': const FavoriteScreen(),
      'title': const Text('FavoriteScreen'),
    },
    {
      'page': const AccountScreen(),
      'title': const Text('AccountScreen'),
    },
  ];

  void _selectPage(int index) {
    setState(() {
      _seletedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_seletedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        unselectedItemColor: Colors.teal,
        currentIndex: _seletedPageIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _selectPage,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
