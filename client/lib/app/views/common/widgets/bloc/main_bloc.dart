import 'package:client/core/data/network/abstractions/users_service.dart';
import 'package:client/core/domain/models/user/user_model.dart';
import 'package:get_it/get_it.dart';
// ignore: depend_on_referenced_packages
import 'package:rxdart/rxdart.dart';

class MainBloc {
  final _userService = GetIt.I.get<UserService>();
  final _loading = BehaviorSubject<bool>.seeded(false);
  final _users = BehaviorSubject<List<UserModel>>();

  Stream<bool> get loading => _loading.stream;

  Stream<List<UserModel>> get users => _users.stream;

// for users
  void loadUsers() async {
    try {
      _loading.add(true);
      final users = await _userService.getUsers();
      _users.add(users);
    } finally {
      _loading.add(false);
    }
  }

  void updateUser(String id, UserModel model) =>
      _userService.updateUser(id, model);
  void createUser(UserModel model) => _userService.postUser(model);

  void deleteById(String id) async {
    await _userService.deleteUser(id);
  }

  void dispose() {
    _users.close();
  }
}
