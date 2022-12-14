import 'package:chewie/chewie.dart';
import 'package:client/core/constants/color_constans.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoItemWidget extends StatefulWidget {
  final VideoPlayerController videoPlayerController;

  const VideoItemWidget({required this.videoPlayerController, Key? key})
      : super(key: key);

  @override
  State<VideoItemWidget> createState() => _VideoItemWidgetState();
}

class _VideoItemWidgetState extends State<VideoItemWidget> {
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
      insetPadding: const EdgeInsets.symmetric(horizontal: 10),
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
                  color: ColorConstant.instance.grey,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
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
