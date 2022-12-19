import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/settings_view/settings.widget.dart';
import 'package:client/core/views/settings_view/temporary_constant/text_constant.dart';
import 'package:flutter/material.dart';

import '../../constants/color_constans.dart';
import '../common/widgets/button/custom_button_elevated.dart';

class SettingsView extends StatelessWidget with SettingsViewWidget {
  SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(titleText: L10n.of(context)!.profile, isName: false, isCheck: false),
      body: Padding(
        padding: context.onlyLRTpaddingNormal,
        child: Column(
          children: [
            settingCards(context, notificationText, 0.2, categoriesText[0], true),
            settingCards(context, privacyText, 0.1, categoriesText[1], false),
            settingCards(context, themeText, 0.1, categoriesText[2], true),
            settingCards(context, languageText, 0.1, categoriesText[3], true),
            Padding(
              padding: context.onlyTopPaddingHigh,
              child: SizedBox(
                width: context.dynamicWidth(0.6),
                height: context.dynamicHeight(0.08),
                child: CustomElevatedButton(
                  onPressed: () {},
                  buttonColor: true,
                  text: "Delete Account",
                  textColor: ColorConstant.instance.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
