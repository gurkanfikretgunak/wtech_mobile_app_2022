import 'package:client/core/views/bottom_navbar/bottom_navbar.widgets.dart';
import 'package:client/core/views/bottom_navbar/widgets/page_option_list.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/common/widgets/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../l10n/app_l10n.dart';
import '../home_view/widgets/drawer_widget.dart';
import 'bottom_navbar.viewmodel.dart';

// ignore: must_be_immutable
class CustomBottomNavBar extends StatelessWidget with BottomNavBarWidgets {
  CustomBottomNavBar({super.key});

  final _vm = GetIt.I.get<BottomNavBarViewModel>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _vm.currentPage,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            appBar: CustomAppbar(
              titleText: _vm.buildAppBarTitle(
                pageIndex: snapshot.data,
                context: context,
              ),
              isCheck: true,
              isName: snapshot.data == 0 ? true : false,
            ),
            drawer: const DrawerWidget(),
            body: Center(
              child: pageOptionList.elementAt(snapshot.data),
            ),
            bottomNavigationBar: bottomNavigationBar(
              currentIndex: snapshot.data,
              onTap: _vm.onTap,
              context: context,
            ),
          );
        } else {
          return const CustomLoading(logText: "fjdkl");
        }
      },
    );
  }
}
