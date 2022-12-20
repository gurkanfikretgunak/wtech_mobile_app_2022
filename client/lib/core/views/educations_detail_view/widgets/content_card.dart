import 'package:client/core/extensions/extension.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/custom_card.dart';
import '../../common/widgets/text/text_library.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({
    super.key,
    required this.listItem,
  });

  final dynamic listItem;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      elevation: 1,
      width: context.dynamicWidth(0.25),
      borderRadius: BorderRadius.circular(15),
      borderWith: 3,
      color: Colors.grey.shade200,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              "${listItem['text']} : ",
              fontWeight: FontWeight.w600,
            ),
            CustomText(
              "${listItem['description']}",
            ),
          ],
        ),
      ),
    );
  }
}
