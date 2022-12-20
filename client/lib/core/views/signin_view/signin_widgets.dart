import 'package:client/core/views/signin_view/widgets/sigin_account_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../l10n/app_l10n.dart';
import '../authentication/authentication.viewmodel.dart';
import '../common/widgets/text/custom_textfield.dart';

class SignInWidget {
  Widget form(BuildContext context) {
    return Container();
  }

  Widget emailTextField(BuildContext context, TextEditingController emailTextController) {
    final _vm = GetIt.I.get<AuthenticationViewModel>();

    return StreamBuilder<Object>(
        stream: _vm.email,
        builder: (context, snapshot) {
          return CustomTextFormField(
              prefixIcon: Icons.mail_outline,
              labelText: L10n.of(context)!.email,
              controller: emailTextController,
              onChanged: (text) {
                _vm.changeEmail(text!);
              },
              errorText: snapshot.error?.toString());
        });
  }

  Widget passwordTextField(BuildContext context, TextEditingController passwordTextController) {
    final _vm = GetIt.I.get<AuthenticationViewModel>();

    return StreamBuilder<Object>(
        stream: _vm.password,
        builder: (context, snapshot) {
          return CustomTextFormField(
            prefixIcon: Icons.lock_outline,
            labelText: L10n.of(context)!.password,
            isPassword: true,
            controller: passwordTextController,
            onChanged: (text) {
              _vm.changePassword(text!);
            },
            errorText: snapshot.error?.toString(),
          );
        });
  }

  Widget signInAccountButton(BuildContext context) {
    return Column(
      children: [
        SignInAccountButton(
          icon: "assets/images/google.svg",
          text: L10n.of(context)!.signinWith,
        ),
        SignInAccountButton(
          icon: "assets/images/facebook.svg",
          text: L10n.of(context)!.signinWith,
        ),
        SignInAccountButton(
          icon: "assets/images/apple.svg",
          text: L10n.of(context)!.signinWith,
        ),
        SignInAccountButton(
          icon: "assets/images/github.svg",
          text: L10n.of(context)!.signinWith,
        ),
      ],
    );
  }
}
