import 'package:client/gen/assets.gen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvService {
  static Future<EnvService> init() async {
    await dotenv.load(fileName: Assets.env.envDev);
    return EnvService();
  }
}
