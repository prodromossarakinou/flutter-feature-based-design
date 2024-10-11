
import 'package:bloc_example/core/presentation/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class UsersListView extends StatelessWidget {
  const UsersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: Container(),
    );
  }
}
