import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/views/common/widgets/text/custom_text_library.dart';
import 'package:flutter/material.dart';

class AboutCategoryCard extends StatelessWidget {
  const AboutCategoryCard({
    super.key,
    required this.listItem,
  });

  final dynamic listItem;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            listItem['icon'],
            CustomText(
              listItem['count'],
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
            CustomText(
              listItem['text'],
              color: ColorConstant.instance.grey,
              fontWeight: FontWeight.w500,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ]),
    );
  }
}
