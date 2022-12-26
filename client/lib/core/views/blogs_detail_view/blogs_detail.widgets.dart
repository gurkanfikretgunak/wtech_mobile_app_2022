import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import '../../utils/constants/colors/color_constans.dart';
import '../../l10n/app_l10n.dart';

import '../blogs_view/widgets/blogs_model.dart';
import '../common/widgets/button/custom_button_libary.dart';
import '../common/widgets/custom_image.dart';
import '../common/widgets/custom_date_text.dart';
import '../common/widgets/custom_views_count.dart';

class BlogsDetailWidget {
  Widget title(BlogsModel blogs) {
    return CustomText(
      blogs.title!,
      fontSize: 20,
      maxLines: 2,
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

  Widget blogsImage(BlogsModel blog, BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: CustomImage(
        width: context.dynamicWidth(1),
        assetPath: blog.image!,
      ),
    );
  }

  Widget blogsDetailTitleAndViewsCount(BuildContext context) {
    return const Align(
      alignment: Alignment.centerRight,
      child: CustomViewsCount(
        viewsCount: "126",
        hasViewsText: true,
      ),
    );
  }

  Widget blogsDetailTextCard(BuildContext context, BlogsModel blog) {
    return CustomText(blog.detail!);
  }

  Widget shareButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomTextButton(onPressed: () {}, text: L10n.of(context)!.shareThisPost),
        CustomIconButton(onPressed: () {}, icon: Icons.share)
      ],
    );
  }
}
