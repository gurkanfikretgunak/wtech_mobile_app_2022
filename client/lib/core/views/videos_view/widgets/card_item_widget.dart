import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/videos_view/widgets/card/card_information_widget.dart';
import 'package:client/core/views/videos_view/widgets/card/card_video_widget.dart';
import 'package:flutter/material.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({
    Key? key,
    required this.videoUrl,
    required this.formattedDate,
    required this.viewsNumber,
    required this.videoTitle,
    required this.isHorizontal,
  }) : super(key: key);
  final String videoUrl, formattedDate, videoTitle;
  final int viewsNumber;
  final bool isHorizontal;

  @override
  Widget build(BuildContext context) {
    Widget cardInfo = CardInformationWidget(
        videoTitle: videoTitle,
        viewsNumber: viewsNumber,
        isHorizontal: isHorizontal,
        formattedDate: formattedDate);

    Widget cardVideo =
        CardVideoWidget(isHorizontal: isHorizontal, videoUrl: videoUrl);

    return Card(
      child: isHorizontal
          ? Row(
              children: [
                Expanded(flex: 5, child: cardVideo),
                Expanded(
                    flex: 5,
                    child:
                        Padding(padding: context.paddingLow, child: cardInfo))
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 2, child: cardVideo),
                Expanded(
                  child: Padding(
                    padding: context.paddingLow,
                    child: cardInfo,
                  ),
                )
              ],
            ),
    );
  }
}
