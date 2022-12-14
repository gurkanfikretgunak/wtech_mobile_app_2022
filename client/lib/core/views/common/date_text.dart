import 'package:flutter/material.dart';

import '../../constants/color_constans.dart';
import 'widgets/text/custom_text.dart';

class DateText extends StatelessWidget {
  const DateText({
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
          color: ColorConstant.instance.grey,
        ),
        CustomText(
          date,
          color: ColorConstant.instance.black.withOpacity(0.8),
        )
      ],
    );
  }
}
