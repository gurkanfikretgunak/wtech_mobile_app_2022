import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants/colors/color_constans.dart';
import '../../common/widgets/text/custom_text_library.dart';

class TabItem extends StatelessWidget {
  const TabItem({
    super.key,
    required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: ColorConstant.instance.grey,
          width: 1,
        ),
      ),
      width: context.dynamicWidth(0.5),
      child: Tab(
        child: Align(
          alignment: Alignment.center,
          child: CustomText(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
