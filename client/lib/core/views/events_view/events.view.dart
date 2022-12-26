import 'package:client/core/views/events_view/events.viewmodel.dart';
import 'package:client/core/views/events_view/events.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class EventsView extends StatelessWidget with EventsWidgets {
  EventsView({super.key});

  final _vm = GetIt.I.get<EventsViewModel>();
  @override
  Widget build(BuildContext context) {
    return _vm.baseScaffold(context,
        appbar: appBar(context), body: body(context), drawer: drawer(context));
  }
}
