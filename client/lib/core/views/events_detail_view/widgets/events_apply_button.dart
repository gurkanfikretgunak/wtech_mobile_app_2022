import 'package:client/core/l10n/app_l10n.dart';
import 'package:flutter/material.dart';

class EventsApplyButton extends StatelessWidget {
  const EventsApplyButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.height * 0.05,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(L10n.of(context)!.applyButton),
      ),
    );
  }
}
