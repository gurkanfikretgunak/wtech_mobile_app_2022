import 'package:client/core/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../view_model_sample_two/sample_two.viewmodel.dart';
import 'applys.widgets.dart';

class ApplysView extends StatelessWidget with ApplysWidgets {
  ApplysView({super.key});

  final _vm = GetIt.I.get<SampleViewModelTwo>();

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
