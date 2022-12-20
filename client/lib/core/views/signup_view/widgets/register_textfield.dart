import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/common/widgets/text/text_library.dart';
import 'package:client/core/views/signin_view/signin_widgets.dart';
import 'package:client/core/views/signup_view/signup.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
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
                        _vm.changeEmail(text!);
                      },
                      errorText: snapshot.error?.toString()),
                ),
              ],
            ),
          );
        });
  }
}
