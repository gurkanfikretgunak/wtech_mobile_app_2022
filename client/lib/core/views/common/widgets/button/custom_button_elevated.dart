import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/colors/color_constans.dart';
import '../text/custom_text.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.buttonColor,
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
  final Color? buttonColor;
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
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor:
            disabledBackgroundColor ?? ColorConstant.instance.grey,
        elevation: 0,
        shadowColor: shadowColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderSideColor ?? Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 5)),
        ),
        padding: EdgeInsets.zero,
        backgroundColor: buttonColor,
        fixedSize: Size(
          width ?? context.dynamicWidth(1),
          height ?? context.dynamicHeight(0.06),
        ),
      ),
      child: CustomText(
        text,
        fontWeight: fontWeight ?? FontWeight.w600,
        fontSize: fontSize,
        color: textColor ?? ColorConstant.instance.white,
      ),
    );
  }
}
