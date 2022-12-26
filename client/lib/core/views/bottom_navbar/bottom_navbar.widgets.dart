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
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: L10n.of(context)!.home,
          backgroundColor: Theme.of(context).bottomAppBarColor,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.edit_note_outlined),
          label: L10n.of(context)!.educations,
          backgroundColor: Theme.of(context).bottomAppBarColor,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.favorite_border_outlined),
          label: L10n.of(context)!.favorites,
          backgroundColor: Theme.of(context).bottomAppBarColor,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.add_card_outlined),
          label: L10n.of(context)!.apply,
          backgroundColor: Theme.of(context).bottomAppBarColor,
        ),
      ],
    );
  }
}
