import 'package:flutter/material.dart';
import 'DescubriHomeWidget.dart';
import 'DescubriMenuWidget.dart';
import 'DescubriProfileRoot.dart';

class DescubriHome extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _DescubriHomeState();
  }
}

class _DescubriHomeState extends State<DescubriHome> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    DescubriMenuWidget(Colors.red),
    DescubriHomeWidget(Colors.white),
    DescubriProfileRoot(Colors.black)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Profile'),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
