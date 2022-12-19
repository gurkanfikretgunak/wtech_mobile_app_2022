import 'package:client/core/constants/color_constans.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
    this.text, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.wordSpacing,
    this.underlineText,
  });
  final String text;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? wordSpacing;
  final TextDecoration? underlineText;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        style: TextStyle(
          color: color ?? Theme.of(context).textSelectionTheme.cursorColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
          wordSpacing: wordSpacing,
          decoration: underlineText,
        ));
  }
}
