import 'package:client/core/views/common/widgets/custom_image.dart';
import 'package:client/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: CustomImage(assetPath: Assets.gif.wtechLogoGif.path),
    );
  }
}
