import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/text/custom_text.dart';

class SettingsCardWidget extends StatelessWidget {
  const SettingsCardWidget({
    super.key,
    required this.text,
    required this.onTap,
    required this.switcherIcon,
  });

  final Widget switcherIcon;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 0.1,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: ColorConstant.instance.settingGrey),
          height: context.dynamicHeight(0.08),
          child: Padding(
            padding: context.horizontalPaddingNormal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    context.emptySizedWidthBoxLow,
                    CustomText(text),
                    switcherIcon,
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
