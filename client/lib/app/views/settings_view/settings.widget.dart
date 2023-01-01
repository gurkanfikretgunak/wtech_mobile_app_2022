import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/app/views/common/widgets/text/custom_text.dart';
import 'package:client/app/views/settings_view/widget/card_settings.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import '../../../core/utils/constants/colors/color_constans.dart';
import '../../themes/change_theme/theme_provider.dart';

class SettingsViewWidget {
  Widget settingCards(
      BuildContext context, List<String> itemCountText, double heightCard, String categoriesText, bool isSwitcher) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: context.onlyLeftPaddingLow,
          child: CustomText(
            categoriesText,
            color: Theme.of(context).textSelectionTheme.selectionColor,
          ),
        ),
        SizedBox(
          height: context.dynamicHeight(heightCard / 1.4),
          child: ListView.builder(
            itemCount: itemCountText.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return SettingsCardWidget(
                onTap: () {},
                switcherIcon: switchWidget(context),
                text: itemCountText[index],
                isSwitcher: isSwitcher,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget switchWidget(BuildContext context) {
    return Consumer<ThemeChangeProvider>(
      builder: (context, theme, child) {
        return Switch(
          value: theme.darkTheme,
          activeTrackColor: Colors.blue.shade200,
          activeColor: ColorConstant.instance.blue,
          onChanged: (bool value) {
            theme.darkTheme = value;
          },
        );
      },
    );
  }
}
