import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_calendar/flutter_advanced_calendar.dart';

class CalendarCard extends StatefulWidget {
  const CalendarCard({
    Key? key,
  }) : super(key: key);

  @override
  State<CalendarCard> createState() => _CalendarCardState();
}

class _CalendarCardState extends State<CalendarCard> {
  final _calendarControllerToday = AdvancedCalendarController.today();
  final _calendarControllerCustom = AdvancedCalendarController.custom(DateTime(2022, 10, 23));
  final List<DateTime> events = [
    DateTime.now(),
    DateTime(2022, 10, 10),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Theme(
        data: ThemeData.light().copyWith(
          textTheme: ThemeData.light().textTheme.copyWith(
                subtitle1: ThemeData.light().textTheme.subtitle1?.copyWith(
                      fontSize: 16,
                      color: theme.colorScheme.onPrimary,
                    ),
              ),
          primaryColor: ColorConstant.instance.yellow,
          highlightColor: Colors.yellow,
          disabledColor: Colors.green,
        ),
        child: AdvancedCalendar(
          controller: _calendarControllerCustom,
          events: events,
          weekLineHeight: 48.0,
          startWeekDay: 1,
          innerDot: true,
          keepLineSize: true,
          calendarTextStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              height: 1.3125,
              letterSpacing: 0,
              color: Theme.of(context).backgroundColor),
        ));
  }
}
