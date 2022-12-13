
import 'package:client/core/views/forgot_password_view/forgotpass.widgets.dart';
import 'package:client/core/views/forgot_password_view/fotgotpass.viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';


class ForgotPasswordView extends StatelessWidget with ForgotPasswordWidgets {
   ForgotPasswordView({super.key});
  
  final _vm = GetIt.I.get<ForgotPasswordViewModel>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(context),
    );
  }
}