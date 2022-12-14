import 'package:client/core/domain/models/news/news_model.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import '../../constants/color_constans.dart';
import '../../l10n/app_l10n.dart';

import '../common/widgets/custom_image.dart';
import '../common/widgets/date_text.dart';
import '../common/widgets/views_count.dart';

class NewsDetailWidgets {
  Widget title(NewsModel news) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 6,
          child: CustomText(
            news.title,
            fontSize: 20,
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: CircleAvatar(
              backgroundColor: ColorConstant.instance.shinyWhite,
              child: const Icon(Icons.favorite),
            ),
          ),
        )
      ],
    );
  }

  Widget wtechAndDateText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          L10n.of(context)!.wtech,
          color: ColorConstant.instance.blue,
          fontWeight: FontWeight.w700,
        ),
        const DateText(date: '27.06.2022')
      ],
    );
  }

  Widget newsImage(NewsModel news, BuildContext context) {
    return CustomImage(
      width: context.dynamicWidth(1),
      assetPath: news.image,
    );
  }

  Widget newsDetailTitleAndViewsCount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          L10n.of(context)!.newsDetail,
          fontSize: 17,
          fontWeight: FontWeight.w700,
        ),
        const ViewsCount(viewsCount: "126")
      ],
    );
  }

  Widget newsDetailTextCard(BuildContext context, NewsModel news) {
    return Card(
      child: Padding(
        padding: context.paddingNormal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(news.detail, fontSize: 15),
            TextButton(
              onPressed: () {},
              child: CustomText(
                L10n.of(context)!.readNews,
                color: ColorConstant.instance.blue,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
