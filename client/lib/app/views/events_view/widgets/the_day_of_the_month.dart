import 'package:flutter/material.dart';

class TheDayOfTheMonth extends StatefulWidget {
  const TheDayOfTheMonth({
    Key? key,
  }) : super(key: key);

  @override
  State<TheDayOfTheMonth> createState() => _TheDayOfTheMonthState();
}

class _TheDayOfTheMonthState extends State<TheDayOfTheMonth> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding:
              EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.02),
          child: InkWell(
              onTap: () {
                debugPrint('Go to previous month');
              },
              child: Text(
                '<',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(fontWeight: FontWeight.w400),
              )),
        ),
        Text(
          'HAZ 2022',
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(fontWeight: FontWeight.w400),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02),
          child: InkWell(
              onTap: () {
                debugPrint('Go to next month');
              },
              child: Text(
                '>',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(fontWeight: FontWeight.w400),
              )),
        ),
      ],
    );
  }
}
