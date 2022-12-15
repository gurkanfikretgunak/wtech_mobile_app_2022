import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_button.dart';
import 'package:client/core/views/common/widgets/custom_divider.dart';
import 'package:client/core/views/sample_view/bloc/sample_bloc.dart';
import 'package:client/core/views/signin_view/signin_widgets.dart';
import 'package:client/core/views/signin_view/widgets/logo_widget.dart';
import 'package:client/core/views/signin_view/widgets/signin_bottom_description_widget.dart';
import 'package:client/core/views/signin_view/widgets/signup_for_not_remember_widget.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

class SignInEmailView extends StatefulWidget {
  const SignInEmailView({super.key});

  @override
  State<SignInEmailView> createState() => _MainScreenState();
}

class _MainScreenState extends State<SignInEmailView> with SignInWidget {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Consumer<MainBloc>(
      builder: (context, bloc, _) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: context.paddingNormal,
              child: Wrap(
                alignment: WrapAlignment.center,
                runSpacing: 30,
                children: [
                  const Logo(),
                  emailTextField(context),
                  passwordTextField(context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Switch(
                            value: light,
                            activeTrackColor: Colors.blue.shade200,
                            activeColor: Colors.blue,
                            onChanged: (bool value) {
                              setState(() {
                                light = value;
                              });
                            },
                          ),
                          Text(L10n.of(context)!.rememberMe),
                        ],
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 15)),
                        onPressed: () {},
                        child: Text(L10n.of(context)!.forgotPassword),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: context.dynamicWidth(1),
                    child: CustomElevatedButton(
                        onPressed: () {}, text: L10n.of(context)!.signIn),
                  ),
                  const CustomDivider(endIndent: 0),
                  const SignUpForNotRemember(),
                  const SignInBottomDescription(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
