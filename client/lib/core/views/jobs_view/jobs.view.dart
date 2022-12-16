import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/common/widgets/custom_navbar.dart';
import 'package:client/core/views/jobs_view/jobs.viewmodel.dart';
import 'package:client/core/views/jobs_view/jobs.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class JobsView extends StatelessWidget with JobsWidgets {
  JobsView({Key? key}) : super(key: key);
  final _vm = GetIt.I.get<JobsViewModel>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        titleText: L10n.of(context)!.jobAndinternship,
      ),
      body: body(context),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
