
import 'package:bloc/bloc.dart';
import 'package:bloc_example/features/user/data/models/user_representation.dart';
import 'package:bloc_example/features/user/data/repository/user_repository.dart';

part 'user_list_state.dart';

class UsersListCubit extends Cubit<UsersListState> {
  final UserRepository _userRepository = UserRepository.instance;

  UsersListCubit() : super(UsersListInitial());

  void fetchUsers() async {
    try {
      emit(UsersListLoading());
      final users = await _userRepository.fetchUsers();
      emit(UsersListLoaded(users));
    }catch(e) {
      emit(UsersListError(e.toString()));
    }
  }

}