import 'package:client/app/l10n/app_l10n.dart';
import 'package:flutter/widgets.dart';

List contentList(BuildContext context) {
  return [
    {
      "text": L10n.of(context)!.educationLevel,
      "description": "Genel",
    },
    {
      "text": L10n.of(context)!.educationTime,
      "description": "40 saat",
    },
    {
      "text": L10n.of(context)!.educationCertificate,
      "description": "Var",
    },
    {
      "text": L10n.of(context)!.educationLanguage,
      "description": "Türkçe",
    },
  ];
}
