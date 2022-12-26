import 'package:client/core/views/jobs_view/jobs.viewmodel.dart';
import 'package:client/core/views/jobs_view/jobs.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class JobsView extends StatelessWidget with JobsWidgets {
  JobsView({Key? key}) : super(key: key);
  final _vm = GetIt.I.get<JobsViewModel>();
  @override
  Widget build(BuildContext context) {
    return _vm.baseScaffold(
      context,
      body: body(context),
      appbar: appbar(context),
    );
  }
}
