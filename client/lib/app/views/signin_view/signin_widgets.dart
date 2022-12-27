import 'package:client/app/l10n/app_l10n.dart';
import 'package:client/app/views/authentication/authentication.viewmodel.dart';
import 'package:client/app/views/common/widgets/text/custom_textfield.dart';
import 'package:client/app/views/signin_view/widgets/sigin_account_button_widget.dart';
import 'package:client/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';

class SignInWidget {
  Widget form(BuildContext context) {
    return Container();
  }

  Widget emailTextField(
      BuildContext context, TextEditingController emailTextController) {
    final _vm = GetIt.I.get<AuthenticationViewModel>();

    return StreamBuilder<Object>(
        stream: _vm.email,
        builder: (context, snapshot) {
          return CustomTextFormField(
              prefixIcon: const Icon(Icons.mail_outline),
              labelText: L10n.of(context)!.email,
              controller: emailTextController,
              onChanged: (text) {
                _vm.changeEmail(text!);
              },
              errorText: snapshot.error?.toString());
        });
  }

  Widget passwordTextField(
      BuildContext context, TextEditingController passwordTextController) {
    final _vm = GetIt.I.get<AuthenticationViewModel>();

    return StreamBuilder<Object>(
        stream: _vm.password,
        builder: (context, snapshot) {
          return CustomTextFormField(
            prefixIcon: const Icon(Icons.lock_outline),
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
          icon: Assets.images.google,
          text: L10n.of(context)!.signinWith,
          socialText: "",
        ),
        SignInAccountButton(
          icon: Assets.images.facebook,
          text: L10n.of(context)!.signinWith,
          socialText: "",
        ),
        SignInAccountButton(
          icon: Assets.images.apple,
          text: L10n.of(context)!.signinWith,
          socialText: "",
        ),
        SignInAccountButton(
          icon: Assets.images.github,
          text: L10n.of(context)!.signinWith,
          socialText: "",
        ),
      ],
    );
  }
}
