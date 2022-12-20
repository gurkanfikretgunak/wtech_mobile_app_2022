import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:client/core/views/educations_detail_view/widgets/expansion_tile_list.dart';
import 'package:flutter/material.dart';

class EducationDescription extends StatefulWidget {
  const EducationDescription({super.key});

  @override
  State<EducationDescription> createState() => _EducationDescriptionState();
}

class _EducationDescriptionState extends State<EducationDescription> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return educationExpansions(
              ExpansionListTile().headerList(context)[index],
              ExpansionListTile().titleList(context)[index]);
        },
        itemCount: ExpansionListTile().headerList(context).length);
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
