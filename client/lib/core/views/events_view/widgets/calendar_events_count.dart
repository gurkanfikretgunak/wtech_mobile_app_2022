import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:flutter/material.dart';
import 'package:client/core/utils/extensions/common_extension.dart';

class CalendarEventsCount extends StatelessWidget {
  const CalendarEventsCount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 2,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: context.onlyRightPaddingLow + context.onlyBottomPaddingNormal,
          child: Center(
            child: Container(
              width: 12,
              decoration: BoxDecoration(
                color: ColorConstant.instance.yellow,
                shape: BoxShape.circle,
              ),
            ),
          ),
        );
      },
    );
  }
}
