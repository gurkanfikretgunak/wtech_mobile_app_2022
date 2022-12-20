import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/videos_view/videos.viewmodel.dart';
import 'package:client/core/views/videos_view/widgets/video_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:video_player/video_player.dart';

class CardVideoWidget extends StatefulWidget {
  const CardVideoWidget(
      {Key? key, required this.videoUrl, required this.isHorizontal})
      : super(key: key);

  final String videoUrl;
  final bool isHorizontal;

  @override
  State<CardVideoWidget> createState() => _CardVideoWidgetState();
}

class _CardVideoWidgetState extends State<CardVideoWidget> {
  final vM = GetIt.I.get<VideosViewModel>();
  @override
  void initState() {
    vM.videoControl(widget.videoUrl);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    vM.clear();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<dynamic>(
        stream: vM.isUrlWork,
        builder: (context, isUrlWorkSnapshot) {
          return InkWell(
            onTap: () {
              if (isUrlWorkSnapshot.data != null && isUrlWorkSnapshot.data) {
                showDialog(
                    context: context,
                    builder: (ctx) => Center(
                          child: VideoDialogWidget(
                            videoPlayerController:
                                VideoPlayerController.network(widget.videoUrl),
                          ),
                        ));
              }
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
                child: StreamBuilder<dynamic>(
                    stream: vM.controller,
                    builder: (context, controllerSnapshot) {
                      return controllerSnapshot.data != null &&
                              isUrlWorkSnapshot.data != null
                          ? isUrlWorkSnapshot.data
                              ? VideoPlayer(controllerSnapshot.data)
                              : Center(
                                  child: Text(
                                      L10n.of(context)!.urlConnectionError))
                          : const Center(child: CircularProgressIndicator());
                    }),
              ),
              if (isUrlWorkSnapshot.data != null && isUrlWorkSnapshot.data)
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
        });
  }
}
