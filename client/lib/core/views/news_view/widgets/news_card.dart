import 'package:client/core/domain/models/news/news_model.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/news_detail_view/news_detail.view.dart';
import 'package:client/core/views/news_view/news.widgets.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

class NewsCard extends StatelessWidget with NewsWidgets {
  NewsCard({
    super.key,
    this.isTitleCard,
    required this.news,
  });

  final NewsModel news;
  final bool? isTitleCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsDetailView(
              news: news,
            ),
          ),
        );
      },
      child: Card(
        child: SizedBox(
          child: isTitleCard != null
              ? Wrap(
                  runSpacing: 10,
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    cardImage(
                        imagePath: Assets.images.news1.path, context: context),
                    Padding(
                      padding: context.paddingLow,
                      child: Wrap(
                        children: [
                          cardTitleText(news.title),
                          cardDetailText(news.detail),
                          dateText(
                            date: news.date,
                            alignment: Alignment.bottomRight,
                          ),
                        ],
                      ),
                    )
                  ],
                )
              : SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 6,
                          child: cardImage(
                              imagePath: Assets.images.news2.path,
                              context: context)),
                      const Spacer(),
                      Expanded(
                        flex: 6,
                        child: Padding(
                          padding: context.paddingLow,
                          child: Wrap(
                            runSpacing: 8,
                            children: [
                              cardTitleText(news.title),
                              cardDetailText(news.detail),
                              dateText(date: news.date),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
