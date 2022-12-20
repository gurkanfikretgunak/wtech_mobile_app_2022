import 'package:client/core/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../gen/assets.gen.dart';

class AssetLogo extends StatelessWidget {
  const AssetLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.1),
      child: SvgPicture.asset(Assets.images.logoSvg),
    );
  }
}
