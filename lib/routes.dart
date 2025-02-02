import 'package:flutter/material.dart';
import 'screens/home_screen_bottom_navi.dart';

class ScreenRoutes {
  static const String home = '/home';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const HomeScreen(),
    };
  }
}
