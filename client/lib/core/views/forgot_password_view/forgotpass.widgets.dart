
import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_button.dart';
import 'package:client/core/views/common/widgets/custom_textfield.dart';
import 'package:client/core/views/forgot_password_view/widgets/forgotTextField.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class ForgotPasswordWidgets {
  TextEditingController? forgotPasswordContorller = TextEditingController();
  Widget text( String value,TextStyle TextStyle) {
    return Text(value,style: TextStyle);
  }

  Widget textButton(String value,TextStyle textStyle,Function onpressed){

    return TextButton(onPressed: (){},child:Text(value,style: textStyle),);
  }

  Widget inputTextField(TextEditingController controller,String LabelText,IconData prefixIcon,) {

    return ForgotTextField(tfcontroller: controller,labelText: LabelText,prefixIcon: prefixIcon,);

  }
}