import 'package:flutter/material.dart';

import '../../l10n/app_l10n.dart';

class BottomNavBarWidgets {
  Widget bottomNavigationBar({
    required currentIndex,
    required onTap,
    required BuildContext context,
  }) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: L10n.of(context)!.home,
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.edit_note_outlined),
          label: "Eğitimler",
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.favorite_border_outlined),
          label: L10n.of(context)!.favorites,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.add_card_outlined),
          label: L10n.of(context)!.apply,
        ),
      ],
    );
  }
}
