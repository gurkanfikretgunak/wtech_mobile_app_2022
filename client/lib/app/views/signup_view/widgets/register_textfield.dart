import 'package:client/app/l10n/app_l10n.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/app/views/authentication/authentication.viewmodel.dart';
import 'package:client/app/views/common/widgets/text/custom_text_library.dart';
import 'package:client/app/views/signin_view/signin_widgets.dart';
import 'package:client/app/views/signup_view/signup.widgets.dart';
import 'package:client/app/views/signup_view/signup_constants/label_constants.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class RegisterTextfields extends StatelessWidget {
  const RegisterTextfields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = GetIt.I.get<AuthenticationViewModel>();

    return StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return Padding(
            padding: context.horizontalPaddingMedium,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: context.onlyTopPaddingMedium,
                  child: SignUpWidgets().nameTextField(context),
                ),
                Padding(
                  padding: context.onlyTopPaddingNormal,
                  child: SignInWidget().emailTextField(
                      context, SignUpConstants.emailController!),
                ),
                Padding(
                  padding: context.onlyTopPaddingNormal,
                  child: SignInWidget().passwordTextField(
                      context, SignUpConstants.passwordController!),
                ),
                Padding(
                  padding: context.onlyTopPaddingNormal,
                  child: SignUpWidgets().phoneTextField(context),
                ),
                Padding(
                  padding: context.onlyTopPaddingNormal,
                  child: CustomTextFormField(
                      prefixIcon: const Icon(Icons.mail_outline),
                      labelText: L10n.of(context)!.tcNumber,
                      controller: SignUpConstants.tcController,
                      onChanged: (text) {
                        vm.changeEmail(text!);
                      },
                      errorText: snapshot.error?.toString()),
                ),
              ],
            ),
          );
        });
  }
}
