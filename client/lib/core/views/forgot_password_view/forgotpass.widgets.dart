import 'package:flutter/material.dart';

class ForgotPasswordWidgets {
  TextEditingController? forgotPasswordContorller = TextEditingController();
  Widget text(String value, TextStyle TextStyle) {
    return Text(value, style: TextStyle);
  }

  Widget textButton(String value, TextStyle textStyle, Function onpressed) {
    return TextButton(
      onPressed: () {},
      child: Text(value, style: textStyle),
    );
  }
}
