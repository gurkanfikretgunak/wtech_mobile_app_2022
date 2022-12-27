import 'package:client/app/views/profile_edit_view/profile_edit.viewmodel.dart';
import 'package:client/app/views/profile_edit_view/profile_edit.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ProfileEditView extends StatelessWidget with ProfileEditWidgets {
  ProfileEditView({super.key});
  final _vm = GetIt.I.get<ProfileEditViewModel>();
  @override
  Widget build(BuildContext context) {
    return _vm.baseScaffold(context,
        appbar: appBar(context), body: body(context));
  }
}
