import 'package:client/core/extensions/extension.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/text/custom_text.dart';

class ProfilItem extends StatelessWidget {
  const ProfilItem({
    super.key,
    required this.iconData,
    required this.text,
    required this.onTap,
  });

  final IconData iconData;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 0.1,
        child: SizedBox(
          height: context.dynamicHeight(0.08),
          child: Padding(
            padding: context.horizontalPaddingNormal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(iconData),
                    context.emptySizedWidthBoxLow,
                    CustomText(text),
                  ],
                ),
                const Icon(Icons.arrow_forward_ios_sharp),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
