import 'package:client/core/constants/color_constans.dart';
import 'package:flutter/cupertino.dart';

class SplashWidgets {
  Widget allRightReservedText(
    int i,
    double screenHeight, {
    required String upperText,
    required String bottomText,
  }) {
    final TextStyle allRightReservedTextStyle =
        TextStyle(fontSize: 12, color: ColorConstant.instance.grey);
    return Container(
      alignment: Alignment.center,
      height: screenHeight / i,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          DefaultTextStyle(
            style: allRightReservedTextStyle,
            child: Text(upperText),
          ),
          DefaultTextStyle(
            style: allRightReservedTextStyle,
            child: Text(bottomText),
          ),
        ],
      ),
    );
  }
}
