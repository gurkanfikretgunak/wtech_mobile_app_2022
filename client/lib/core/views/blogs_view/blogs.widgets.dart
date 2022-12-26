import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/blogs_view/widgets/blogs_list.dart';
import 'package:client/core/views/blogs_view/widgets/blogs_model.dart';
import 'package:client/core/views/blogs_view/widgets/blogs_card.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/common/widgets/custom_date_text.dart';
import 'package:client/core/views/common/widgets/custom_image.dart';
import 'package:client/core/views/common/widgets/custom_views_count.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:client/core/views/home_view/home.widgets.dart';

import 'package:flutter/material.dart';

class BlogsWidget {
  PreferredSizeWidget appBar(BuildContext context) {
    return CustomAppbar(
      titleText: L10n.of(context)!.blog,
      isCheck: false,
      isName: false,
    );
  }

  Widget card({bool? isTitleCard, required BlogsModel blogs}) {
    return BlogsCard(
      blogs: blogs,
    );
  }

  Widget appBarTitle(BuildContext context) {
    return Text('Blog', style: Theme.of(context).textTheme.headline6);
  }

  Widget cardImage({required String imagePath, required BuildContext context}) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
      child: CustomImage(
        assetPath: imagePath,
      ),
    );
  }

  Widget cardTitleText(String title) {
    return CustomText(title, fontSize: 15, fontWeight: FontWeight.w700);
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

  Widget viewCount() {
    return const CustomViewsCount(viewsCount: "126");
  }

  Padding body(BuildContext context) {
    return Padding(
      padding: context.paddingNormal,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(flex: 10, child: HomeViewWidget.searchHomeWidget(context)),
              ],
            ),
            context.emptySizedHeightBoxNormal,
            SizedBox(
              height: context.dynamicHeight(1),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: blogsList.length,
                itemBuilder: (context, index) {
                  return BlogsCard(blogs: blogsList[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
