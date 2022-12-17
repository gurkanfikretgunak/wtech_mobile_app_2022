import 'package:client/core/extensions/extension.dart';
import 'package:flutter/material.dart';

import '../../../../constants/color_constans.dart';
import '../text/custom_text.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
    this.height,
    this.width,
    this.borderSideColor,
    this.borderRadius,
    this.shadowColor,
    this.child,
    this.fontWeight,
    this.iconWidget,
    this.disabledBackgroundColor,
  }) : super(key: key);

  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? shadowColor;
  final Color? borderSideColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final double? width;
  final double? borderRadius;
  final VoidCallback? onPressed;
  final Widget? child;
  final Widget? iconWidget;
  final Color? disabledBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          backgroundColor ?? ColorConstant.instance.blue,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          iconWidget != null
              ? Padding(
                  padding: context.onlyRightPaddingNormal,
                  child: iconWidget!,
                )
              : const SizedBox.shrink(),
          CustomText(
            text,
            fontWeight: fontWeight ?? FontWeight.w600,
            fontSize: fontSize,
            color: textColor ?? ColorConstant.instance.white,
          ),
        ],
      ),
    );
  }
}
