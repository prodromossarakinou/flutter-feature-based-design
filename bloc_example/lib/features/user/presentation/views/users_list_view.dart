
import 'package:bloc_example/core/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class UsersListView extends StatelessWidget {
  const UsersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      body: Center(child: Text('Users List View'),),
    );
  }
}
