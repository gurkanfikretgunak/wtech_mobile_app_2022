import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/home_view/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import '../common/widgets/custom_appbar.dart';
import 'help.widget.dart';

class HelpView extends StatelessWidget with HelpViewWidget {
  const HelpView({super.key, required this.expansionText, required this.appbarText, required this.expansionTextTwo});
  final String expansionText;
  final String expansionTextTwo;
  final String appbarText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(titleText: appbarText, isCheck: false, isName: false),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: context.onlyLRTpaddingNormal,
        child: Wrap(
          children: [
            Column(
              children: [helpExpansionCard(context, expansionText), helpExpansionCard(context, expansionTextTwo)],
            ),
          ],
        ),
      ),
    );
  }
}
