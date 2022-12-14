import 'package:client/core/extensions/extension.dart';
import 'package:flutter/material.dart';

import '../../../l10n/app_l10n.dart';
import '../../common/widgets/text/custom_text.dart';

class SignUpForNotRemember extends StatelessWidget {
  const SignUpForNotRemember({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          L10n.of(context)!.doYouHaveAccount,
        ),
        SizedBox(
          width: context.dynamicWidth(0.001),
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 15),
          ),
          onPressed: () {},
          child: CustomText(
            color: Colors.blue,
            L10n.of(context)!.doYouHaveAccount,
          ),
        ),
      ],
    );
  }
}
