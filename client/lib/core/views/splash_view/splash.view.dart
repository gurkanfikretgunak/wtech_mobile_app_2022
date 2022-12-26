<<<<<<< HEAD
import 'dart:async';

import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/views/signin_view/signin_account_view.dart';
=======
import 'package:client/core/views/splash_view/splash.viewmodel.dart';
>>>>>>> 997b4d9189507f32e8c4bbb1d790e81e83050bcf
import 'package:client/core/views/splash_view/splash.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class SplashView extends StatelessWidget with SplashWidgets {
  SplashView({
    Key? key,
  }) : super(key: key);
  final _vm = GetIt.I.get<SplashViewModel>();

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
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
=======
    return _vm.baseScaffold(context, body: body(context));
>>>>>>> 997b4d9189507f32e8c4bbb1d790e81e83050bcf
  }
}
