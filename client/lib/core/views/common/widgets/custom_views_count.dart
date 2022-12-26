import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors/color_constans.dart';

class CustomViewsCount extends StatelessWidget {
  const CustomViewsCount({
    super.key,
    required this.viewsCount,
    this.hasViewsText = false,
  });

  final String viewsCount;
  final bool hasViewsText;
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
          color: Theme.of(context).cardColor,
        ),
        CustomText(
          viewsCount,
          color: ColorConstant.instance.grey,
          fontWeight: FontWeight.w600,
        ),
        hasViewsText
            ? CustomText(
                L10n.of(context)!.views,
                color: ColorConstant.instance.grey,
                fontWeight: FontWeight.w600,
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
