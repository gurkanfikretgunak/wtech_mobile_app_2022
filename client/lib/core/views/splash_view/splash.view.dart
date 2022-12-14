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
    final double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SplashLogo(i: 2, screenHeight: screenHeight),
        widget.allRightReservedText(3, screenHeight,
            upperText: '© 2022 Wtech Platform. Tüm hakları saklıdır',
            bottomText: '2019')
      ],
    );
  }
}
