
import 'package:client/core/constants/color_constans.dart';
import 'package:flutter/material.dart';

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
          padding:
              EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.01) +
                  EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.width * 0.025),
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
