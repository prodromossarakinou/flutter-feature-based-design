
import 'package:riverpod_example/features/home/presentation/views/home_view.dart';
import 'package:riverpod_example/features/user/presentation/views/users_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String get home => '/';
  static String get usersList => '/users';

  static GoRouter get router => _router;
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: AppRouter.home,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
      routes: <RouteBase>[
        GoRoute(
          path: AppRouter.usersList,
          builder: (BuildContext context, GoRouterState state) {
            return const UsersListView();
          },
        ),
      ],
    ),
  ],
);