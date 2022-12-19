import 'package:flutter/material.dart';

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

  static TextEditingController? nameSurnameController = TextEditingController();
  static TextEditingController? emailController = TextEditingController();
  static TextEditingController? passwordController = TextEditingController();
  static TextEditingController? phoneController = TextEditingController();
  static TextEditingController? tcController = TextEditingController();
}
