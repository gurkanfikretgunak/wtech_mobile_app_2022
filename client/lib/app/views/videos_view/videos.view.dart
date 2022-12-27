import 'package:client/app/views/videos_view/videos.viewmodel.dart';
import 'package:client/app/views/videos_view/videos.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

// ignore: must_be_immutable
class VideosView extends StatelessWidget with VideosWidgets {
  VideosView({super.key});
  final _vm = GetIt.I.get<VideosViewModel>();
  @override
  Widget build(BuildContext context) {
    return _vm.baseScaffold(
      context,
      body: body(context),
      appbar: appBar(context),
    );
  }
}
