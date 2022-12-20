import 'package:client/core/domain/models/news/news_model.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/news_detail_view/news_detail.widgets.dart';
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
    return Scaffold(
      appBar: CustomAppbar(titleText: L10n.of(context)!.news),
      body: Padding(
        padding: context.horizontalPaddingNormal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 2, child: title(news)),
            Expanded(flex: 2, child: wtechAndDateText(context)),
            Expanded(flex: 6, child: newsImage(news, context)),
            Expanded(flex: 2, child: newsDetailTitleAndViewsCount(context)),
            Expanded(flex: 6, child: newsDetailTextCard(context, news)),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
