import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/jobs_details_view/jobs_detail.widgets.dart';
import 'package:flutter/material.dart';

class JobsDetailView extends StatelessWidget with JobsDetailWidgets {
  JobsDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        titleText: L10n.of(context)!.jobAndinternship,
        isCheck: false,
        isName: false,
      ),
      body: SingleChildScrollView(child: body(context)),
    );
  }
}
