import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/mentors_view/mentors.viewmodel.dart';
import 'package:client/core/views/mentors_view/mentors.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class MentorsView extends StatelessWidget with MentorsWidgets {
  MentorsView({Key? key}) : super(key: key);
  final _vm = GetIt.I.get<MentorsViewModel>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Will be change with common appbar
      appBar: CustomAppbar(
        titleText: L10n.of(context)!.mentorAppBarTitle,
        isName: false,
        isCheck: false,
      ),

      drawer: const Drawer(child: Text("data")),
      body: body(context),
    );
  }
}
