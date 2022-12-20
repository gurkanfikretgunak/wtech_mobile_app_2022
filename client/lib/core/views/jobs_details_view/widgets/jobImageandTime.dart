import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class JobImageandTime extends StatelessWidget {
  const JobImageandTime({
    Key? key,
    required this.jobImage,
  }) : super(key: key);

  final String? jobImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: context.dynamicHeight(0.2),
          width: context.dynamicWidth(0.9),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: Image.network(
              jobImage ?? "",
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top: context.dynamicHeight(0.14),
          right: context.dynamicWidth(0.02),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: ColorConstant.instance.white,
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
                color: ColorConstant.instance.black,
                width: 1,
              ),
            ),
            height: context.dynamicHeight(0.05),
            width: context.dynamicWidth(0.3),
            child: TimerCountdown(
              enableDescriptions: false,
              timeTextStyle: TextStyle(
                  color: ColorConstant.instance.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              colonsTextStyle: TextStyle(
                  color: ColorConstant.instance.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              spacerWidth: 0,
              format: CountDownTimerFormat.daysHoursMinutesSeconds,
              endTime: DateTime.now().add(
                const Duration(
                  days: 5,
                  hours: 14,
                  minutes: 27,
                  seconds: 34,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
