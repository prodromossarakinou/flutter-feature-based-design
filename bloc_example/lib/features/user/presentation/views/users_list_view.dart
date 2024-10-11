import 'package:bloc_example/core/presentation/widgets/app_scaffold.dart';
import 'package:bloc_example/features/user/presentation/cubit/users_list_cubit.dart';
import 'package:bloc_example/features/user/presentation/widgets/user_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersListView extends StatelessWidget {
  const UsersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UsersListCubit()..fetchUsers(),
      child: AppScaffold(
        appBar: AppBar(
          title: const Text('Users'),
        ),
        body: BlocBuilder<UsersListCubit, UsersListState>(
          builder: (BuildContext context, UsersListState state) {
            if (state is UsersListLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is UsersListLoaded) {
              return ListView.builder(
                itemCount: state.users.length,
                itemBuilder: (context, index) {
                  final user = state.users[index];
                  return UserItem(user: user);
                },
              );
            } else if (state is UsersListError) {
              return Center(
                child: Text(state.message),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
