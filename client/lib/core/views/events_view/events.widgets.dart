import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/events_view/widgets/events_listview_builder.dart';
import 'package:client/core/views/events_view/widgets/the_day_of_the_month.dart';
import 'package:client/core/views/home_view/widgets/drawer_widget.dart';
import 'package:flutter/widgets.dart';

class EventsWidgets {
  PreferredSizeWidget appBar(BuildContext context) {
    return CustomAppbar(
      titleText: L10n.of(context)!.events,
      isCheck: false,
      isName: false,
    );
  }

  Widget body(BuildContext context) {
    return Padding(
      padding: context.paddingNormal,
      child: Column(
        children: [
          const TheDayOfTheMonth(),
          Padding(
            padding: context.onlyTopPaddingNormal,
          ),
          Expanded(
              child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: const EventsListviewBuilder(),
          ))
        ],
      ),
    );
  }

  Widget drawer(BuildContext context) {
    return const DrawerWidget();
  }
}
