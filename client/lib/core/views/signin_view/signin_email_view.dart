import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/sample_view/bloc/sample_bloc.dart';
import 'package:client/core/views/signin_view/signin_widgets.dart';
import 'package:client/core/views/signin_view/widgets/logo_widget.dart';
import 'package:client/core/views/signin_view/widgets/signin_bottom_description_widget.dart';
import 'package:client/core/views/signin_view/widgets/signin_button_widget.dart';
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
            child: Column(
              children: [
                const Logo(),
                emailTextField(context),
                passwordTextField(context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 10)),
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
                SignInButton(text: L10n.of(context)!.signIn),
                Container(
                    margin: const EdgeInsets.only(left: 50.0, right: 50.0),
                    // ignore: prefer_const_constructors
                    child: Divider(color: Colors.black38)),
                const SignUpForNotRemember(),
                const SignInBottomDescription(),
              ],
            ),
          ),
        );
      },
    );
  }
}
