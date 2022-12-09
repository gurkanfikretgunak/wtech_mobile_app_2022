import 'package:client/core/data/network/abstractions/users_service.dart';
import 'package:client/core/di/config/app_config.dart';
import 'package:client/core/domain/models/user/user_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'user_api.g.dart';

@RestApi()
@Injectable(as: UserService)
abstract class RestUserService implements UserService {
  @factoryMethod
  factory RestUserService(Dio dio, AppConfig appConfig) =>
      _RestUserService(dio, baseUrl: appConfig.apiUrl);

  @override
  @GET('/users')
  Future<List<UserModel>> getUsers();
  @override
  @PUT('/users/{id}')
  Future<UserModel> updateUser(@Path() String id, @Body() UserModel model);
  @override
  @DELETE('/users/{id}')
  Future<void> deleteUser(@Path() String id);
  @override
  @POST('/users')
  Future<UserModel> postUser(@Body() UserModel model);
}
