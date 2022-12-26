import 'dart:async';

import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/views/signin_view/signin_account_view.dart';
import 'package:client/core/views/splash_view/splash.widgets.dart';
import 'package:client/core/views/splash_view/widgets/splash.logo.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget with SplashWidgets {
  SplashView({
    Key? key,
  }) : super(key: key);
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.instance.white,
      body: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 4)),
        builder: (ctx, timer) => timer.connectionState == ConnectionState.done
            ? const SignInAccountView()
            : Column(
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
      ),
    );
  }
}
