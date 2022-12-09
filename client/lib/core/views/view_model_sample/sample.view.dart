import 'package:client/core/views/view_model_sample/sample.viewmodel.dart';
import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';

class SampleView extends StatelessWidget {
  SampleView({super.key});

  final _vm = GetIt.I.get<SampleViewModel>();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
