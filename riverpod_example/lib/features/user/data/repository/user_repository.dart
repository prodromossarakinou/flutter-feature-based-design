
import 'dart:convert';
import 'package:riverpod_example/core/services/api_client.dart';
import 'package:riverpod_example/core/utilities/app_config.dart';
import 'package:riverpod_example/features/user/data/models/user_representation.dart';

class UserRepository {
  UserRepository._privateConstructor();

  static final UserRepository _instance = UserRepository._privateConstructor();

  static UserRepository get instance => _instance;

  final ApiClient _apiClient = ApiClient.instance;

  Future<List<UserRepresentation>> fetchUsers() async {
    final response = await _apiClient.fetch(AppConfig.users);
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((user) => UserRepresentation.fromJson(user)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
