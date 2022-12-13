import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_image.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:client/core/views/news_view/widgets/news_card.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

import '../../../gen/assets.gen.dart';
import '../../constants/color_constans.dart';

class NewsWidgets {
  Widget card({bool? isTitleCard}) {
    //Backend'den geleceği için şimdilik static kullanıyorum
    return NewsCard(
      isTitleCard: isTitleCard,
      date: "27.06.2022",
      title: "Teknolojiyi Egece Dokuyoruz Proje Lansmanı Yapıldı",
      subTitle:
          "Egebimtes ve Teknolojide Kadın Derneği iş birliğinde Egebimtes 30…",
    );
  }

  Widget titleText(BuildContext context) {
    return Padding(
        padding: context.paddingAll,
        child: CustomText(
          L10n.of(context)!.lastNews,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ));
  }

  Widget cardImage({required String imagePath, required BuildContext context}) {
    return CustomImage(
      assetPath: imagePath,
    );
  }

  Widget cardTitleText(String title) {
    return CustomText(title, fontSize: 17, fontWeight: FontWeight.w500);
  }

  Widget cardSubTitleText(String subTitle) {
    return CustomText(subTitle,
        fontSize: 14, color: ColorConstant.instance.black.withOpacity(0.5));
  }

  Widget dateText({
    required BuildContext context,
    required String date,
    Alignment? alignment,
  }) {
    return Align(
      alignment: alignment ?? Alignment.bottomLeft,
      child: Wrap(
        alignment: WrapAlignment.end,
        direction: Axis.horizontal,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 10,
        children: [
          Icon(
            Icons.calendar_month_outlined,
            color: ColorConstant.instance.grey,
            size: 14,
          ),
          CustomText(
            date,
            fontSize: 14,
            color: ColorConstant.instance.black.withOpacity(0.8),
          )
        ],
      ),
    );
  }
}
