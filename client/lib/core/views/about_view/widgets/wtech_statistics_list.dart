import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../l10n/app_l10n.dart';
import '../../common/widgets/custom_image.dart';

List wtechStatisticsList(BuildContext context) {
  return [
    {
      "icon": customImage(context, Assets.icons.book.path),
      "count": "28",
      "text": L10n.of(context)!.educationProgram,
    },
    {
      "icon": customImage(context, Assets.icons.mentor.path),
      "count": "500",
      "text": L10n.of(context)!.wtechStudent,
    },
    {
      "icon": customImage(context, Assets.icons.education.path),
      "count": "200",
      "text": L10n.of(context)!.wtechGraduate,
    },
    {
      "icon": customImage(context, Assets.icons.persons.path),
      "count": "5000 +",
      "text": L10n.of(context)!.platformMember,
    }
  ];
}

Widget customImage(BuildContext context, String path) {
  return CustomImage(
    assetPath: path,
    height: context.dynamicHeight(0.04),
  );
}
