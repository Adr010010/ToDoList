import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabChange;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100), // Радиус скругления
        child: GNav(
          tabs: [
            _buildNavItem(
              icon: Icons.home,
              text: "Home",
              index: 0,
            ),
            _buildNavItem(
              icon: Icons.person,
              text: "Person",
              index: 1,
            ),
            _buildNavItem(
              icon: Icons.settings,
              text: "Settings",
              index: 2,
            ),
            _buildNavItem(
              icon: Icons.favorite,
              text: "Favorite",
              index: 3,
            ),
          ],
          activeColor: Colors.white,
          color: const Color.fromARGB(255, 203, 203, 203),
          backgroundColor: Colors.blueAccent,
          selectedIndex: currentIndex,
          onTabChange: onTabChange,
        ),
      ),
    );
  }

  GButton _buildNavItem({
    required IconData icon,
    required String text,
    required int index,
  }) {
    return GButton(
      icon: icon,
      text: text,
      iconColor: currentIndex == index
          ? const Color.fromARGB(255, 255, 255, 255)
          : const Color.fromARGB(255, 255, 255, 255),
      backgroundColor: currentIndex == index
          ? const Color.fromARGB(255, 255, 255, 255).withOpacity(0.20)
          : const Color.fromARGB(0, 255, 255, 255),
      iconActiveColor: const Color.fromARGB(255, 255, 255, 255),
      textColor: currentIndex == index
          ? const Color.fromARGB(255, 255, 255, 255)
          : const Color.fromARGB(255, 255, 255, 255),
    );
  }
}
