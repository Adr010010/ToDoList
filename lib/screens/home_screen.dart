import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'To-Do List',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 28,
                color: Color.fromARGB(255, 0, 0, 0),
                shadows: [
                  Shadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(0, 3),
                      blurRadius: 20)
                ]),
          ),
        ),
      ),
    );
  }
}
