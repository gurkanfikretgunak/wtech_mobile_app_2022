



import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/signup_view/signup.viewmodel.dart';
import 'package:client/core/views/signup_view/signup.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';


class SignUpView extends StatelessWidget with SignUpWidgets {
  SignUpView({super.key});

  final _vm = GetIt.I.get<SignUpViewModel>();
  

  @override
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: body(context),
    );
  }
}