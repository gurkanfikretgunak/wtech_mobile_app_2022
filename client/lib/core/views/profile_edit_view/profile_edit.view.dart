import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/profile_edit_view/profile_edit.widgets.dart';
import 'package:flutter/material.dart';

class ProfileEditView extends StatelessWidget with ProfileEditWidgets {
  ProfileEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppbar(isCheck: false, isName: false),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            userAvatar(context),
            EditTextFields(context),
            EditProfileChoose(context),
            ChangePasswordButton(context),
            EditProfileSaveButton(context)
          ],
        ),
      ),
    );
  }
}
