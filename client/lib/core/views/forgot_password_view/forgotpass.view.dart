import 'package:client/core/views/common/widgets/button/button_libary.dart';
import 'package:client/core/views/forgot_password_view/forgotpass.widgets.dart';
import 'package:client/core/views/forgot_password_view/fotgotpass.viewmodel.dart';
import 'package:client/core/views/forgot_password_view/widgets/asset_logo.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../constants/color_constans.dart';
import '../../l10n/app_l10n.dart';

class ForgotPasswordView extends StatelessWidget with ForgotPasswordWidgets {
  ForgotPasswordView({super.key});

  final _vm = GetIt.I.get<ForgotPasswordViewModel>();
  @override
  Widget build(BuildContext context) {
    TextEditingController? forgotPasswordContorller;
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AssetLogo(),
          text(L10n.of(context)!.forgotPassword,
              TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: ColorConstant.instance.grey)),
          const Padding(padding: EdgeInsets.only(top: 20)),
          text(L10n.of(context)!.forgotPasswordDescription,
              TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: ColorConstant.instance.grey)),
          const Padding(padding: EdgeInsets.only(top: 20)),
          textButton(L10n.of(context)!.backLogin,
              TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: ColorConstant.instance.blue), () {}),
          const Padding(padding: EdgeInsets.only(top: 20)),
          inputTextField(forgotPasswordContorller!, L10n.of(context)!.emailOrPhone, Icons.mail_outline),
          const Padding(padding: EdgeInsets.only(top: 30)),
          CustomElevatedButton(onPressed: () {}, text: L10n.of(context)!.resetPassword)
        ],
      ),
    ));
  }
}
