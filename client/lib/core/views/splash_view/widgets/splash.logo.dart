import 'package:flutter/material.dart';

class SplashLogo extends StatelessWidget {
  final int i;
  final double screenHeight;
  const SplashLogo({Key? key, required this.i, required this.screenHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: screenHeight / i,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'images/wtech_logo.gif',
            scale: 1.5,
          )
        ],
      ),
    );
  }
}
