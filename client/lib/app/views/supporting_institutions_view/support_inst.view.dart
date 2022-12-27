import 'package:client/app/views/supporting_institutions_view/support_inst.viewmodel.dart';
import 'package:client/app/views/supporting_institutions_view/support_inst.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class SupportInstutionsView extends StatelessWidget
    with SupportInstutionsWidgets {
  SupportInstutionsView({super.key});
  final _vm = GetIt.I.get<SupportInstutionsViewModel>();
  @override
  Widget build(BuildContext context) {
    return _vm.baseScaffold(context, appbar: appBar(context));
  }
}
