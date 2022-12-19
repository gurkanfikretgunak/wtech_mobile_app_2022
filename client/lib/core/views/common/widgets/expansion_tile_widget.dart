import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:client/core/views/home_view/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import '../../../l10n/app_l10n.dart';
import 'custom_appbar.dart';
import 'custom_card.dart';

class HelpView extends StatefulWidget {
  HelpView({super.key, required this.expansionText});
  final String expansionText;

  @override
  State<HelpView> createState() => _HelpViewState();
}

class _HelpViewState extends State<HelpView> {
  @override
  Widget build(BuildContext context) {
    bool _customTileExpanded = false;
    return StreamBuilder(
        stream: null,
        builder: (context, snapshot) {
          return Scaffold(
            appBar: CustomAppbar(titleText: L10n.of(context)!.help, isCheck: false, isName: false),
            drawer: const DrawerWidget(),
            body: Padding(
              padding: context.onlyLRTpaddingNormal,
              child: Wrap(
                children: [
                  Column(
                    children: [
                      CustomCard(
                        color: ColorConstant.instance.shinyWhite,
                        elevation: 1.5,
                        child: ExpansionTile(
                          title: CustomText(
                            widget.expansionText,
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
                            setState(() => _customTileExpanded = expanded);
                          },
                        ),
                      ),
                      CustomCard(
                        color: ColorConstant.instance.shinyWhite,
                        elevation: 1.5,
                        child: ExpansionTile(
                          title: const CustomText(
                            'Kullanıcı Sözleşmesi',
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
                            setState(() => _customTileExpanded = expanded);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
