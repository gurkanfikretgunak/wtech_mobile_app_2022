import 'package:client/app/views/jobs_details_view/jobs_detail.viewmodel.dart';
import 'package:client/app/views/jobs_details_view/jobs_detail.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class JobsDetailView extends StatelessWidget with JobsDetailWidgets {
  JobsDetailView({Key? key}) : super(key: key);
  final _vm = GetIt.I.get<JobsDetailViewModel>();
  @override
  Widget build(BuildContext context) {
    return _vm.baseScaffold(
      context,
      body: body(context),
      appbar: appbar(context),
    );
  }
}
