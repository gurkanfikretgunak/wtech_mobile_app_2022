import 'package:client/core/views/user_profile_view/user_profile.viewmodel.dart';
import 'package:client/core/views/user_profile_view/user_profile.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class UserProfileView extends StatelessWidget with UserProfileWidgets {
  UserProfileView({super.key});
  final _vm = GetIt.I.get<UserProfileViewModel>();
  @override
  Widget build(BuildContext context) {
    return _vm.baseScaffold(context, appbar: appbar(context), body: body(context));
  }
}
