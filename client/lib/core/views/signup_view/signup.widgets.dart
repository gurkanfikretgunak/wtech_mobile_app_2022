import 'package:client/core/views/signup_view/signup.view.dart';
import 'package:client/core/views/signup_view/signup_constants/label_constants.dart';
import 'package:client/core/views/signup_view/widgets/profile_choose_widget.dart';
import 'package:client/core/views/signup_view/widgets/register_textfield.dart';
import 'package:flutter/material.dart';

import '../../l10n/app_l10n.dart';



class SignUpWidgets  {
  
  Widget userInfoTextfield (BuildContext context,List<String> labels,List<TextEditingController> controllers){
    
    return RegisterTextfields(signUpLabels: SignUpConstants().signUpLabels(context), controllerList: SignUpConstants().controllerList());
  }

  Widget userProfileWidget(BuildContext context,TextEditingController controller){
    TextEditingController? profileController = TextEditingController();
    return UserProfileChooseWidget(profileController: profileController);

  }
}

