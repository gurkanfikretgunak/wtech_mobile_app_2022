import 'package:flutter/material.dart';

class CustomAppBar extends PreferredSize {
  const CustomAppBar({
    super.key,
    required super.child,
    required super.preferredSize,
  });

  static PreferredSize customAppBar({
    required BuildContext context,
    String? titleText,
    Widget? leading,
    Widget? trailing,
    bool? isBackIcon,
    bool? isTrailing,
  }) {
    return PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          actions: [
            Center(
              child: Container(
                  height: 50,
                  width: 100,
                  color: const Color(0xFFFFC700),
                  child: const CircleAvatar(backgroundColor: Colors.red)),
            )
          ],
        ));
  }
}
