import 'package:client/core/domain/models/news/news_model.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/news_detail_view/news_detail.view.dart';
import 'package:client/core/views/news_view/news.widgets.dart';
import 'package:client/gen/assets.gen.dart';
import 'package:flutter/material.dart';

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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: isTitleCard != null
            ? Wrap(
                runSpacing: 10,
                children: [
                  Row(
                    children: [
                      Expanded(child: cardImage(imagePath: Assets.images.png.news1.path, context: context, true)),
                    ],
                  ),
                  Padding(
                    padding: context.paddingLow,
                    child: Wrap(
                      children: [
                        cardTitleText(news.title, context),
                        cardDetailText(news.detail),
                        Padding(
                          padding: context.onlyTopPaddingLow,
                          child: dateText(
                            date: news.date,
                            alignment: Alignment.bottomRight,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            : Row(
                children: [
                  cardImage(imagePath: Assets.images.png.home1.path, context: context, false),
                  context.emptySizedWidthBoxLow,
                  Expanded(
                    flex: 6,
                    child: Wrap(
                      runSpacing: 8,
                      children: [
                        cardTitleText(news.title, context),
                        cardDetailText(news.detail),
                        dateText(date: news.date),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
