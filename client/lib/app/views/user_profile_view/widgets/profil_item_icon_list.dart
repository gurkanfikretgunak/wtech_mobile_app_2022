import 'package:flutter/material.dart';

import '../../../../core/utils/constants/enums/routes.enum.dart';
import '../../../routes/custom_navigator.dart';

List<IconData> iconProfile = [
  Icons.edit,
  Icons.settings_outlined,
  Icons.notifications_none,
  Icons.help_outline,
];

List profilItemList(BuildContext context) {
  return [
    {
      "icon": Icons.edit,
      "text": "Profil Düzenle",
      "onTap": () {},
    },
    {
      "icon": Icons.settings_outlined,
      "text": "Ayarlar",
      "onTap": () {
        CustomNavigator.goToScreen(context, Routes.settings.name);
      },
    },
    {
      "icon": Icons.notifications_none,
      "text": "Bildirimler",
      "onTap": () {},
    },
    {
      "icon": Icons.help_outline,
      "text": "Yardım",
      "onTap": () {
        CustomNavigator.goToScreen(context, Routes.missionAndVision.name);
      },
    },
  ];
}
