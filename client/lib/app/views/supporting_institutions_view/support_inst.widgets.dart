import 'package:client/app/l10n/app_l10n.dart';
import 'package:client/app/views/common/widgets/custom_appbar.dart';
import 'package:client/app/views/supporting_institutions_view/widgets/custom_gridview.dart';
import 'package:flutter/material.dart';

class SupportInstutionsWidgets {
  Widget cardBuilder() {
    return const CustomGridView();
  }

  PreferredSizeWidget appBar(BuildContext context) {
    return CustomAppbar(
        titleText: L10n.of(context)!.countributingInstitutions,
        isCheck: false,
        isName: false);
  }

  Widget body(BuildContext context) {
    return SupportInstutionsWidgets().cardBuilder();
  }
}
