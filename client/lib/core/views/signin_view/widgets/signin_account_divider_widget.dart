import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_divider.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class CustomSignInAccountDivider extends StatelessWidget {
  const CustomSignInAccountDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
            child: CustomDivider(
          indent: 10,
          endIndent: 50,
        )),
        CustomText(L10n.of(context)!.or),
        const Expanded(
            child: CustomDivider(
          indent: 50,
          endIndent: 10,
        )),
      ],
    );
  }
}
