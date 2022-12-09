import 'package:client/core/domain/models/user/user_model.dart';

abstract class UserService {
  Future<List<UserModel>> getUsers();
  Future<UserModel> postUser(UserModel model);
  Future<UserModel> updateUser(String id, UserModel model);
  Future<void> deleteUser(String id);
}
