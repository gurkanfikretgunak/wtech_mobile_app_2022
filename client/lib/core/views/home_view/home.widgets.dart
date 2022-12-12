import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/home_view/temporary_contants.dart/icon_constants.dart';
import 'package:client/core/views/home_view/temporary_contants.dart/text_constants.dart';
import 'package:client/core/views/home_view/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class HomeViewWidget {
  Widget cardWidget(BuildContext context, bool? isCheck) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.77,
          child: CardWidget(isCheck: isCheck),
        );
      },
    );
  }

  Widget drawerWidget(BuildContext context) {
    List<String> drawerText = [
      L10n.of(context)!.aboutUs,
      L10n.of(context)!.missionVision,
      L10n.of(context)!.participationConditions,
      L10n.of(context)!.contact
    ];
    return Drawer(
      backgroundColor: ColorConstant.instance.white,
      child: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.45,
              child: Image.asset(HomeTextContants.logoPath)),
          Divider(height: 1, color: ColorConstant.instance.blue),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: IconConstant.drawerIcon.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                      title:
                          Text(drawerText[index], style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 18)),
                      leading: Icon(IconConstant.drawerIcon[index])),
                  const Divider(thickness: 1)
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
