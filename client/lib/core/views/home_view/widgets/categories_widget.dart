import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/home_view/temporary_contants.dart/icon_constants.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: IconConstant.iconList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: context.horizontalPaddingNormal,
          child: Column(
            children: [
              CircleAvatar(
                  maxRadius: 25,
                  backgroundColor: ColorConstant.instance.shinyWhite,
                  child: Icon(IconConstant.iconList[index])),
              Text(
                IconConstant.iconDef(context)[index],
              )
            ],
          ),
        );
      },
    );
  }
}
