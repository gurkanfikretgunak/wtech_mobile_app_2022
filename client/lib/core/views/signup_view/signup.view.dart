import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/signup_view/signup.viewmodel.dart';
import 'package:client/core/views/signup_view/signup.widgets.dart';
import 'package:client/core/views/signup_view/signup_constants/label_constants.dart';
import 'package:client/core/views/signup_view/widgets/agreement_text.dart';
import 'package:client/core/views/signup_view/widgets/signup_button.dart';
import 'package:client/core/views/signup_view/widgets/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../constants/color_constans.dart';

class SignUpView extends StatelessWidget with SignUpWidgets {
  SignUpView({super.key});

  final _vm = GetIt.I.get<SignUpViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const PictureWidget(),
          Text(L10n.of(context)!.signUp,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: ColorConstant.instance.grey)),
          Column(
            children: [
              userInfoTextfield(context, SignUpConstants().signUpLabels(context)),
              userProfileWidget(context, SignUpConstants().profileController!)
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 8)),
          const SignUpButton(),
          const AgreementTextWidget()
        ],
      ),
    ));
  }
}
