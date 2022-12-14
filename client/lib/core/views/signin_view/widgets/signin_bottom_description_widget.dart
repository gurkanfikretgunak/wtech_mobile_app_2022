import 'package:client/core/constants/color_constans.dart';
import 'package:flutter/material.dart';

import '../../../l10n/app_l10n.dart';
import '../../common/widgets/text/custom_text.dart';

class SignInBottomDescription extends StatelessWidget {
  const SignInBottomDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomText(
      
      color: ColorConstant.instance.grey,
      L10n.of(context)!.loginBottomDescription,
    );
  }
}
