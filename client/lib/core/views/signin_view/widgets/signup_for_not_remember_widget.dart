import 'package:flutter/material.dart';

import '../../../l10n/app_l10n.dart';

class SignUpForNotRemember extends StatelessWidget {
  const SignUpForNotRemember({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Text(
              style: const TextStyle(fontSize: 20, color: Colors.black54),
              L10n.of(context)!.doYouHaveAccount,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 15),
              ),
              onPressed: () {},
              child: Text(
                L10n.of(context)!.doYouHaveAccount,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
