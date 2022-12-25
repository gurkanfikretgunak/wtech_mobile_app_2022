import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/user_profile_view/widgets/profil_item.dart';
import 'package:client/core/views/user_profile_view/widgets/profil_item_icon_list.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors/color_constans.dart';
import '../common/widgets/button/custom_button_elevated.dart';
import '../common/widgets/text/custom_text_library.dart';

class UserProfileWidgets {
  Widget profileAvatar(BuildContext context) {
    return Padding(
      padding: context.onlyTopPaddingHigh,
      child: Align(
        child: Transform(
          transform: Matrix4.translationValues(0, -55, 0),
          child: const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 40,
            child: CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                  "https://cdn.pixabay.com/photo/2016/11/18/19/07/happy-1836445_960_720.jpg"),
            ),
          ),
        ),
      ),
    );
  }

  Widget listViewBuildProfilItem(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingNormal,
      child: Column(
        children: [
          Container(
            height: context.dynamicHeight(0.4),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: iconProfile.length,
              itemBuilder: (context, index) {
                var key = profilItemList(context)[index];
                return ProfilItem(
                  onTap: key['onTap'],
                  iconData: key['icon'],
                  text: key['text'],
                );
              },
            ),
          ),
          CustomElevatedButton(
            onPressed: () {},
            text: "Çıkış Yap",
            buttonColor: ColorConstant.instance.red,
            textColor: ColorConstant.instance.white,
            iconWidget: const Icon(Icons.exit_to_app),
          )
        ],
      ),
    );
  }

 PreferredSizeWidget appbar(BuildContext context) {
    return CustomAppbar(
      titleText: L10n.of(context)!.profile,
      isName: false,
      isCheck: false,
    );
  }
  Widget body(BuildContext context) {
    return Wrap(children: [
      Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Stack(children: [
          Padding(
            padding: context.onlyTopPaddingHigh,
            child: Container(
                height: context.dynamicHeight(0.75),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 245, 242, 242),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    userNameText(context),
                    const CustomText("gurkan@gmail.com"),
                    context.emptySizedHeightBoxHigh,
                    context.emptySizedHeightBoxNormal,
                    listViewBuildProfilItem(context),
                  ],
                )),
          ),
          profileAvatar(context)
        ]),
      ]),
    ]);
  }

  Widget userNameText(BuildContext context) {
    return const CustomText("Uncle Bob",
        fontSize: 15, fontWeight: FontWeight.w600);
  }
}
