import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/forgot_password_view/widgets/forgotTextField.dart';
import 'package:client/core/views/signup_view/signup.widgets.dart';
import 'package:client/core/views/signup_view/widgets/profile_popup.dart';
import 'package:flutter/material.dart';

class UserProfileChooseWidget extends StatelessWidget with SignUpWidgets {
  const UserProfileChooseWidget({
    Key? key,
    required this.profileController,
  }) : super(key: key);

  final TextEditingController? profileController;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: context.dynamicHeight(0.07),
        width: context.dynamicWidth(0.86),
        child: ForgotTextField(
          tfcontroller: profileController!,
          suffixIcon: ProfilePopUpButton(profileController: profileController),
        ));
  }
}
