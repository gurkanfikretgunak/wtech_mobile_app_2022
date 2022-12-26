<<<<<<< HEAD
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/events_view/widgets/calendar_card.dart';
import 'package:client/core/views/events_view/widgets/events_listview_builder.dart';
import 'package:client/core/views/events_view/widgets/the_day_of_the_month.dart';
=======
import 'package:client/core/views/events_view/events.viewmodel.dart';
import 'package:client/core/views/events_view/events.widgets.dart';
>>>>>>> 997b4d9189507f32e8c4bbb1d790e81e83050bcf
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class EventsView extends StatelessWidget with EventsWidgets {
  EventsView({super.key});

  final _vm = GetIt.I.get<EventsViewModel>();
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
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
=======
    return _vm.baseScaffold(context,
        appbar: appBar(context), body: body(context), drawer: drawer(context));
>>>>>>> 997b4d9189507f32e8c4bbb1d790e81e83050bcf
  }
}
