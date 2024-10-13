import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/core/presentation/widgets/app_scaffold.dart';
import 'package:riverpod_example/features/user/data/models/user_representation.dart';
import 'package:riverpod_example/features/user/presentation/riverpod/users_list_provider.dart';
import 'package:riverpod_example/features/user/presentation/widgets/user_item.dart';

class UsersListView extends StatelessWidget {
  const UsersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final AsyncValue<List<UserRepresentation>> users =
            ref.watch(usersListProvider);

        return AppScaffold(
          appBar: AppBar(
            title: const Text('Users'),
          ),
          body: switch (users) {
            AsyncData(:final value) => ListView.builder(
                itemCount: value.length,
                itemBuilder: (context, index) {
                  final user = value[index];
                  return UserItem(user: user);
                },
              ),
            AsyncError() =>
              const Center(child: Text('Oops, something unexpected happened')),
            _ => const Center(
                child: CircularProgressIndicator(),
              ),
          },
        );
      },
    );
  }
}
