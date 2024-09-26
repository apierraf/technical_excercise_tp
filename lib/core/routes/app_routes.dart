import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:tecnical_excercise_tp/features/app/app_page.dart';
import 'package:tecnical_excercise_tp/features/configuration/configuration_page.dart';
import 'package:tecnical_excercise_tp/features/details/presentation/details_page.dart';
import 'package:tecnical_excercise_tp/features/movies/presentation/movies_page.dart';

/*
  This file is responsible for defining the routes of the application.
  The routes are defined using the GoRouter package.
*/

final rootNavigation = GlobalKey<NavigatorState>();
final sheelRoute = GlobalKey<NavigatorState>();

final routes = GoRouter(
  navigatorKey: rootNavigation,
  initialLocation: '/movies_page',
  routes: [
    ShellRoute(
      navigatorKey: sheelRoute,
      builder: (context, state, child) => AppPage(child: child),
      routes: [
        GoRoute(
          path: '/movies_page',
          name: 'movies_page',
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: MoviesPage()),
          routes: [
            GoRoute(
              path: 'details_page',
              name: 'details_page',
              builder: (context, state) {
                int id = state.extra as int;
                return DetailsPage(id: id);
              },
            ),
          ],
        ),
        GoRoute(
          path: '/config_app',
          name: 'config_app',
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: ConfigurationPage()),
        )
      ],
    ),
  ],
);
