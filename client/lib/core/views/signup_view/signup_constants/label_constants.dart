import 'package:flutter/cupertino.dart';
import '../../../l10n/app_l10n.dart';

class SignUpConstants {
  
  List<String> signUpLabels(BuildContext context) {
    return [
    L10n.of(context)!.nameSurnamee,
    L10n.of(context)!.email,
    L10n.of(context)!.password,
    L10n.of(context)!.phoneNumber,
    L10n.of(context)!.tcNumber,
  ];
  }
  TextEditingController? profileController = TextEditingController();
  List<TextEditingController> controllerList(){
   TextEditingController? nameSurnameController = TextEditingController();
   TextEditingController? emailController = TextEditingController();
   TextEditingController? passwordController = TextEditingController();
   TextEditingController? phoneController = TextEditingController();
   TextEditingController? tcController = TextEditingController();
    return [
    nameSurnameController,emailController,passwordController,phoneController,tcController
   ];
  }
}