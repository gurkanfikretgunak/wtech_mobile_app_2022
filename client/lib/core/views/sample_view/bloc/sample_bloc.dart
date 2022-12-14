import 'package:client/core/data/network/abstractions/todos_service.dart';
import 'package:client/core/data/network/abstractions/users_service.dart';
import 'package:client/core/domain/models/todos/todo_model.dart';
import 'package:client/core/domain/models/user/user_model.dart';
import 'package:get_it/get_it.dart';
// ignore: depend_on_referenced_packages
import 'package:rxdart/rxdart.dart';

class MainBloc {
  final _userService = GetIt.I.get<UserService>();
  final _todoService = GetIt.I.get<TodosService>();

  final _loading = BehaviorSubject<bool>.seeded(false);
  final _users = BehaviorSubject<List<UserModel>>();
  final _todos = BehaviorSubject<List<TodoModel>>();

  Stream<bool> get loading => _loading.stream;

  Stream<List<UserModel>> get users => _users.stream;

  Stream<List<TodoModel>> get todos => _todos.stream;

 // for todos
  void loadTodos() async {
    try {
      _loading.add(true);
      final todos = await _todoService.getTodos();
      _todos.add(todos);
    } finally {
      _loading.add(false);
    }
  }

  void createTodo(TodoModel model) => _todoService.postTodo(model);
  void deleteByIdTodo(String id) async {
    await _todoService.deleteTodo(id);
  }

  void dispose() {
    _users.close();
  }

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

  void disposeTodo() {
    _todos.close();
  }
}



