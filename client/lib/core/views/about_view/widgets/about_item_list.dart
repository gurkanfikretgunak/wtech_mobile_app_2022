import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/about_view/widgets/about_detail.dart';
import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';

List aboutItemList(BuildContext context) {
  return [
    {
      "image": Assets.images.whoWe.path,
      "text": L10n.of(context)!.whoWe,
      "onPressed": () {
        navigate(
          context,
          AboutDetailView(
              imagePath: Assets.images.whoWe.path,
              title: L10n.of(context)!.whoWe),
        );
      }
    },
    {
      "image": Assets.images.whatWeDoing.path,
      "text": L10n.of(context)!.whatWeDoing,
      "onPressed": () {
        navigate(
          context,
          AboutDetailView(
              imagePath: Assets.images.whatWeDoing.path,
              title: L10n.of(context)!.whatWeDoing),
        );
      }
    },
    {
      "image": Assets.images.ourGoals.path,
      "text": L10n.of(context)!.ourGoals,
      "onPressed": () {
        navigate(
          context,
          AboutDetailView(
              imagePath: Assets.images.ourGoals.path,
              title: L10n.of(context)!.ourGoals),
        );
      }
    }
  ];
}

navigate(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}
