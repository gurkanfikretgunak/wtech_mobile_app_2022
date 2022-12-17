import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import '../../constants/color_constans.dart';
import '../../l10n/app_l10n.dart';

import '../blogs_view/widgets/blogs_model.dart';
import '../common/widgets/custom_image.dart';
import '../common/widgets/custom_date_text.dart';
import '../common/widgets/custom_views_count.dart';

class BlogsDetailWidget {
  Widget title(BlogsModel blogs) {
    var blogs;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 6,
          child: CustomText(
            blogs.title,
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
        const CustomDateText(date: '20.05.2022')
      ],
    );
  }

  Widget blogsImage(BlogsModel news, BuildContext context) {
    var blogs;
    return CustomImage(
      width: context.dynamicWidth(1),
      assetPath: blogs.image,
    );
  }

  Widget blogsDetailTitleAndViewsCount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          L10n.of(context)!.blog,
          fontSize: 17,
          fontWeight: FontWeight.w700,
        ),
        const CustomViewsCount(viewsCount: "126")
      ],
    );
  }

  Widget blogsDetailTextCard(BuildContext context, BlogsModel blogs) {
    return Card(
      child: Padding(
        padding: context.paddingNormal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(blogs.detail!, fontSize: 15),
            TextButton(
              onPressed: () {},
              child: CustomText(
                L10n.of(context)!.blog,
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
