import 'package:flutter/material.dart';
import 'package:manage_store/themes/colors.dart';

import '../../views.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  int _currentPage = 0;
  static const List _pages = [
    DashBoardPage(),
    OrdersPage(),
    CatalogPage(),
    OffersPage(),
    SettingsPage()
  ];
  @override
  Widget build(BuildContext context) {
    print('admin home page');
    return Scaffold(
      body: Center(child: _pages[_currentPage],),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primaryColor,
          currentIndex: _currentPage,
          onTap: (page) {
            if (page != _currentPage) {
              setState(() {
                _currentPage = page;
              });
            }
          },
          selectedFontSize: 12,
          type: BottomNavigationBarType.fixed,
          elevation: 10,
          selectedItemColor: white,
          unselectedItemColor: Colors.white54,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
                label: 'Dashboard', icon: Icon(Icons.bar_chart_sharp)),
            BottomNavigationBarItem(
                label: 'Orders', icon: Icon(Icons.shopping_cart)),
            BottomNavigationBarItem(label: 'Catalog', icon: Icon(Icons.list)),
            BottomNavigationBarItem(label: 'Offers', icon: Icon(Icons.sell)),
            BottomNavigationBarItem(
                label: 'Settings', icon: Icon(Icons.settings)),
          ]),
    );
  }
}
