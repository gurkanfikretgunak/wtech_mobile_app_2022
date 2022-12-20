import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/favorites_view/widgets/tabbar_list.dart';
import 'package:flutter/material.dart';

import 'favorites.widgets.dart';

class FavoritesView extends StatelessWidget with FavoritesWidgets {
  FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.paddingNormal,
        child: DefaultTabController(
          length: favoriteTabs(context).length,
          child: Column(
            children: [
              Expanded(
                child: tabBar(context),
              ),
              Expanded(
                flex: 15,
                child: tabBarView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
