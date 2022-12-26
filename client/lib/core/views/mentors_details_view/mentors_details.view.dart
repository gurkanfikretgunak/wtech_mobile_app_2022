import 'package:client/core/views/mentors_details_view/mentors_details.viewmodel.dart';
import 'package:client/core/views/mentors_details_view/mentors_details.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class MentorsDetailsView extends StatelessWidget with MentorDetailsWidgets {
  MentorsDetailsView({Key? key}) : super(key: key);
  final _vm = GetIt.I.get<MentorsDetailsViewModel>();

  @override
  Widget build(BuildContext context) {
    return _vm.baseScaffold(
      context,
      appbar: appbar(context, 'Zehra Öney'),
      body: body(context),
    );
  }
}
