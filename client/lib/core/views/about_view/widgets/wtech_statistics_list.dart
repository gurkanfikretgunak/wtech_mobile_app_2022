import 'package:client/core/extensions/extension.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../gen/assets.gen.dart';
import '../../common/widgets/custom_image.dart';

List wtechStatisticsList(BuildContext context) {
  return [
    {
      "icon": customImage(context, Assets.icons.book.path),
      "count": "28",
      "text": "Eğitim Programı",
    },
    {
      "icon": customImage(context, Assets.icons.mentor.path),
      "count": "500",
      "text": "Wtech Öğrencisi",
    },
    {
      "icon": customImage(context, Assets.icons.education.path),
      "count": "200",
      "text": "Wtech Mezun",
    },
    {
      "icon": customImage(context, Assets.icons.persons.path),
      "count": "5000 +",
      "text": "Platform Üyesi",
    }
  ];
}

Widget customImage(BuildContext context, String path) {
  return CustomImage(
    assetPath: path,
    height: context.dynamicHeight(0.04),
  );
}
