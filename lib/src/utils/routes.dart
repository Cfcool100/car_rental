import 'package:car_rental/src/core/core.dart';
import 'package:flutter/material.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: PageRoutes.onboarding,
      builder: (BuildContext context, GoRouterState state) {
        return const OnBoarding();
      },
      routes: <RouteBase>[
        GoRoute(
          path: PageRoutes.home,
          builder: (BuildContext context, GoRouterState state) {
            return const Home();
          },
        ),
      ],
    ),
  ],
);