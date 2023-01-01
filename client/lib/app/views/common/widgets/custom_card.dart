import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.child,
    this.color,
    this.elevation,
    this.height,
    this.width,
    this.margin,
    this.shadowColor,
    this.borderRadius,
    this.borderSideColor,
    this.borderWith,
  }) : super(key: key);

  final Color? color;
  final Color? shadowColor;
  final Color? borderSideColor;
  final Widget child;
  final double? elevation;
  final double? width;
  final double? height;
  final double? borderWith;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation ?? 3,
      color: color,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shadowColor: shadowColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: borderSideColor ?? Colors.transparent,
          width: borderWith ?? 1,
        ),
        borderRadius: borderRadius ?? BorderRadius.circular(5),
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: child,
      ),
    );
  }
}
