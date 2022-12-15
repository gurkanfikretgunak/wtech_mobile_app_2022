import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/mentors_details_view/mentors_details.viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'mentors_details.widgets.dart';

class MentorsDetailsView extends StatelessWidget with MentorDetailsWidgets {
  MentorsDetailsView({Key? key}) : super(key: key);
  final _vm = GetIt.I.get<MentorsDetailsViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: 'Zehra Öney'),
      body: body(context),
      floatingActionButton: floatingActionButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
