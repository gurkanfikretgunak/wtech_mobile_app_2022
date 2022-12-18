import 'package:client/core/l10n/app_l10n.dart';
import 'package:flutter/material.dart';

class IconConstant {
  static List<IconData> iconList = [
    Icons.person,
    Icons.newspaper,
    Icons.video_collection_sharp,
    Icons.work_outline_sharp,
    Icons.wrap_text_outlined
  ];
  static List<String> iconDef(context) {
    return [
      L10n.of(context)!.mentor,
      L10n.of(context)!.news,
      L10n.of(context)!.videos,
      L10n.of(context)!.job,
      L10n.of(context)!.blog,
    ];
  }

  static List<String> drawerNames(context) {
    return [
      L10n.of(context)!.aboutUs,
      L10n.of(context)!.missionVision,
      L10n.of(context)!.participationConditions,
      L10n.of(context)!.contact
    ];
  }

  static List<IconData> drawerIcon = [
    Icons.info_outline,
    Icons.ballot_rounded,
    Icons.groups_outlined,
    Icons.call,
  ];
}
