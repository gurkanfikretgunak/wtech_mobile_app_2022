import 'package:client/app/l10n/app_l10n.dart';
import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/app/views/common/widgets/button/custom_button_elevated.dart';
import 'package:client/app/views/common/widgets/custom_appbar.dart';
import 'package:client/app/views/common/widgets/text/custom_textfield.dart';

import 'package:client/app/views/forgot_password_view/forgotpass.widgets.dart';
import 'package:client/app/views/forgot_password_view/widgets/asset_logo.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ForgotPasswordView extends StatelessWidget with ForgotPasswordWidgets {
  ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(),
        body: Padding(
          padding: context.paddingMedium,
          child: Column(
            children: [
              const Expanded(child: AssetLogo()),
              text(
                  L10n.of(context)!.forgotPassword,
                  TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: ColorConstant.instance.grey)),
              context.emptySizedHeightBoxNormal,
              text(
                L10n.of(context)!.forgotPasswordDescription,
                TextStyle(fontSize: 16, color: ColorConstant.instance.grey),
              ),
              context.emptySizedHeightBoxNormal,
              textButton(
                  L10n.of(context)!.backLogin,
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  () {}),
              context.emptySizedHeightBoxNormal,
              const CustomTextFormField(
                prefixIcon: Icon(Icons.mail_outline),
                hintText: "E-Posta veya telefon",
              ),
              context.emptySizedHeightBoxNormal,
              context.emptySizedHeightBoxNormal,
              context.emptySizedHeightBoxNormal,
              CustomElevatedButton(
                  onPressed: () {}, text: L10n.of(context)!.resetPassword),
              const Spacer()
            ],
          ),
        ));
  }
}
