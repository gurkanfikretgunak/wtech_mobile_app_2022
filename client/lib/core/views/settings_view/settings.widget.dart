import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:client/core/views/settings_view/settings.viewmodel.dart';
import 'package:client/core/views/settings_view/widget/card_settings.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../constants/color_constans.dart';

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
            color: ColorConstant.instance.black.withOpacity(0.5),
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
    // ignore: no_leading_underscores_for_local_identifiers
    final _vm = GetIt.I.get<SettingsViewModel>();
    return StreamBuilder(
        stream: _vm.switcher,
        builder: (context, snapshot) {
          return Switch(
            value: snapshot.data ?? false,
            activeTrackColor: Colors.blue.shade200,
            activeColor: ColorConstant.instance.blue,
            onChanged: (bool value) {
              _vm.changeSwitcher();
            },
          );
        });
  }
}
