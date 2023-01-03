import 'package:client/app/views/splash_view/splash.viewmodel.dart';
import 'package:client/app/views/splash_view/splash.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class SplashView extends StatelessWidget with SplashWidgets {
  SplashView({
    Key? key,
  }) : super(key: key);
  final _vm = GetIt.I.get<SplashViewModel>();

  @override
  Widget build(BuildContext context) {
    return _vm.baseScaffold(context, body: body(context));
  }
}
