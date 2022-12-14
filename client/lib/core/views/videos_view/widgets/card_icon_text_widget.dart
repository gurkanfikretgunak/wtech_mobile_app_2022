import 'package:client/core/constants/color_constans.dart';
import 'package:flutter/material.dart';

class CardIconTextWidget extends StatelessWidget {
  const CardIconTextWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 8,
        children: [Icon(icon, color: ColorConstant.instance.grey), Text(text)]);
  }
}
