import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:client/core/views/user_profile_view/user_profile.viewmodel.dart';
import 'package:client/core/views/user_profile_view/user_profile.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class UserProfileView extends StatelessWidget with UserProfileWidgets {
  UserProfileView({super.key});

  final _vm = GetIt.I.get<UserProfileViewModel>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(
          titleText: L10n.of(context)!.profile,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Stack(children: [
            Container(
                height: context.dynamicHeight(0.75),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 245, 242, 242),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    userNameText(context),
                    const CustomText("gurkan@gmail.com"),
                    context.emptySizedHeightBoxHigh,
                    context.emptySizedHeightBoxNormal,
                    listViewBuildProfilItem(context)
                  ],
                )),
            profileAvatar(context)
          ]),
        ]));
  }
}
