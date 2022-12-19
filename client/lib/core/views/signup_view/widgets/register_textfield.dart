import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/common/widgets/text/text_library.dart';
import 'package:client/core/views/signin_view/signin_widgets.dart';
import 'package:client/core/views/signup_view/signup.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../constants/color_constans.dart';
import '../../../l10n/app_l10n.dart';
import '../../authentication/authentication.viewmodel.dart';
import '../signup_constants/label_constants.dart';

class RegisterTextfields extends StatelessWidget {
  const RegisterTextfields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _vm = GetIt.I.get<AuthenticationViewModel>();

    return StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return SizedBox(
              height: context.dynamicHeight(0.36),
              width: context.dynamicWidth(0.8),
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: SizedBox(
                  height: context.dynamicHeight(0.06),
                  child: Column(
                    children: [
                      SignUpWidgets().nameTextField(context),
                      SignInWidget().emailTextField(context, SignUpConstants.emailController!),
                      SignInWidget().passwordTextField(context, SignUpConstants.passwordController!),
                      SignUpWidgets().phoneTextField(context),
                      CustomTextFormField(
                          prefixIcon: Icons.mail_outline,
                          labelText: L10n.of(context)!.tcNumber,
                          controller: SignUpConstants.tcController,
                          onChanged: (text) {
                            _vm.changeEmail(text!);
                          },
                          errorText: snapshot.error?.toString()),
                    ],
                  ),
                ),
              ));
        });
  }
}
