import 'package:client/core/domain/models/todos/todo_model.dart';

abstract class TodosService {
  Future<TodoModel> postTodo(TodoModel model);
  Future<List<TodoModel>> getTodos();
  Future<void> deleteTodo(String id);
}
