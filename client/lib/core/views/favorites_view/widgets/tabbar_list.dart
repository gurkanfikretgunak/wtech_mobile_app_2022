import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/favorites_view/widgets/tabbar_item.dart';
import 'package:flutter/material.dart';

List<Widget> favoriteTabs(BuildContext context) {
  return <Widget>[
    const TabItem(text: "Educations"),
    TabItem(text: L10n.of(context)!.events),
    TabItem(text: L10n.of(context)!.mentor),
  ];
}
