import 'package:client/core/routes/custom_navigator.dart';
import 'package:client/core/utils/constants/enums/routes.enum.dart';
import 'package:flutter/material.dart';

class ForgotPasswordWidgets {
  TextEditingController? forgotPasswordContorller = TextEditingController();
  Widget text(String value, TextStyle testStyle) {
    return Text(value, style: testStyle);
  }

  Widget textButton(String value, TextStyle textStyle, Function onpressed, BuildContext context) {
    return TextButton(
      onPressed: () {
        CustomNavigator.goToScreen(context, Routes.signinWithEmail.name);
      },
      child: Text(value, style: textStyle),
    );
  }
}
