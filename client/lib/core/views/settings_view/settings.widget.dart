import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/settings_view/settings.viewmodel.dart';
import 'package:client/core/views/settings_view/widget/card_widget.dart';
import 'package:client/core/views/user_profile_view/widgets/profil_item_icon_list.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../constants/color_constans.dart';
import '../common/widgets/button/custom_button_elevated.dart';

class SettingsViewWidget {
  Widget settingCards(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingNormal,
      child: Column(
        children: [
          SizedBox(
            height: context.dynamicHeight(0.4),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: iconProfile.length,
              itemBuilder: (context, index) {
                return SettingsCardWidget(
                  onTap: () {},
                  switcherIcon: switchWidget(context),
                  text: "settingsText[index]",
                );
              },
            ),
          ),
          CustomElevatedButton(
            onPressed: () {},
            buttonColor: true,
            text: "Çıkış Yap",
            textColor: ColorConstant.instance.white,
            iconWidget: Icon(Icons.exit_to_app),
          )
        ],
      ),
    );
  }

  Widget switchWidget(BuildContext context) {
    final _vm = GetIt.I.get<SettingsViewModel>();

    bool light = true;

    return Switch(
      value: light,
      activeTrackColor: Colors.blue.shade200,
      activeColor: Colors.blue,
      onChanged: (bool value) {
        _vm.changeSwitcher(value);
      },
    );
  }
}
