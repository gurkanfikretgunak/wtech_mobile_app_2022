import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/news_view/news.widgets.dart';
import 'package:client/core/views/news_view/widgets/news_card.dart';
import 'package:client/core/views/news_view/widgets/news_list.dart';
import 'package:flutter/material.dart';

class NewsView extends StatelessWidget with NewsWidgets {
  NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        titleText: L10n.of(context)!.news,
        isCheck: false,
        isName: false,
      ),
      body: Padding(
        padding: context.paddingNormal,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              card(news: newsList[0], isTitleCard: true),
              titleText(context),
              SizedBox(
                height: context.dynamicHeight(0.7),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: newsList.length - 1,
                  itemBuilder: (context, index) {
                    return NewsCard(
                      news: newsList[index + 1],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
