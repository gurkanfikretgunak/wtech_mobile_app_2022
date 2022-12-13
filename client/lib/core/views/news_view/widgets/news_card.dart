import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/news_view/news.widgets.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

class NewsCard extends StatelessWidget with NewsWidgets {
  const NewsCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.date,
    this.isTitleCard,
  });

  final String title;
  final String subTitle;
  final String date;
  final bool? isTitleCard;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        child: isTitleCard != null
            ? Wrap(
                runSpacing: 10,
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  cardImage(
                      imagePath: Assets.images.news1.path, context: context),
                  Padding(
                    padding: context.paddingAll,
                    child: Wrap(
                      children: [
                        cardTitleText(title),
                        cardSubTitleText(subTitle),
                        dateText(
                          context: context,
                          date: date,
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
                        padding: context.paddingAll,
                        child: Wrap(
                          runSpacing: 8,
                          children: [
                            cardTitleText(title),
                            cardSubTitleText(subTitle),
                            dateText(context: context, date: date),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
