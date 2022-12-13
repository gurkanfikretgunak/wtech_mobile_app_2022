import 'package:flutter/material.dart';

import '../../../l10n/app_l10n.dart';

class SignInBottomDescription extends StatelessWidget {
  const SignInBottomDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Text(
        style: const TextStyle(fontSize: 11, color: Colors.black38),
        L10n.of(context)!.loginBottomDescription,
      ),
    );
  }
}
