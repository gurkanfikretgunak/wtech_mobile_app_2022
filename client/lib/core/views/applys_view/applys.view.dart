import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:flutter/material.dart';

import 'applys.widgets.dart';

class ApplysView extends StatelessWidget with ApplysWidgets {
  ApplysView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.paddingNormal,
        child: DefaultTabController(
          length: applysTabbarItems(context).length,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: applysTabbar(context),
              ),
              Expanded(
                flex: 15,
                child: applysCards(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
