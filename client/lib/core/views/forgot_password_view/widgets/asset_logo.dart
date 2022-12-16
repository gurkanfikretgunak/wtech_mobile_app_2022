

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AssetLogo extends StatelessWidget {
  const AssetLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('images/logo.svg',height: 50);
  }
}