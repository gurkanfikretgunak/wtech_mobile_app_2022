import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/common/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

import 'about.widgets.dart';

class AboutView extends StatelessWidget with AboutWidgets {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        titleText: L10n.of(context)!.aboutUs,
        isCheck: false,
        isName: false,
      ),
      body: Column(children: [
        Expanded(flex: 4, child: titleImage(context)),
        Expanded(flex: 2, child: descriptionText(context)),
        const CustomDivider(),
        Expanded(flex: 3, child: aboutCategoryListView(context)),
        const CustomDivider(),
        Expanded(child: Center(child: titleText(context))),
        Expanded(flex: 3, child: introduceCardList(context)),
        const Spacer(),
      ]),
    );
  }
}
