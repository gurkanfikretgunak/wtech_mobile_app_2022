import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_constans.dart';

class CustomViewsCount extends StatelessWidget {
  const CustomViewsCount({
    super.key,
    required this.viewsCount,
  });

  final String viewsCount;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.end,
      direction: Axis.horizontal,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 3,
      children: [
        Icon(
          size: 14,
          Icons.remove_red_eye_sharp,
          color: ColorConstant.instance.grey,
        ),
        CustomText(
          viewsCount,
          color: ColorConstant.instance.black.withOpacity(0.5),
          fontWeight: FontWeight.w600,
        ),
        CustomText(
          L10n.of(context)!.views,
          color: ColorConstant.instance.black.withOpacity(0.5),
          fontWeight: FontWeight.w600,
        )
      ],
    );
  }
}
