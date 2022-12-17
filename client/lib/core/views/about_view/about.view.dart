import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/about_view/about.widgets.dart';
import 'package:client/core/views/about_view/widgets/about_item_list.dart';
import 'package:client/core/views/about_view/widgets/introduce_card.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class AboutView extends StatelessWidget with AboutWidgets {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(titleText: L10n.of(context)!.aboutUs),
      body: Column(children: [
        Expanded(flex: 3, child: titleImage(context)),
        Expanded(flex: 3, child: descriptionText(context)),
        Expanded(flex: 3, child: aboutCategoryListView(context)),
        Expanded(child: Center(child: titleText())),
        Expanded(flex: 3, child: introduceCardList(context)),
        const Spacer(),
      ]),
    );
  }
}
