import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/news_view/news.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../l10n/app_l10n.dart';
import '../common/widgets/custom_appbar.dart';
import '../view_model_sample_two/sample_two.viewmodel.dart';

class NewsView extends StatelessWidget with NewsWidgets {
  NewsView({super.key});

  final _vm = GetIt.I.get<SampleViewModelTwo>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.customAppBar(
          context: context,
          titleText: L10n.of(context)!.news,
          isBackIcon: false),
      body: Padding(
        padding: context.paddingAll,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            card(isTitleCard: true),
            titleText(context),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return card();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
