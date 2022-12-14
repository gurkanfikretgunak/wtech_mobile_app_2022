
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('images/logo.svg',height: 30);
  }
}


