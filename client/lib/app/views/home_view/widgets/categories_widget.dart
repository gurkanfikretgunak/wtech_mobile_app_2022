import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/app/views/home_view/temporary_contants.dart/icon_constants.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: IconConstant().categoryList(context).length,
      itemBuilder: (context, index) {
        var key = IconConstant().categoryList(context)[index];
        return Padding(
          padding: context.horizontalPaddingNormal,
          child: GestureDetector(
            onTap: key['onTap'],
            child: Column(
              children: [
                CircleAvatar(
                  maxRadius: 25,
                  backgroundColor: ColorConstant.instance.shinyWhite,
                  child: Icon(
                    key['icon'],
                  ),
                ),
                Text(
                  key['text'],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
