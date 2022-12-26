import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/applys_view/widgets/applys_card_widget.dart';
import 'package:client/core/views/applys_view/widgets/applys_tabbar_widget.dart';
import 'package:client/core/views/applys_view/widgets/applys_card_view.dart';
import 'package:client/core/views/events_view/widgets/events.dart';
import 'package:client/core/views/events_view/widgets/events_listview_builder.dart';
import 'package:flutter/material.dart';

class ApplysWidgets {
  Widget applysTabbar(BuildContext context) {
    return TabBar(
      automaticIndicatorColorAdjustment: true,
      tabs: applysTabbarItems(context),
    );
  }

  Widget applysCards() {
    return const TabBarView(
      children: [
        ApplysCardViewListView(
          applysCardType: Events(),
        ),
        ApplysCardViewListView(
          applysCardType: SizedBox(),
        ),
      ],
    );
  }

  List<Widget> applysTabbarItems(BuildContext context) {
    return <Widget>[
      TabbarWidget(text: L10n.of(context)!.events),
      TabbarWidget(text: L10n.of(context)!.educationCertificate),
    ];
  }
}
