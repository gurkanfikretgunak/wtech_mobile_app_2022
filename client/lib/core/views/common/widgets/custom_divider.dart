import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.thickness,
    this.color,
    this.indent,
    required this.endIndent,
  });
  final double? indent;
  final double endIndent;
  final double? thickness;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: thickness ?? 1,
      color: color,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
