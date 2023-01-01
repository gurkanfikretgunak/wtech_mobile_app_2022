import 'package:client/app/views/educations_detail_view/educations_detail.viewmodel.dart';
import 'package:client/app/views/educations_detail_view/educations_detail.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class EducationsDetailView extends StatelessWidget
    with EducationsDetailWidgets {
  EducationsDetailView({super.key});

  final _vm = GetIt.I.get<EducationsDetailViewModel>();
  @override
  Widget build(BuildContext context) {
    return _vm.baseScaffold(context,
        appbar: appBar(context), body: body(context));
  }
}
