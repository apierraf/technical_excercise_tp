import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.movie_outlined),
            selectedIcon: const Icon(Icons.movie),
            label: AppLocalizations.of(context)!.movies,
          ),
          NavigationDestination(
            icon: const Icon(Icons.settings_outlined),
            selectedIcon: const Icon(Icons.settings),
            label: AppLocalizations.of(context)!.settings,
          ),
        ],
      ),
    );
  }
}
