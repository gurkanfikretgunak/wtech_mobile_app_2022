import 'package:client/core/views/videos_view/videos.viewmodel.dart';
import 'package:client/core/views/videos_view/videos.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class VideosView extends StatelessWidget with VideosWidgets {
  VideosView({super.key});

  final _vm = GetIt.I.get<VideosViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: body(context));
  }
}
