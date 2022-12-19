import 'package:flutter/material.dart';

class TabBarViewListView extends StatelessWidget {
  const TabBarViewListView({
    super.key,
    required this.favoriteCardType,
  });

  final Widget favoriteCardType;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return favoriteCardType;
      },
    );
  }
}
