import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/common/widgets/text/custom_text_library.dart';
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
    return SizedBox(
        height: context.dynamicHeight(0.07),
        width: context.dynamicWidth(0.86),
        child: CustomTextFormField(
          controller: profileController,
          suffixIcon: ProfilePopUpButton(profileController: profileController),
        ));
  }
}
