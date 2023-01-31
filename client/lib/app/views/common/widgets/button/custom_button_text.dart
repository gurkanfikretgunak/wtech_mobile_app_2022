import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/colors/color_constans.dart';
import '../text/custom_text.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.foregroundColor,
    this.padding,
    this.child,
    this.shadowColor,
    this.minimumSize,
  }) : super(key: key);

  final String text;
  final Color? foregroundColor;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;

  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;
  final Widget? child;
  final Color? shadowColor;
  final Size? minimumSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shadowColor: shadowColor,
        padding: padding,
        elevation: 0,
        minimumSize: minimumSize ??
            Size(context.dynamicWidth(0.2), context.dynamicHeight(0.05)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: onPressed,
      child: child ??
          CustomText(
            text,
            color: textColor ?? ColorConstant.instance.blue,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
    );
  }
}
