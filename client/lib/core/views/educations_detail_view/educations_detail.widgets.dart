import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class EducationsDetailWidgets {
  Widget educationContent(BuildContext context) {
    return Padding(
      padding: PaddingExtension(context).paddingNormal,
      child: SizedBox(
        width: context.dynamicWidth(1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(L10n.of(context)!.educationContent),
            Padding(
              padding: PaddingExtension(context).paddingNormal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  contentPieces(context, Icons.link, L10n.of(context)!.educationLevel, ": Genel"),
                  contentPieces(context, Icons.workspace_premium, L10n.of(context)!.educationCertificate, ": Var"),
                ],
              ),
            ),
            Padding(
              padding: PaddingExtension(context).paddingNormal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  contentPieces(context, Icons.schedule, L10n.of(context)!.educationTime, ": 40 Saat"),
                  contentPieces(context, Icons.language, L10n.of(context)!.educationLanguage, ":     Türkçe"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget contentPieces(BuildContext context, IconData icon1, String text1, String text2) {
    return Row(
      children: [
        Icon(icon1, color: ColorConstant.instance.black),
        Text(text1, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(text2, style: TextStyle(color: ColorConstant.instance.grey)),
      ],
    );
  }
}