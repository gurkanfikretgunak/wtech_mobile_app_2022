import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/settings_view/settings.widget.dart';
import 'package:client/core/views/user_profile_view/user_profile.viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class SettingsView extends StatelessWidget with SettingsViewWidget {
  SettingsView({super.key});

  final _vm = GetIt.I.get<UserProfileViewModel>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        titleText: L10n.of(context)!.profile,
        isName: false,
        isCheck: false,
      ),
      body: Wrap(children: [
        Padding(
          padding: context.onlyTopPaddingHigh,
          child: settingCards(
            context,
          ),
        ),
      ]),
    );
  }
}
