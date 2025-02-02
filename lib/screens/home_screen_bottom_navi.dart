import 'package:flutter/material.dart';
import 'package:todolistadr/screens/bottom_list/favorite_screen.dart';
import 'package:todolistadr/screens/bottom_list/home_screen.dart';
import 'package:todolistadr/screens/bottom_list/person_screen.dart';
import 'package:todolistadr/screens/bottom_list/settings_screen.dart';
import 'package:todolistadr/widget/custom_drawer.dart';
import 'package:todolistadr/widget/custom_bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> pages = const <Widget>[
    HomeScreenContent(),
    PersonBotton(),
    SettingsBotton(),
    FavoriteScreenContent(),
  ];

  final List<String> titles = ["To-Do List", "Person", "Settings", "favorite"];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titles[_currentIndex],
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 28,
            color: Color.fromARGB(255, 0, 0, 0),
            shadows: [
              Shadow(
                color: Colors.black.withAlpha(25),
                offset: Offset(0, 3),
                blurRadius: 20,
              ),
            ],
          ),
        ),
      ),
      drawer: const CustomDrawer(),
      body: pages[_currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTabChange: _onItemTapped,
      ),
    );
  }
}
