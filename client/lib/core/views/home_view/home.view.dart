import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/home_view/widgets/categories_widget.dart';
import 'package:client/core/views/home_view/widgets/drawer_widget.dart';
import 'package:client/core/views/home_view/widgets/swiper_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../l10n/app_l10n.dart';
import '../common/widgets/custom_appbar.dart';
import 'home.viewmodel.dart';
import 'home.widgets.dart';

class HomeView extends StatelessWidget with HomeViewWidget {
  HomeView({super.key});

  final _vm = GetIt.I.get<HomeViewModel>();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _vm.loading,
      builder: (context, snapshot) {
        return Scaffold(
          appBar: CustomAppbar(
            titleText: L10n.of(context)!.hello,
            isCheck: true,
            isName: true,
          ),
          drawer: const DrawerWidget(),
          body: Padding(
            padding: context.onlyLRTpaddingNormal,
            child: Wrap(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomeViewWidget.searchHomeWidget(context),
                    context.emptySizedHeightBoxLow,
                    SizedBox(
                      height: context.dynamicHeight(0.29),
                      width: context.width,
                      child: const EventSwiperWidget(),
                    ),
                    Padding(
                      padding: context.onlyTRpaddingNormal,
                      child: Text(L10n.of(context)!.categories, style: Theme.of(context).textTheme.headline6),
                    ),
                    SizedBox(
                        height: context.dynamicHeight(0.098), width: context.width, child: const CategoriesWidget()),
                    Padding(
                      padding: context.onlyTRpaddingNormal,
                      child: Text(L10n.of(context)!.currentTraining, style: Theme.of(context).textTheme.headline6),
                    ),
                    SizedBox(height: context.dynamicHeight(0.2), child: homeCardWidget(context)),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
