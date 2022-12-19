import 'package:client/core/views/favorites_view/widgets/tabview_item.dart';
import 'package:flutter/material.dart';
import '../educations_view/widgets/education_card.dart';
import 'widgets/tabbar_list.dart';

class FavoritesWidgets {
  Widget tabBar(BuildContext context) {
    return TabBar(
      automaticIndicatorColorAdjustment: true,
      tabs: favoriteTabs(context),
    );
  }

  Widget tabBarView() {
    return const TabBarView(
      children: [
        TabBarViewListView(
          favoriteCardType: EducationCardWidget(),
        ),
        TabBarViewListView(
          favoriteCardType: SizedBox(),
        ),
        TabBarViewListView(
          favoriteCardType: SizedBox(),
        ),
      ],
    );
  }
}
