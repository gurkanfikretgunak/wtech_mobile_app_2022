import 'package:client/core/di/config/raw_helper.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppConfig {
  final RawConfig _config;

  AppConfig(this._config);

  String get apiUrl => _config['BASE_URL']!;
}
