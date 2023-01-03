import 'package:client/core/domain/models/news/news_model.dart';
import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/app/l10n/app_l10n.dart';
import 'package:client/app/views/common/widgets/custom_appbar.dart';
import 'package:client/app/views/common/widgets/custom_date_text.dart';
import 'package:client/app/views/common/widgets/custom_image.dart';
import 'package:client/app/views/common/widgets/text/custom_text.dart';
import 'package:client/app/views/news_view/widgets/news_card.dart';
import 'package:client/app/views/news_view/widgets/news_list.dart';
import 'package:flutter/material.dart';

class NewsWidgets {
  PreferredSizeWidget appBar(BuildContext context) {
    return CustomAppbar(
      titleText: L10n.of(context)!.news,
      isCheck: false,
      isName: false,
    );
  }

  Widget body(BuildContext context) {
    return Padding(
      padding: context.paddingNormal,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            card(news: newsList[0], isTitleCard: true),
            titleText(context),
            SizedBox(
              height: context.dynamicHeight(0.7),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: newsList.length - 1,
                itemBuilder: (context, index) {
                  return NewsCard(
                    news: newsList[index + 1],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget card({bool? isTitleCard, required NewsModel news}) {
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
      width: context.dynamicWidth(0.4),
      height: context.dynamicHeight(0.2),
      fit: BoxFit.cover,
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
