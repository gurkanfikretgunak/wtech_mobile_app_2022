import 'package:chewie/chewie.dart';
import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoDialogWidget extends StatefulWidget {
  final VideoPlayerController videoPlayerController;

  const VideoDialogWidget({required this.videoPlayerController, Key? key})
      : super(key: key);

  @override
  State<VideoDialogWidget> createState() => _VideoDialogWidgetState();
}

class _VideoDialogWidgetState extends State<VideoDialogWidget> {
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 5 / 3,
      autoInitialize: true,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _chewieController.dispose();
    widget.videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: context.horizontalPaddingLow,
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 3.1,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(
                  Icons.close,
                  color: Theme.of(context)
                      .iconTheme
                      .copyWith(color: ColorConstant.instance.white)
                      .color,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: context.paddingLow,
                  child: Chewie(
                    controller: _chewieController,
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
