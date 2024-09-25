import 'package:flutter/material.dart';
import 'package:tecnical_excercise_tp/features/app/widgets/bottom_nav.dart';
import 'package:go_router/go_router.dart';

class AppPage extends StatefulWidget {
  final Widget child;

  const AppPage({super.key, required this.child});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavApp(
        index: index,
        selectedNav: (index) => setState(() {
          this.index = index;
          navDestination(index);
        }),
      ),
    );
  }

  void navDestination(int index) {
    switch (index) {
      case 0:
        context.goNamed('movies_page');
        break;
      case 1:
        context.goNamed('config_app');
        break;
    }
  }
}
