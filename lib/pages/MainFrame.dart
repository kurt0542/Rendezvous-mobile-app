import 'package:flutter/material.dart';
import 'package:mobile_app_project/controller/keyboard_dismiss_wrapper.dart';
import 'package:mobile_app_project/pages/ExplorePage.dart';
import 'package:mobile_app_project/pages/HomePage.dart';

class MainFrame extends StatefulWidget {
  const MainFrame({super.key});

  @override
  State<MainFrame> createState() => _MainFrameState();
}

class _MainFrameState extends State<MainFrame> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    KeyboardDismissWrapper(child: HomePage()),
    Center(child: ExplorePage()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'explore'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
