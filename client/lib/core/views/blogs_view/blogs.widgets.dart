import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/views/blogs_view/widgets/blogs_model.dart';
import 'package:client/core/views/blogs_view/widgets/blogs_card.dart';
import 'package:client/core/views/common/widgets/button/custom_button_libary.dart';
import 'package:client/core/views/common/widgets/custom_date_text.dart';
import 'package:client/core/views/common/widgets/custom_image.dart';
import 'package:client/core/views/common/widgets/custom_views_count.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';

import 'package:flutter/material.dart';

class BlogsWidget {
  Widget card({bool? isTitleCard, required BlogsModel blogs}) {
    return BlogsCard(
      blogs: blogs,
    );
  }

  Widget appBarTitle(BuildContext context) {
    return Text('Blog', style: Theme.of(context).textTheme.headline6);
  }

  Widget cardImage({required String imagePath, required BuildContext context}) {
    return Stack(
      children: [
        CustomImage(
          assetPath: imagePath,
        ),
        Transform(
          transform: Matrix4.translationValues(180, 10, 0),
          child: CircleAvatar(
            backgroundColor: ColorConstant.instance.white,
            child: CustomIconButton(
              iconSize: 20,
              icon: Icons.favorite,
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }

  Widget cardTitleText(String title) {
    return CustomText(title, fontSize: 15, fontWeight: FontWeight.w700);
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

  Widget viewCount() {
    return const CustomViewsCount(viewsCount: "126");
  }
}
