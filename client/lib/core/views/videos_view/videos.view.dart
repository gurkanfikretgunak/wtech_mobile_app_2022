import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/videos_view/videos.viewmodel.dart';
import 'package:client/core/views/videos_view/videos.widgets.dart';
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
