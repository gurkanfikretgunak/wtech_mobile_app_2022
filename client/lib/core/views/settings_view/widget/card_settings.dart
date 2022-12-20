import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/text/custom_text.dart';

class SettingsCardWidget extends StatelessWidget {
  const SettingsCardWidget({
    super.key,
    required this.text,
    required this.onTap,
    required this.switcherIcon,
    required this.isSwitcher,
  });

  final Widget switcherIcon;
  final String text;
  final VoidCallback onTap;
  final bool isSwitcher;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor,
      elevation: 0.1,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConstant.instance.settingGrey),
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Padding(
              padding: context.onlyLeftPaddingLow,
              child: CustomText(text),
            ),
            isSwitcher
                ? switcherIcon
                : IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios_rounded)),
          ],
        ),
      ),
    );
  }
}
