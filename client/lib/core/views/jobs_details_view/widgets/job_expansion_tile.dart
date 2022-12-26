import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/views/common/widgets/text/custom_text_library.dart';
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
        collapsedIconColor: Theme.of(context).cardColor,
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
