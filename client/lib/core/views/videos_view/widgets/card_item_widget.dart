import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_date_text.dart';
import 'package:client/core/views/common/widgets/custom_views_count.dart';
import 'package:client/core/views/videos_view/widgets/video_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CardItemWidget extends StatefulWidget {
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
  State<CardItemWidget> createState() => _CardItemWidgetState();
}

class _CardItemWidgetState extends State<CardItemWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)..initialize();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> cardBody = [
      CustomDateText(date: widget.formattedDate),
      Text(
        widget.videoTitle,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(fontWeight: FontWeight.bold),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: CustomViewsCount(
            viewsCount: "${widget.viewsNumber} ${L10n.of(context)!.views}"),
      ),
    ];

    InkWell cardVideo = InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (ctx) => VideoItemWidget(
                  videoPlayerController:
                      VideoPlayerController.network(widget.videoUrl),
                ));
      },
      child: Stack(alignment: AlignmentDirectional.center, children: [
        ClipRRect(
          borderRadius: widget.isHorizontal
              ? const BorderRadius.only(
                  topLeft: Radius.circular(4),
                  bottomLeft: Radius.circular(4),
                )
              : const BorderRadius.only(
                  topLeft: Radius.circular(4),
                  topRight: Radius.circular(4),
                ),
          child: VideoPlayer(_controller),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 18.5,
          width: MediaQuery.of(context).size.height / 18.5,
          decoration: BoxDecoration(
            color: ColorConstant.instance.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(50.0)),
            border: Border.all(
              color: ColorConstant.instance.white,
              width: 5.0,
            ),
          ),
          child: Icon(
            Icons.play_arrow,
            color: ColorConstant.instance.white,
            size: 30,
          ),
        ),
      ]),
    );

    return Card(
      child: widget.isHorizontal
          ? Row(
              children: [
                Expanded(flex: 5, child: cardVideo),
                Expanded(
                    flex: 4,
                    child: Padding(
                      padding: context.paddingLow,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: cardBody,
                      ),
                    ))
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 2, child: cardVideo),
                Expanded(
                  child: Padding(
                    padding: context.paddingLow,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: cardBody),
                  ),
                )
              ],
            ),
    );
  }
}
