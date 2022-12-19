import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/button/button_libary.dart';
import 'package:client/core/views/common/widgets/custom_divider.dart';
import 'package:client/core/views/signin_view/signin_widgets.dart';
import 'package:client/core/views/signin_view/widgets/logo_widget.dart';
import 'package:client/core/views/signin_view/widgets/signin_bottom_description_widget.dart';
import 'package:client/core/views/signin_view/widgets/signup_for_not_remember_widget.dart';
import 'package:flutter/material.dart';
import '../../enums/routes.enum.dart';
import '../../routes/custom_navigator.dart';

class SignInEmailView extends StatefulWidget {
  const SignInEmailView({super.key});

  @override
  State<SignInEmailView> createState() => _MainScreenState();
}

class _MainScreenState extends State<SignInEmailView> with SignInWidget {
  bool light = true;
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.paddingMedium,
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 30,
          children: [
            Padding(
              padding: context.onlyTopPaddingHigh,
              child: const Logo(),
            ),
            emailTextField(context, emailTextController),
            passwordTextField(context, passwordTextController),
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
                    onPressed: () {},
                    child: Text(
                      L10n.of(context)!.forgotPassword,
                    ))
              ],
            ),
            SizedBox(
              width: context.dynamicWidth(1),
              height: context.dynamicHeight(0.065),
              child: CustomElevatedButton(
                onPressed: () {
                  CustomNavigator.goToScreen(context, Routes.home.name);
                },
                text: L10n.of(context)!.signIn,
                fontSize: 17,
              ),
            ),
            const CustomDivider(endIndent: 0),
            const SignUpForNotRemember(),
            const SignInBottomDescription(),
          ],
        ),
      ),
    );
  }
}
