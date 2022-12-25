import 'package:client/core/views/educations_view/educations.viewmodel.dart';
import 'package:client/core/views/educations_view/educations.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class EducationView extends StatelessWidget with EducationsWidgets {
  EducationView({super.key});

  final _vm = GetIt.I.get<EducationsViewModel>();
  @override
  Widget build(BuildContext context) {
    return _vm.baseScaffold(context, body: body(context));
  }
}