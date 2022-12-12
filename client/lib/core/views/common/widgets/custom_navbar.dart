import 'package:client/core/l10n/app_l10n.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      items:  [

        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: L10n.of(context)!.home,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.search),
          label: L10n.of(context)!.search,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.event),
          label: L10n.of(context)!.events,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.person),
          label: L10n.of(context)!.mentor,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.model_training),
          label: L10n.of(context)!.trainings,
        ),
      ],
      
    );
  }
}
