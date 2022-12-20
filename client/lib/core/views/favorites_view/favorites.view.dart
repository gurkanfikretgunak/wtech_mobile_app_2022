import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/common/widgets/custom_divider.dart';
import 'package:client/core/views/favorites_view/widgets/tabbar_list.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../view_model_sample_two/sample_two.viewmodel.dart';
import 'favorites.widgets.dart';

class FavoritesView extends StatelessWidget with FavoritesWidgets {
  FavoritesView({super.key});

  final _vm = GetIt.I.get<SampleViewModelTwo>();

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
