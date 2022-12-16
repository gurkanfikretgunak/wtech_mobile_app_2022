import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/events_view/widgets/calendar_listview.dart';
import 'package:client/core/views/events_view/widgets/events_listview_builder.dart';
import 'package:client/core/views/events_view/widgets/the_day_of_the_month.dart';
import 'package:flutter/material.dart';

import '../../constants/color_constans.dart';

class EventsView extends StatefulWidget {
  const EventsView({super.key});

  @override
  State<EventsView> createState() => _EventsViewState();
}

class _EventsViewState extends State<EventsView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              debugPrint('Open drawer');
            },
            icon: const Icon(
              Icons.menu,
              size: 36,
            )),
        title: Padding(
          padding: const EdgeInsets.only(top: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(L10n.of(context)!.events,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(fontSize: 30, fontWeight: FontWeight.normal)),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: context.onlyTopPaddingNormal,
            child: Container(
                height: 40,
                width: 85,
                decoration: BoxDecoration(
                    color: ColorConstant.instance.yellow,
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("W-27",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(fontWeight: FontWeight.bold)),
                    const CircleAvatar(maxRadius: 18),
                  ],
                )),
          )
        ],
      ),
      body: Padding(
        padding: context.horizontalPaddingNormal,
        child: Column(
          children: [
            Padding(
              padding: context.onlyTopPaddingMedium * 1.5,
              child: const TheDayOfTheMonth(),
            ),
            Padding(
              padding: context.onlyTopPaddingNormal,
              child: const CalenderListview(),
            ),
            Expanded(
                child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: const EventsListviewBuilder(),
            ))
          ],
        ),
      ),
    ));
  }
}
