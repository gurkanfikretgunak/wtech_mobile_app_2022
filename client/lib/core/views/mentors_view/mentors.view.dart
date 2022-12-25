import 'package:client/core/views/mentors_view/mentors.viewmodel.dart';
import 'package:client/core/views/mentors_view/mentors.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class MentorsView extends StatelessWidget with MentorsWidgets {
  MentorsView({Key? key}) : super(key: key);
  final _vm = GetIt.I.get<MentorsViewModel>();
  @override
  Widget build(BuildContext context) {
    return _vm.baseScaffold(
      context,
      appbar: appbar(context),
      body: body(context),
    );
  }
}
