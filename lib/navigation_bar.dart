import 'package:flutter/material.dart';

import 'assets/db_icons.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedItemIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(DBIcons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(DBIcons.shoes),
            title: Text('Shoes'),
          ),
          BottomNavigationBarItem(
            icon: Icon(DBIcons.shirt),
            title: Text('Clothings'),
          ),
          BottomNavigationBarItem(
            icon: Icon(DBIcons.cart),
            title: Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Account'),
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedItemIndex = index;
          });
        },
      ),
    );
  }
}
