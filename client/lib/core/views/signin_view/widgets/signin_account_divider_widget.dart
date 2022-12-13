import 'package:flutter/material.dart';

import '../../../l10n/app_l10n.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Divider(
            thickness: 1,
            indent: 20,
            endIndent: 60,
            color: Colors.black38,
          ),
        ),
        Text(L10n.of(context)!.details),
        const Expanded(
          child: Divider(
            thickness: 1,
            indent: 60,
            endIndent: 20,
            color: Colors.black38,
          ),
        ),
      ],
    );
  }
}
