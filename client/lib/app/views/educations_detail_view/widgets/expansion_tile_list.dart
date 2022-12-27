import 'package:client/app/l10n/app_l10n.dart';
import 'package:flutter/material.dart';

class ExpansionListTile {
  List<String> headerList(BuildContext context) {
    return [
      L10n.of(context)!.aboutEducation,
      L10n.of(context)!.participationConditions,
      L10n.of(context)!.gains,
      L10n.of(context)!.workingSpaces
    ];
  }

  List<String> titleList(BuildContext context) {
    return ["Deneme", "Deneme", "Deneme", "Deneme"];
  }
}
