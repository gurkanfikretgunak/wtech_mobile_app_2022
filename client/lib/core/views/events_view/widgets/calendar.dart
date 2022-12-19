import 'package:client/core/views/events_view/widgets/calendar_card.dart';
import 'package:client/core/views/events_view/widgets/calendar_events_count.dart';
import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  const Calendar({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      width: MediaQuery.of(context).size.width * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.125,
            width: MediaQuery.of(context).size.width * 0.2,
            child: CalendarCard(color: color),
          ),
          const Expanded(
            child: CalendarEventsCount(),
          )
        ],
      ),
    );
  }
}
