import 'package:client/core/views/mentors_view/mentors.viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'mentors.widgets.dart';

class MentorsView extends StatelessWidget with MentorsWidgets {
  MentorsView({Key? key}) : super(key: key);
  final _vm = GetIt.I.get<MentorsViewModel>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Will be change with common appbar
      appBar: AppBar(title: appBarTitle(context)),

      drawer: const Drawer(child: Text("data")),
      body: body(context),
    );
  }
}
