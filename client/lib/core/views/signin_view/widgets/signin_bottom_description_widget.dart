import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:flutter/material.dart';

import '../../../l10n/app_l10n.dart';
import '../../common/widgets/text/custom_text.dart';

class SignInBottomDescription extends StatelessWidget {
  const SignInBottomDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            color: ColorConstant.instance.grey,
            L10n.of(context)!.loginBottomDescription,
          ),
          TextButton(
            onPressed: () {},
            child: CustomText(L10n.of(context)!.userAgreement, color: ColorConstant.instance.blue),
          ),
          CustomText(
            color: ColorConstant.instance.grey,
            "&",
          ),
          TextButton(
            onPressed: () {},
            child: CustomText(L10n.of(context)!.illuminationText, color: ColorConstant.instance.blue),
          ),
        ],
      ),
    );
  }
}
