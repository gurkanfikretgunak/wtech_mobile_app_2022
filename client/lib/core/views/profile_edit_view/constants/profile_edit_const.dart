

import 'package:client/core/l10n/app_l10n.dart';
import 'package:flutter/material.dart';


class ProfileEditConstants {

  List<String> profileEditLabels(BuildContext context) {
    return [
      L10n.of(context)!.nameSurnamee,
      L10n.of(context)!.email,
      
      L10n.of(context)!.phoneNumber,
      L10n.of(context)!.tcNumber,
    ];
  }
  
  TextEditingController? profileController = TextEditingController();

  static TextEditingController? peNameSurnameController = TextEditingController();
  static TextEditingController? peEmailController = TextEditingController();
  static TextEditingController? pePasswordController = TextEditingController();
  static TextEditingController? pePhoneController = TextEditingController();
  static TextEditingController? peTcController = TextEditingController();
  static TextEditingController? peProfileController = TextEditingController();
  static TextEditingController? changePassCurrent = TextEditingController();
  static TextEditingController? changePassNew = TextEditingController();
  static TextEditingController? changePassNewAgain = TextEditingController();


  List<TextEditingController?> changePasswordControllers(){
    return [
      changePassCurrent,changePassNew,changePassNewAgain
    ];
  }
  List<TextEditingController?> profileEditControllers () {
    return [
      peNameSurnameController,peEmailController,pePhoneController,peTcController
    ];
  }

  List<String> changePassLabels(BuildContext context){
    return [
     "mevcut şifre","yeni şifre","yeni şifre tekrar"
    ];
  }
}