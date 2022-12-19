import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/common/widgets/custom_navbar.dart';
import 'package:client/core/views/supporting_institutions_view/support_inst.viewmodel.dart';
import 'package:client/core/views/supporting_institutions_view/support_inst.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class SupportInstutionsView extends StatelessWidget
    with SupportInstutionsWidgets {
  SupportInstutionsView({super.key});
  final _vm = GetIt.I.get<SupportInstutionsViewModel>;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
          titleText: L10n.of(context)!.countributingInstitutions,
          isCheck: false,
          isName: false),
      body: SupportInstutionsWidgets().cardBuilder(),
    );
  }
}
