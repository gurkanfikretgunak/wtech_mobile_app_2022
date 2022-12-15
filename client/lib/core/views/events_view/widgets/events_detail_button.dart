import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/events_detail_view/widgets/base_main_sheet.dart';
import 'package:flutter/material.dart';

class EventsDetailButton extends StatelessWidget {
  const EventsDetailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          debugPrint(MediaQuery.of(context).size.height.toString());
           debugPrint(MediaQuery.of(context).size.width.toString());
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            builder: (context) {
              return const BaseMainSheet();
            },
          );
        },
        child: Text(L10n.of(context)!.inspection));
  }
}
