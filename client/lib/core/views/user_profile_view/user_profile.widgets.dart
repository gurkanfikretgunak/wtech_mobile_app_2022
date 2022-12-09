import 'package:client/core/l10n/app_l10n.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_user_profile.dart';

class UserProfileWidgets {
  Widget profileAvatar(BuildContext context) {
    return const CustomUserProfile();
  }

  Widget text(BuildContext context) {
    return Text(L10n.of(context)!.signIn);
  }

  Widget body(BuildContext context) {
    return Container();
  }
}
