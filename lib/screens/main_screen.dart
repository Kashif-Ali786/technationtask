import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:technationtask/screens/calculator_screen.dart';
import 'package:technationtask/screens/home.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:technationtask/widgets/radial_menu_list.dart';

import 'demo.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final List<Widget> pages = [Home(), CalculatorScreen(), Page3(), Page4(), Page5()];
  int _selectedIndex = 0;
  PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 24.0),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.refresh),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, size: 24.0),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, size: 24.0),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: RadialMenu(),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}


