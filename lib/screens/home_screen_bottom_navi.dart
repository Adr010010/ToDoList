import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:todolistadr/screens/bottom_list/home_screen.dart';
import 'package:todolistadr/screens/bottom_list/person_screen.dart';
import 'package:todolistadr/screens/bottom_list/settings_screen.dart';
import 'package:todolistadr/widget/buttom_navigation_bar_items.dart'; // Импортируем файл с items

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List<Widget> screens = const <Widget>[
    HomeScreenContent(),
    PersonBotton(),
    SettingsBotton(),
  ];

  String title = "Home";

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;

      if (_currentIndex == 0) {
        title = "To-Do List";
      } else if (_currentIndex == 1) {
        title = "Person";
      } else if (_currentIndex == 2) {
        title = "Settings";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 28,
              color: Color.fromARGB(255, 0, 0, 0),
              shadows: [
                Shadow(
                  // ignore: deprecated_member_use
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, 3),
                  blurRadius: 20,
                ),
              ],
            ),
          ),
        ),
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: GNav(
        tabs: tabs, // Теперь items доступна
        activeColor: const Color.fromARGB(255, 203, 203, 203),
        color: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: const Color.fromARGB(255, 154, 154, 154),
        selectedIndex: _currentIndex,
        onTabChange: _onItemTapped,
      ),
    );
  }
}
