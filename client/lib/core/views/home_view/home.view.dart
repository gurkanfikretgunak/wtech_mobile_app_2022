import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/home_view/home.viewmodel.dart';
import 'package:client/core/views/home_view/home.widgets.dart';
import 'package:client/core/views/home_view/widgets/categories_widget.dart';
import 'package:client/core/views/home_view/widgets/drawer_widget.dart';
import 'package:client/core/views/home_view/widgets/swiper_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomeView extends StatelessWidget with HomeViewWidget {
  HomeView({super.key});

  final _vm = GetIt.I.get<HomeViewModel>();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _vm.loading,
      builder: (context, snapshot) {
        return Scaffold(
          drawer: const DrawerWidget(),
          body: Padding(
            padding: context.paddingNormal,
            child: Wrap(
              runSpacing: 5,
              children: [
                HomeViewWidget.searchHomeWidget(context),
                context.emptySizedHeightBoxLow,
                SizedBox(
                  height: context.dynamicHeight(0.29),
                  width: context.width,
                  child: const EventSwiperWidget(),
                ),
                Text(L10n.of(context)!.categories, style: Theme.of(context).textTheme.headline6),
                SizedBox(height: context.dynamicHeight(0.098), width: context.width, child: const CategoriesWidget()),
                Text(L10n.of(context)!.currentTraining, style: Theme.of(context).textTheme.headline6),
                SizedBox(height: context.dynamicHeight(0.2), child: homeCardWidget(context)),
              ],
            ),
          ),
        );
      },
    );
  }
}
