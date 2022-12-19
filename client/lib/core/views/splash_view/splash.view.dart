import 'package:client/core/views/splash_view/splash.viewmodel.dart';
import 'package:client/core/views/splash_view/splash.widgets.dart';
import 'package:client/core/views/splash_view/widgets/splash.logo.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class SplashView extends StatefulWidget with SplashWidgets {
  SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final _vm = GetIt.I.get<SplashViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(
            flex: 3,
          ),
          const Expanded(
            flex: 2,
            child: SplashLogo(),
          ),
          const Spacer(
            flex: 2,
          ),
          Expanded(child: widget.allRightReservedText(context)),
          const Spacer()
        ],
      ),
    );
  }
}
