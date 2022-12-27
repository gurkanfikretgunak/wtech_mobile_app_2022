// ignore_for_file: non_constant_identifier_names

import 'package:client/app/l10n/app_l10n.dart';
import 'package:client/app/views/common/widgets/button/custom_button_libary.dart';
import 'package:client/app/views/common/widgets/custom_appbar.dart';
import 'package:client/app/views/profile_edit_view/constants/profile_edit_const.dart';
import 'package:client/app/views/profile_edit_view/widgets/change_pass.dart';
import 'package:client/app/views/profile_edit_view/widgets/profie_edit_textfields.dart';

import 'package:client/app/views/profile_edit_view/widgets/profile_photo_edit.dart';
import 'package:client/app/views/signup_view/widgets/profile_choose_widget.dart';
import 'package:flutter/material.dart';

class ProfileEditWidgets {
  Widget userAvatar(BuildContext context) {
    return const CustomPhotoEdit();
  }

  Widget EditTextFields(BuildContext context) {
    return const ProfileEditTextFields();
  }

  Widget EditProfileChoose(BuildContext context) {
    return UserProfileChooseWidget(
        profileController: ProfileEditConstants.peProfileController);
  }

  Widget EditProfileSaveButton(BuildContext context) {
    return CustomElevatedButton(onPressed: () {}, text: L10n.of(context)!.save);
  }

  Widget ChangePasswordButton(BuildContext context) {
    return const ChangePasswordContainer();
  }

  Widget body(BuildContext context) {
    return Center(
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
    );
  }

  PreferredSizeWidget appBar(BuildContext context) {
    return const CustomAppbar(isCheck: false, isName: false);
  }
}
