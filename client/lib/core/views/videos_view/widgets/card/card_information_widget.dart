import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_date_text.dart';
import 'package:client/core/views/common/widgets/custom_views_count.dart';
import 'package:flutter/material.dart';

class CardInformationWidget extends StatelessWidget {
  const CardInformationWidget(
      {Key? key,
      required this.formattedDate,
      required this.videoTitle,
      required this.viewsNumber,
      required this.isHorizontal})
      : super(key: key);
  final String formattedDate, videoTitle;
  final int viewsNumber;
  final bool isHorizontal;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            videoTitle,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          isHorizontal
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: context.onlyBottomPaddingLow,
                      child: CustomDateText(date: formattedDate),
                    ),
                    CustomViewsCount(
                        viewsCount: "$viewsNumber ${L10n.of(context)!.views}"),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomDateText(date: formattedDate),
                    CustomViewsCount(
                        viewsCount: "$viewsNumber ${L10n.of(context)!.views}"),
                  ],
                ),
        ]);
  }
}
