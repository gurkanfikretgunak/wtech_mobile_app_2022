import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/common/widgets/custom_image.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

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
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
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
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
