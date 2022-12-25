import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:client/core/views/home_view/home.viewmodel.dart';
import 'package:client/core/views/home_view/home.widgets.dart';

class HomeView extends StatelessWidget with HomeViewWidget {
  HomeView({super.key});

  final _vm = GetIt.I.get<HomeViewModel>();

  @override
  Widget build(BuildContext context) {
    return _vm.baseScaffold(context, body: homePageWidget(context));
  }
}
