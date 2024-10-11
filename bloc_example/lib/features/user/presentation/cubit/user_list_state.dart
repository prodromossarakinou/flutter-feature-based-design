
part of 'users_list_cubit.dart';

abstract class UsersListState {}

class UsersListInitial extends UsersListState {}

class UsersListLoading extends UsersListState {}

class UsersListLoaded extends UsersListState {
  final List<UserRepresentation> users;

  UsersListLoaded(this.users);
}

class UsersListError extends UsersListState {
  final String message;

  UsersListError(this.message);
}
