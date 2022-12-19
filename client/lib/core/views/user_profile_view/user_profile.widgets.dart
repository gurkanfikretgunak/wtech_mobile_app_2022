import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/user_profile_view/widgets/profil_item.dart';
import 'package:client/core/views/user_profile_view/widgets/profil_item_icon_list.dart';
import 'package:client/core/views/user_profile_view/widgets/profil_item_text_list.dart';
import 'package:flutter/material.dart';

import '../../constants/color_constans.dart';
import '../common/widgets/button/custom_button_elevated.dart';
import '../common/widgets/text/text_library.dart';

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

  Widget userNameText(BuildContext context) {
    return const CustomText("Gürkan Fikret Günak",
        fontSize: 15, fontWeight: FontWeight.w600);
  }
}
