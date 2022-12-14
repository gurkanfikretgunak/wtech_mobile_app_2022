import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:client/core/views/educations_detail_view/widgets/expansion_tile_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EducationDescription extends StatefulWidget {
  const EducationDescription({super.key});

  @override
  State<EducationDescription> createState() => _EducationDescriptionState();
}

class _EducationDescriptionState extends State<EducationDescription> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: screenHeight / 2,
      width: screenWidth,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return educationExpansions(ExpansionTileList().headerList(context)[index], ExpansionTileList().titleList(context)[index]);
        },
         itemCount: ExpansionTileList().headerList(context).length),
    );
  }

  

  Widget educationExpansions(String title, String listTitle) {
    return ExpansionTile(
      title: CustomText(title, color: ColorConstant.instance.blue),
      controlAffinity: ListTileControlAffinity.leading,
      iconColor: ColorConstant.instance.blue,
      collapsedIconColor: ColorConstant.instance.blue,
      textColor: ColorConstant.instance.blue,
      collapsedTextColor: ColorConstant.instance.blue,
      children: [
        ListTile(
          title: CustomText(listTitle),
        ),
      ],
    );
  }
}