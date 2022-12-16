import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/views/common/widgets/text/text_libary.dart';
import 'package:flutter/material.dart';

class JobExpansionTile extends StatelessWidget {
  const JobExpansionTile({
    Key? key,
    required this.theme,
    required this.expansionTileTitle,
    required this.expansionTileInfo,
  }) : super(key: key);

  final ThemeData theme;
  final String? expansionTileTitle;
  final String? expansionTileInfo;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: theme,
      child: ExpansionTile(
        collapsedIconColor: ColorConstant.instance.blue,
        controlAffinity: ListTileControlAffinity.leading,
        title: CustomText(
          expansionTileTitle ?? "",
          color: ColorConstant.instance.blue,
        ),
        children: <Widget>[
          ListTile(title: CustomText(expansionTileInfo ?? "")),
        ],
      ),
    );
  }
}
