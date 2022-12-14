import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/videos_view/widgets/card_icon_text_widget.dart';
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
    var column = [
      CardIconTextWidget(
          icon: Icons.calendar_month, text: widget.formattedDate),
      Text(
        widget.videoTitle,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: CardIconTextWidget(
            icon: Icons.visibility,
            text: '${widget.viewsNumber} ${L10n.of(context)!.views}'),
      ),
    ];

    var clipRRect = InkWell(
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
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                )
              : const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 5,
            child: VideoPlayer(_controller),
          ),
        ),
        Container(
          height: 50,
          width: 50,
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
      shape: RoundedRectangleBorder(
        side: BorderSide(color: ColorConstant.instance.shinyWhite, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: widget.isHorizontal
          ? Row(
              children: [
                Expanded(flex: 5, child: clipRRect),
                Expanded(
                    flex: 4,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height / 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: column,
                      ),
                    ))
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                clipRRect,
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: column),
                )
              ],
            ),
    );
  }
}
