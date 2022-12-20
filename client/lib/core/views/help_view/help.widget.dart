// ignore_for_file: dead_code

import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:client/core/views/help_view/help.viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../constants/color_constans.dart';
import '../common/widgets/custom_card.dart';

class HelpViewWidget {
  Widget helpExpansionCard(BuildContext context, String expansionText) {
    // ignore: no_leading_underscores_for_local_identifiers
    bool _customTileExpanded = false;
    final vm = GetIt.I.get<HelpViewModel>();
    return CustomCard(
      color: ColorConstant.instance.shinyWhite,
      elevation: 1.5,
      child: StreamBuilder(
          stream: vm.expansion,
          builder: (context, snapshot) {
            return ExpansionTile(
              maintainState: snapshot.data ?? false,
              title: CustomText(
                expansionText,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              trailing: Icon(
                _customTileExpanded ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down,
              ),
              children: const <Widget>[
                ListTile(title: Text('This is tile number 2')),
              ],
              onExpansionChanged: (bool expanded) {
                vm.changeExpansion();
              },
            );
          }),
    );
  }
}
