import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/events_view/widgets/calendar.dart';
import 'package:flutter/material.dart';

class CalenderListview extends StatelessWidget {
  const CalenderListview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.155,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return context.emptySizedWidthBoxNormal;
        },
        itemCount: 30,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var color = index != 2
              ? ColorConstant.instance.shinyWhite
              : ColorConstant.instance.yellow;
          return Calendar(color: color);
        },
      ),
    );
  }
}
