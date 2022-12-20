import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:flutter/material.dart';

class CalendarCard extends StatefulWidget {
  const CalendarCard({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  State<CalendarCard> createState() => _CalendarCardState();
}

class _CalendarCardState extends State<CalendarCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: widget.color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pzt',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  fontSize: 18,
                  color: ColorConstant.instance.black.withOpacity(0.6)),
            ),
            Text(
              '27',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  fontSize: 18,
                  color: ColorConstant.instance.black.withOpacity(0.6)),
            ),
          ],
        ));
  }
}
