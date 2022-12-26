import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors/color_constans.dart';

class CustomDateText extends StatelessWidget {
  const CustomDateText({
    super.key,
    required this.date,
  });

  final String date;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.end,
      direction: Axis.horizontal,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 10,
      children: [
        Icon(
          Icons.calendar_month_outlined,
          color: Theme.of(context).cardColor,
        ),
        CustomText(
          date,
          color: ColorConstant.instance.grey,
        )
      ],
    );
  }
}
