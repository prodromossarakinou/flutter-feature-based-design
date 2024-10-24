
import 'package:bloc_example/core/navigation/router_config.dart';
import 'package:flutter/material.dart';

class BlocExampleApp extends StatelessWidget {
  const BlocExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.red,
          titleTextStyle: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          )
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      routerConfig: AppRouter.router,
    );
  }
}
