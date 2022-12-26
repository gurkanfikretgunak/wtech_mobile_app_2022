import 'package:client/core/l10n/app_l10n.dart';
import 'package:flutter/material.dart';

List wtechStatisticsList(BuildContext context) {
  return [
    {
      "icon": const Icon(
        Icons.menu_book_outlined,
        size: 25,
      ),
      "count": "28",
      "text": L10n.of(context)!.educationProgram,
    },
    {
      "icon": const Icon(
        Icons.contact_mail_rounded,
        size: 25,
      ),
      "count": "500",
      "text": L10n.of(context)!.wtechStudent,
    },
    {
      "icon": const Icon(
        Icons.school_outlined,
        size: 30,
      ),
      "count": "200",
      "text": L10n.of(context)!.wtechGraduate,
    },
    {
      "icon": const Icon(
        Icons.groups_outlined,
        size: 30,
      ),
      "count": "5000 +",
      "text": L10n.of(context)!.platformMember,
    }
  ];
}
