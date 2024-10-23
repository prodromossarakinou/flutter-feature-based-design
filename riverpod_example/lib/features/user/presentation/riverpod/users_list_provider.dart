import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_example/features/user/data/models/user_representation.dart';
import 'package:riverpod_example/features/user/data/repository/user_repository.dart';

part 'users_list_provider.g.dart';

@riverpod
Future<List<UserRepresentation>> usersList(UsersListRef ref) async {
  return await UserRepository.instance.fetchUsers();
}
