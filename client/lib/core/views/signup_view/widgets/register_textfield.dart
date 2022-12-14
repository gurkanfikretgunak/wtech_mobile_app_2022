import 'package:client/core/extensions/extension.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_constans.dart';
import '../../forgot_password_view/widgets/forgotTextField.dart';

class RegisterTextfields extends StatelessWidget {
  const RegisterTextfields({
    Key? key,
    required this.signUpLabels,
    required this.controllerList,
  }) : super(key: key);

  final List<String> signUpLabels;
  final List<TextEditingController> controllerList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: context.dynamicHeight(0.36),
        width: context.dynamicWidth(0.8),
        child: ListView.builder(
          itemCount: signUpLabels.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top:5.0),
              child: SizedBox(
                height: context.dynamicHeight(0.06),
                child: ForgotTextField(labelText:signUpLabels[index],labelStyle: TextStyle(fontSize:12,color: ColorConstant.instance.grey),tfcontroller: controllerList[index]),),
            );
        },)
        );
  }
}