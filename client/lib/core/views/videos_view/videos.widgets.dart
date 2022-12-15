import 'package:chewie/chewie.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:client/core/views/videos_view/widgets/card_item_widget.dart';
import 'package:flutter/material.dart';

class VideosWidgets {
  late ChewieController chewieController;
  Widget body(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CardItemWidget(
              videoUrl:
                  'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
              formattedDate: '26.09.2022',
              viewsNumber: 26,
              videoTitle: "İş Dünyasının Öncü Kadınları Buluştu",
              isHorizontal: false,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CustomText(
                L10n.of(context)!.lastPosts,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return const CardItemWidget(
                    videoUrl:
                        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
                    formattedDate: '26.09.2022',
                    viewsNumber: 26,
                    videoTitle: "İş Dünyasının Öncü Kadınları Buluştu",
                    isHorizontal: true,
                  );
                })
          ],
        ),
      ),
    );
  }

  Widget appBar(BuildContext context) {
    return Container();
  }
}
