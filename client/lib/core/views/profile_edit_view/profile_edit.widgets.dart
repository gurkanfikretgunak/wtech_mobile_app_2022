




import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/button/button_libary.dart';
import 'package:client/core/views/profile_edit_view/constants/profile_edit_const.dart';
import 'package:client/core/views/profile_edit_view/widgets/change_pass.dart';
import 'package:client/core/views/profile_edit_view/widgets/profie_edit_textfields.dart';

import 'package:client/core/views/profile_edit_view/widgets/profile_photo_edit.dart';
import 'package:flutter/material.dart';


import '../signup_view/widgets/profile_choose_widget.dart';




class ProfileEditWidgets {
  Widget userAvatar(BuildContext context){
    return const CustomPhotoEdit();
  }
  Widget EditTextFields(BuildContext context){
    return ProfileEditTextFields(); 
  }
  Widget EditProfileChoose(BuildContext context){
    return UserProfileChooseWidget(profileController: ProfileEditConstants.peProfileController);
  }
  Widget EditProfileSaveButton(BuildContext context){
    return CustomElevatedButton(onPressed: () {}, text: L10n.of(context)!.save);
  }
  Widget ChangePasswordButton(BuildContext context){
    return ChangePasswordContainer();
  }

}
