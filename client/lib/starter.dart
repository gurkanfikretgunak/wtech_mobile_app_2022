import 'package:client/app/app.dart';
import 'package:flavor/flavor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

const String logLevelKey = 'log_level';

void setupApp() {
  final logLevel = Flavor.I.getInt(logLevelKey);
  if (kDebugMode) {
    if (kDebugMode) {
      print('LogLevel set for this flavor: $logLevel');
    }
  }
  if (Flavor.I.isDevelopment) {}
  runApp(const App());
}
