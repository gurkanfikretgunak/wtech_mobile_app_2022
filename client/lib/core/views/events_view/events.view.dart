import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/events_view/widgets/calendar_listview.dart';
import 'package:client/core/views/events_view/widgets/events_listview_builder.dart';
import 'package:client/core/views/events_view/widgets/the_day_of_the_month.dart';
import 'package:flutter/material.dart';

import '../home_view/widgets/drawer_widget.dart';

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
      appBar: CustomAppbar(
        titleText: L10n.of(context)!.events,
        isCheck: true,
        isName: false,
      ),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: context.paddingNormal,
        child: Column(
          children: [
            const TheDayOfTheMonth(),
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
