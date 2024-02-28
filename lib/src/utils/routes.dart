import 'package:car_rental/src/core/core.dart';
import 'package:car_rental/src/feature/details/presentation/page/detail.dart';
import 'package:car_rental/src/feature/home/presentation/search_page.dart';
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
            return Home();
          },
        ),
        GoRoute(
          path: PageRoutes.searchPage,
          builder: (BuildContext context, GoRouterState state) {
            return const SearchView();
          },
        ),
        GoRoute(
          path: PageRoutes.detailPage,
          builder: (BuildContext context, GoRouterState state) {
            final id = state.extra as int?;
            return DetailPage(
              productId: id,
            );
          },
        ),
      ],
    ),
  ],
);
