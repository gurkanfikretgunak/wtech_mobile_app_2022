import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.1),
      child: Image.asset("assets/images/png/wtech_logo.png"),
    );
  }
}
