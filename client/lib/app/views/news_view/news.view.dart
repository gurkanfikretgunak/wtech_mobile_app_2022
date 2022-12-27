import 'package:client/app/views/news_view/news.viewmodel.dart';
import 'package:client/app/views/news_view/news.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class NewsView extends StatelessWidget with NewsWidgets {
  NewsView({super.key});
  final _vm = GetIt.I.get<NewsViewModel>();

  @override
  Widget build(BuildContext context) {
    return _vm.baseScaffold(
      context,
      appbar: appBar(context),
      body: body(context),
    );
  }
}
