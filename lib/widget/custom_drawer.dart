import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
      ),
      child: Column(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/drawerHeaderImg/9d2efa39ba81a73d45f8d315622736d6.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.blueAccent),
            title: const Text("Главная"),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: const Icon(Icons.person, color: Colors.blueAccent),
            title: const Text("Профиль"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.blueAccent),
            title: const Text("Настройки"),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.redAccent),
            title: const Text("Выйти"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
