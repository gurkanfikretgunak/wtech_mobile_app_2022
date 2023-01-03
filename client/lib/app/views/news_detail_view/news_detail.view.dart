import 'package:client/core/domain/models/news/news_model.dart';
import 'package:client/app/views/news_detail_view/news_detail.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'news_detail.viewmodel.dart';

// ignore: must_be_immutable
class NewsDetailView extends StatelessWidget with NewsDetailWidgets {
  NewsDetailView({
    super.key,
    required this.news,
  });

  final NewsModel news;
  final _vm = GetIt.I.get<NewsDetailViewModel>();

  @override
  Widget build(BuildContext context) {
    return _vm.baseScaffold(
      context,
      appbar: appBar(context),
      body: body(context, news: news),
    );
  }
}
