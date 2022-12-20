import 'package:client/core/l10n/app_l10n.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/enums/routes.enum.dart';
import '../../../routes/custom_navigator.dart';

class IconConstant {
  List categoryList(BuildContext context) {
    return [
      {
        "icon": Icons.person,
        "text": L10n.of(context)!.mentor,
        "onTap": () {
          CustomNavigator.goToScreen(context, Routes.mentors.name);
        },
      },
      {
        "icon": Icons.event,
        "text": L10n.of(context)!.events,
        "onTap": () {
          CustomNavigator.goToScreen(context, Routes.events.name);
        },
      },
      {
        "icon": Icons.newspaper,
        "text": L10n.of(context)!.news,
        "onTap": () {
          CustomNavigator.goToScreen(context, Routes.news.name);
        },
      },
      {
        "icon": Icons.video_collection_sharp,
        "text": L10n.of(context)!.videos,
        "onTap": () {
          CustomNavigator.goToScreen(context, Routes.videos.name);
        }
      },
      {
        "icon": Icons.work_outline_sharp,
        "text": L10n.of(context)!.job,
        "onTap": () {
          CustomNavigator.goToScreen(context, Routes.jobs.name);
        },
      },
      {
        "icon": Icons.wrap_text_outlined,
        "text": L10n.of(context)!.blog,
        "onTap": () {
          CustomNavigator.goToScreen(context, Routes.blogs.name);
        }
      },
    ];
  }

  List drawerList(BuildContext context) {
    return [
      {
        "icon": Icons.info_outline,
        "text": L10n.of(context)!.aboutUs,
        "onTap": () {
          CustomNavigator.goToScreen(context, Routes.about.name);
        },
      },
      {
        "icon": Icons.ballot_rounded,
        "text": L10n.of(context)!.missionVision,
        "onTap": () {
          CustomNavigator.goToScreen(context, Routes.missionAndVision.name);
        },
      },
      {
        "icon": Icons.groups_outlined,
        "text": L10n.of(context)!.participationConditions,
        "onTap": () {
          CustomNavigator.goToScreen(context, Routes.foundingMembersView.name);
        },
      },
      {
        "icon": Icons.call,
        "text": L10n.of(context)!.contact,
        "onTap": () {},
      },
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
