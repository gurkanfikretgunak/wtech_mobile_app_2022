import 'package:client/core/extensions/extension.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_constans.dart';
import '../../common/widgets/custom_image.dart';
import '../../common/widgets/text/custom_text.dart';

class IntroduceCard extends StatelessWidget {
  const IntroduceCard({
    super.key,
    this.listItem,
  });

  final dynamic listItem;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: listItem['onPressed'],
      child: SizedBox(
        width: context.dynamicWidth(0.6),
        child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: ColorConstant.instance.grey),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CustomImage(
                  assetPath: listItem['image'],
                  fit: BoxFit.scaleDown,
                ),
              ),
              context.emptySizedHeightBoxNormal,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    listItem['text'],
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  context.emptySizedWidthBoxNormal,
                  const Icon(Icons.arrow_forward)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
