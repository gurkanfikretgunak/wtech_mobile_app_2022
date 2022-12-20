import 'package:flutter/material.dart';
import '../../../constants/color_constans.dart';
import '../../common/widgets/text/text_library.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({
    super.key,
    required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: ColorConstant.instance.grey,
          width: 1,
        ),
      ),
      child: Tab(
        child: Align(
          alignment: Alignment.center,
          child: CustomText(text),
        ),
      ),
    );
  }
}
