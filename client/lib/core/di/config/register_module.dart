import 'package:client/core/di/config/raw_helper.dart';
import 'package:client/core/env_loader.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'app_config.dart';

@module
abstract class RegisterModule {
  @singleton
  Dio dio(AppConfig config) => Dio()..options.baseUrl = config.apiUrl;

  @singleton
  @preResolve
  Future<RawConfig> config() async {
    final map = await EnvLoader.load();
    return RawConfig.from(map);
  }
}
