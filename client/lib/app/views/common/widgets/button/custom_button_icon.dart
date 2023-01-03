import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/colors/color_constans.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.color,
    this.iconSize,
    this.splashRadius,
    this.splashColor,
    this.highlightColor,
    this.tooltip,
  }) : super(key: key);

  final Color? color;
  final Color? splashColor;
  final Color? highlightColor;
  final double? iconSize;
  final double? splashRadius;
  final IconData icon;
  final String? tooltip;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: tooltip ?? "",
      onPressed: onPressed,
      icon: Icon(icon),
      color: color ?? ColorConstant.instance.blue,
      iconSize: iconSize,
      splashColor: splashColor,
      highlightColor: highlightColor,
      splashRadius: splashRadius,
    );
  }
}
