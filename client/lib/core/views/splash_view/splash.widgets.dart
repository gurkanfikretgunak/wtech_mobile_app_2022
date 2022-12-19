import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class SplashWidgets {
  Widget allRightReservedText(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomText(L10n.of(context)!.allRightsReserved,
              color: ColorConstant.instance.grey),
          CustomText('2019', color: ColorConstant.instance.grey),
        ],
      ),
    );
  }
}
