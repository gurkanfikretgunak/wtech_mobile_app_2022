import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/events_view/widgets/calendar_card.dart';
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
        isCheck: false,
        isName: false,
      ),
      drawer: const DrawerWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CalendarCard(),
          Expanded(
              child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: const EventsListviewBuilder(),
          ))
        ],
      ),
    ));
  }
}
