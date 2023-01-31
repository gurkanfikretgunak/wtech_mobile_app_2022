import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/app/l10n/app_l10n.dart';
import 'package:client/app/views/common/widgets/text/custom_text.dart';
import 'package:client/app/views/splash_view/widgets/splash.logo.dart';
import 'package:flutter/material.dart';
import '../signin_view/signin_account_view.dart';

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

  Widget body(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 4)),
      builder: (ctx, timer) => timer.connectionState == ConnectionState.done
          ? const SignInAccountView()
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(
                  flex: 3,
                ),
                const Expanded(
                  flex: 2,
                  child: SplashLogo(),
                ),
                const Spacer(
                  flex: 2,
                ),
                Expanded(child: allRightReservedText(context)),
                const Spacer()
              ],
            ),
    );
  }
}
