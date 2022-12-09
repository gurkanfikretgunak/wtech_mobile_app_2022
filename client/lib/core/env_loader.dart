import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as path;

class EnvLoader {
  static const _lineSplitter = LineSplitter();

  const EnvLoader._();

  static Future<Map<String, String>> load() async {
    final vars = <String, String>{};

    if (!kIsWeb) {
      vars.addAll(Platform.environment);
    }

    const envFile = kDebugMode ? '.env.dev' : '.env';
    final envPath = path.join('assets', 'env', envFile);

    final content = await rootBundle.loadString(envPath);

    final entries = _lineSplitter
        .convert(content)
        .where((line) => line.isNotEmpty)
        .map((line) {
      final split = line.split('=');
      return MapEntry(split[0], split[1]);
    });

    return Map.fromEntries(entries);
  }
}
