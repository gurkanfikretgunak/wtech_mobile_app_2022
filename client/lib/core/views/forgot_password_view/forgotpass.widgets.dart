import 'package:flutter/material.dart';

class ForgotPasswordWidgets {
  TextEditingController? forgotPasswordContorller = TextEditingController();
  Widget text(String value, TextStyle testStyle) {
    return Text(value, style: testStyle);
  }

  Widget textButton(String value, TextStyle textStyle, Function onpressed) {
    return TextButton(
      onPressed: () {},
      child: Text(value, style: textStyle),
    );
  }
}
