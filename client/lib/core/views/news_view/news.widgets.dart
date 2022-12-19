import 'package:client/core/domain/models/news/news_model.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_image.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:client/core/views/news_view/widgets/news_card.dart';
import 'package:flutter/material.dart';

import '../../constants/color_constans.dart';
import '../common/widgets/custom_date_text.dart';

class NewsWidgets {
  Widget card({bool? isTitleCard, required NewsModel news}) {
    //Backend'den geleceği için şimdilik static kullanıyorum
    return NewsCard(
      isTitleCard: isTitleCard,
      news: news,
    );
  }

  Widget titleText(BuildContext context) {
    return Padding(
        padding: context.onlyTopPaddingNormal,
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

  Widget cardDetailText(String subTitle) {
    return CustomText(
      subTitle,
      fontSize: 14,
      color: ColorConstant.instance.black.withOpacity(0.5),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget dateText({
    required String date,
    Alignment? alignment,
  }) {
    return Align(
      alignment: alignment ?? Alignment.bottomLeft,
      child: CustomDateText(
        date: date,
      ),
    );
  }
}
