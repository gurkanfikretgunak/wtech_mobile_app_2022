import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_date_text.dart';
import 'package:client/core/views/common/widgets/custom_views_count.dart';
import 'package:flutter/material.dart';

class CardInformationWidget extends StatelessWidget {
  const CardInformationWidget({
    Key? key,
    required this.formattedDate,
    required this.videoTitle,
    required this.viewsNumber,
  }) : super(key: key);
  final String formattedDate, videoTitle;
  final int viewsNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomDateText(date: formattedDate),
          Text(
            videoTitle,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: CustomViewsCount(
                viewsCount: "$viewsNumber ${L10n.of(context)!.views}"),
          ),
        ]);
  }
}
