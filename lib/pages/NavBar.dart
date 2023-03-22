import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'PanierPage.dart';
import 'RestaurantPage.dart';
class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavBarState();
}

class _NavBarState extends State<Navbar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    PanierPage(),
    RestaurantPage()

  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.orange,
        backgroundColor: Colors.white,
        height: 50,
        animationDuration: Duration(
          milliseconds: 300,
        ),
        items: const [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.shopping_cart,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.black,
          )

        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}


