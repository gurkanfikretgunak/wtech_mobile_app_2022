import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/app/views/events_view/widgets/events.dart';
import 'package:flutter/material.dart';

class EventsListviewBuilder extends StatelessWidget {
  const EventsListviewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return Padding(
          padding: context.onlyTopPaddingNormal,
          child: const Events(),
        );
      },
    );
  }
}
