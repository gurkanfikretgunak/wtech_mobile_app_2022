import 'package:client/core/domain/models/news/news_model.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
<<<<<<< HEAD
import 'package:client/core/views/common/widgets/button/custom_button_icon.dart';
=======
import 'package:client/core/views/common/widgets/custom_appbar.dart';
>>>>>>> 997b4d9189507f32e8c4bbb1d790e81e83050bcf
import 'package:client/core/views/common/widgets/custom_date_text.dart';
import 'package:client/core/views/common/widgets/custom_image.dart';
import 'package:client/core/views/common/widgets/custom_views_count.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../educations_view/educations.viewmodel.dart';

class NewsDetailWidgets {
  PreferredSizeWidget appBar(BuildContext context) {
    return CustomAppbar(titleText: L10n.of(context)!.news);
  }

  Widget body(BuildContext context, {required NewsModel news}) {
    return Padding(
      padding: context.horizontalPaddingNormal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 2, child: title(news)),
          Expanded(flex: 2, child: wtechAndDateText(context)),
          Expanded(flex: 6, child: newsImage(news, context)),
          Expanded(flex: 2, child: newsDetailTitleAndViewsCount(context)),
          Expanded(flex: 6, child: newsDetailTextCard(context, news)),
          const Spacer()
        ],
      ),
    );
  }

  Widget title(NewsModel news) {
    final _vm = GetIt.I.get<EducationsViewModel>();
    bool heart = _vm.heartAnimation();
    return StreamBuilder(
        stream: _vm.heartFill,
        builder: (context, snapshot) {
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
                    backgroundColor: Theme.of(context).cardTheme.color,
                    child: CustomIconButton(
                      onPressed: () async {
                        heart = _vm.heartAnimation();
                      },
                      icon: heart ? Icons.favorite : Icons.favorite_border,
                      color: Theme.of(context).backgroundColor,
                    ),
                  ),
                ),
              ),
            ],
          );
        });
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
        const CustomDateText(date: '27.06.2022')
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
        const CustomViewsCount(viewsCount: "126")
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
            CustomText(
              news.detail,
              fontSize: 15,
              overflow: TextOverflow.ellipsis,
              maxLines: 6,
            ),
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
