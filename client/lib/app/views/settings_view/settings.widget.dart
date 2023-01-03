import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/app/themes/change_theme/change_theme.viewmodel.dart';
import 'package:client/app/views/common/widgets/text/custom_text.dart';
import 'package:client/app/views/settings_view/widget/card_settings.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../core/utils/constants/colors/color_constans.dart';

class SettingsViewWidget {
  Widget settingCards(BuildContext context, List<String> itemCountText,
      double heightCard, String categoriesText, bool isSwitcher) {
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
    final _theme = GetIt.I.get<ChangeThemeViewModel>();

    return StreamBuilder(
        stream: _theme.theme,
        builder: (context, snapshot) {
          return Switch(
            value: snapshot.data!,
            activeTrackColor: Colors.blue.shade200,
            activeColor: ColorConstant.instance.blue,
            onChanged: (bool value) {
              _theme.changeTheme();
            },
          );
        });
  }
}
