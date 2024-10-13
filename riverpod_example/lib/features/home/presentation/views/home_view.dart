import 'package:riverpod_example/core/navigation/router_config.dart';
import 'package:riverpod_example/core/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.red,
            ),
            height: 100,
            width: double.infinity,
            child: InkWell(
              onTap: () {
                context.go(AppRouter.usersList);
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.bottomRight,
                child: const Text(
                  'Users',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
