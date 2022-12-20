import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/settings_view/settings.widget.dart';
import 'package:client/core/views/settings_view/temporary_constant/text_constant.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors/color_constans.dart';
import '../common/widgets/button/custom_button_elevated.dart';

class SettingsView extends StatelessWidget with SettingsViewWidget {
  SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
          titleText: L10n.of(context)!.profile, isName: false, isCheck: false),
      body: Padding(
        padding: context.paddingNormal,
        child: Column(
          children: [
            settingCards(
                context, notificationText, 0.2, categoriesText[0], true),
            settingCards(context, privacyText, 0.1, categoriesText[1], false),
            settingCards(context, themeText, 0.1, categoriesText[2], true),
            settingCards(context, languageText, 0.1, categoriesText[3], true),
            const Spacer(),
            Padding(
              padding: context.verticalPaddingNormal,
              child: Column(
                children: [
                  Padding(
                    padding: context.verticalPaddingLow,
                    child: Text(
                      L10n.of(context)!.deleteAccountInformation,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  CustomElevatedButton(
                    buttonColor: ColorConstant.instance.red,
                    onPressed: () {},
                    text: L10n.of(context)!.deleteAccount,
                    textColor: ColorConstant.instance.white,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
