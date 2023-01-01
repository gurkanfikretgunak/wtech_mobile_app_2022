import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/app/l10n/app_l10n.dart';
import 'package:client/app/views/common/widgets/custom_image.dart';
import 'package:client/app/views/common/widgets/text/custom_text_library.dart';
import 'package:client/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import 'widgets/about_category_card.dart';
import 'widgets/about_item_list.dart';
import 'widgets/introduce_card.dart';
import 'widgets/wtech_statistics_list.dart';

class AboutWidgets {
  Widget descriptionText(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingMedium,
      child: Column(
        children: [
          CustomText(
            L10n.of(context)!.wtechForCareer,
            color: ColorConstant.instance.grey,
            fontSize: 12,
          ),
          context.emptySizedHeightBoxNormal,
          CustomText(
            L10n.of(context)!.opportunitiyEquality,
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget titleText(BuildContext context) {
    return Center(
      child: CustomText(
        L10n.of(context)!.madeUsSprecial,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget aboutCategoryListView(BuildContext context) {
    return Padding(
      padding: context.onlyLeftPaddingNormal,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return context.emptySizedWidthBoxNormal;
        },
        scrollDirection: Axis.horizontal,
        itemCount: wtechStatisticsList(context).length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          var key = wtechStatisticsList(context)[index];
          return SizedBox(
              width: context.dynamicWidth(0.2),
              child: AboutCategoryCard(listItem: key));
        },
      ),
    );
  }

  Widget titleImage(BuildContext context) {
    return Stack(
      children: [
        CustomImage(
          assetPath: Assets.images.about1.path,
          height: context.dynamicHeight(0.2),
        ),
        Positioned(
          top: context.dynamicHeight(0.09),
          left: context.dynamicWidth(0.13),
          child: CustomText(
            L10n.of(context)!.titleEvents,
            color: ColorConstant.instance.white,
            fontWeight: FontWeight.w700,
            fontSize: 23,
          ),
        )
      ],
    );
  }

  Widget introduceCardList(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingNormal,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var listItem = aboutItemList(context)[index];
          return IntroduceCard(listItem: listItem);
        },
      ),
    );
  }
}
