import 'package:flutter/material.dart';

class BottomNavApp extends StatelessWidget {
  final int index;
  final Function(int index) selectedNav;
  const BottomNavApp(
      {super.key, required this.index, required this.selectedNav});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (value) => selectedNav(value),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.movie_outlined),
            selectedIcon: Icon(Icons.movie),
            label: 'Movies',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
