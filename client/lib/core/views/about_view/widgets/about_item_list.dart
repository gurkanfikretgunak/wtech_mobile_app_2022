import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/about_view/widgets/about_detail.dart';
import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';

List aboutItemList(BuildContext context) {
  return [
    {
      "image": Assets.images.whoWe.path,
      "text": "Biz Kimiz?",
      "onPressed": () {
        navigate(
          context,
          AboutDetailView(
              imagePath: Assets.images.whoWe.path, title: "Biz Kimiz?"),
        );
      }
    },
    {
      "image": Assets.images.whatWeDoing.path,
      "text": "Ne Yapıyoruz?",
      "onPressed": () {
        navigate(
          context,
          AboutDetailView(
              imagePath: Assets.images.whatWeDoing.path,
              title: "Ne Yapıyoruz?"),
        );
      }
    },
    {
      "image": Assets.images.ourGoals.path,
      "text": "Hedefimiz",
      "onPressed": () {
        navigate(
          context,
          AboutDetailView(
              imagePath: Assets.images.ourGoals.path, title: "Hedefimiz"),
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
