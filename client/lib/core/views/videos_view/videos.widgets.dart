import 'package:chewie/chewie.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:client/core/views/videos_view/widgets/card_item_widget.dart';
import 'package:flutter/material.dart';

class VideosWidgets {
  late ChewieController chewieController;
  Widget body(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: context.paddingNormal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3.1,
              child: const CardItemWidget(
                videoUrl:
                    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
                formattedDate: '26.09.2022',
                viewsNumber: 26,
                videoTitle: "İş Dünyasının Öncü Kadınları Buluştu",
                isHorizontal: false,
              ),
            ),
            Padding(
              padding: context.paddingLow,
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
                  return Container(
                    margin: context.onlyBottomPaddingLow,
                    height: MediaQuery.of(context).size.height / 6.8,
                    child: const CardItemWidget(
                      videoUrl:
                          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
                      formattedDate: '26.09.2022',
                      viewsNumber: 26,
                      videoTitle: "İş Dünyasının Öncü Kadınları Buluştu",
                      isHorizontal: true,
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
