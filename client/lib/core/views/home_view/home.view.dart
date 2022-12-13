import 'package:client/core/views/home_view/widgets/categories_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../extensions/extension.dart';
import '../../l10n/app_l10n.dart';
import '../common/widgets/custom_appbar.dart';
import '../common/widgets/custom_navbar.dart';
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
              appBar:
                  CustomAppBar.customAppBar(context: context, titleText: L10n.of(context)!.hello, isBackIcon: false),
              drawer: drawerWidget(context),
              body: Padding(
                padding: context.paddingAll,
                child: Wrap(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: context.paddingTopAndBottom,
                          child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.28,
                              width: MediaQuery.of(context).size.width,
                              child: cardWidget(context, true)),
                        ),
                        Text(
                          L10n.of(context)!.categories,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width,
                            child: const CategoriesWidget()),
                        Text(
                          L10n.of(context)!.currentTraining,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Padding(
                          padding: context.paddingOnlyTop,
                          child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.2, child: cardWidget(context, false)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: const CustomBottomNavBar());
        });
  }
}

Future<bool> loginAction() async {
  await Future.delayed(Duration(seconds: 5000));
  return true;
}
