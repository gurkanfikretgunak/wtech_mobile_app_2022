import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
      {super.key,
      required this.assetPath,
      this.color,
      this.fit,
      this.alignment,
      this.height,
      this.width});

  final String assetPath;
  final Color? color;
  final BoxFit? fit;
  final Alignment? alignment;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetPath,
      height: height,
      width: width,
      fit: fit ?? BoxFit.cover,
      alignment: alignment ?? Alignment.center,
      color: color,
    );
  }
}
