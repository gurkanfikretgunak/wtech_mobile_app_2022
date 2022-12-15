import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:flutter/material.dart';

class EducationsDetailWidgets {
  Widget educationContent(BuildContext context, double height, double width) {
    return Padding(
      padding: PaddingExtension(context).paddingNormal,
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Eğitim İçeriği", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            Padding(
              padding: PaddingExtension(context).paddingNormal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  contentPieces(context, Icons.link, "Seviye : ", "Genel"),
                  contentPieces(context, Icons.workspace_premium, "Sertifika : ", "Var"),
                ],
              ),
            ),
            Padding(
              padding: PaddingExtension(context).paddingNormal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  contentPieces(context, Icons.schedule, "Süre : ", "40 Saat"),
                  contentPieces(context, Icons.language, "Dil     : ", "Türkçe"),
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
