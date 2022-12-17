import 'package:flutter/material.dart';

import '../../../constants/color_constans.dart';
import '../../common/widgets/text/text_library.dart';

class AboutCategoryCard extends StatelessWidget {
  const AboutCategoryCard({
    super.key,
    required this.listItem,
  });

  final dynamic listItem;
  @override
  Widget build(BuildContext context) {
    return Card(
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
