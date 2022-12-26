import 'package:client/core/domain/models/news/news_model.dart';
import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_date_text.dart';
import 'package:client/core/views/common/widgets/custom_image.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:client/core/views/news_view/widgets/news_card.dart';
import 'package:flutter/material.dart';

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

  Widget cardImage(bool isMainCard, {required String imagePath, required BuildContext context}) {
    return ClipRRect(
      borderRadius: isMainCard
          ? const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12))
          : const BorderRadius.only(topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
      child: CustomImage(
        assetPath: imagePath,
        width: context.dynamicWidth(0.43),
        height: isMainCard ? context.dynamicHeight(0.26) : context.dynamicHeight(0.20),
        fit: BoxFit.fill,
      ),
    );
  }

  Widget cardTitleText(String title, BuildContext context) {
    return CustomText(
      title,
      fontSize: 18,
      color: Theme.of(context).cardColor,
    );
  }

  Widget cardDetailText(String subTitle) {
    return CustomText(
      subTitle,
      fontSize: 14,
      color: ColorConstant.instance.grey,
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
