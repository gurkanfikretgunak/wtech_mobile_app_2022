import 'package:client/app/l10n/app_l10n.dart';
import 'package:client/app/views/favorites_view/widgets/tabbar_item.dart';
import 'package:flutter/material.dart';

List<Widget> favoriteTabs(BuildContext context) {
  return <Widget>[
    TabItem(text: L10n.of(context)!.educations),
    TabItem(text: L10n.of(context)!.events),
    TabItem(text: L10n.of(context)!.mentor),
  ];
}
