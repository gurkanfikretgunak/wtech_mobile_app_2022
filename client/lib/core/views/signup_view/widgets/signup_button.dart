import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors/color_constans.dart';
import '../../../utils/constants/enums/routes.enum.dart';
import '../../../l10n/app_l10n.dart';
import '../../../routes/custom_navigator.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CustomNavigator.goToScreen(context, Routes.onBoarding.name);
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: ColorConstant.instance.blue,
            borderRadius: BorderRadius.circular(4)),
        height: context.dynamicHeight(0.06),
        width: context.dynamicWidth(0.8),
        child: Text(
          L10n.of(context)!.signUp,
          style: TextStyle(
              color: ColorConstant.instance.white,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
