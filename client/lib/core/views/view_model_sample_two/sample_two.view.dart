import 'package:client/core/views/view_model_sample_two/sample_two.viewmodel.dart';
import 'package:client/core/views/view_model_sample_two/sample_two.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class SampleViewTwo extends StatelessWidget with SampleTwoWidget {
  SampleViewTwo({super.key});

  final _vm = GetIt.I.get<SampleViewModelTwo>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: _vm.loading,
        builder: (context, snapshot) {
          return form(context, _scaffoldKey);
        });
  }
}
