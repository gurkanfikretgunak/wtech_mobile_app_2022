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
        alignment: Alignment.topCenter,
        height: context.dynamicHeight(0.06),
        width: context.dynamicWidth(0.8),
        child: ForgotTextField(
          tfcontroller: profileController!,
          suffixIcon: ProfilePopUpButton(profileController: profileController),
        ));
  }
}
