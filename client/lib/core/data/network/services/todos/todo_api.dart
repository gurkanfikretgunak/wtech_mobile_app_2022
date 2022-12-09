import 'package:client/core/data/network/abstractions/todos_service.dart';
import 'package:client/core/di/config/app_config.dart';
import 'package:client/core/domain/models/todos/todo_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'todo_api.g.dart';

@RestApi()
@Injectable(as: TodosService)
abstract class RestTodoService implements TodosService {
  @factoryMethod
  factory RestTodoService(Dio dio, AppConfig appConfig) =>
      _RestTodoService(dio, baseUrl: appConfig.apiUrl);

  @override
  @POST('/todos')
  Future<TodoModel> postTodo(@Body() TodoModel model);
  @override
  @GET('/todos')
  Future<List<TodoModel>> getTodos();
  @override
  @DELETE('/todos/{id}')
  Future<void> deleteTodo(@Path() String id);
}
