import 'package:client/app/routes/custom_navigator.dart';
import 'package:client/core/utils/constants/enums/routes.enum.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/app/l10n/app_l10n.dart';
import 'package:client/app/views/common/widgets/button/custom_button_libary.dart';
import 'package:client/app/views/signin_view/signin_widgets.dart';
import 'package:client/app/views/signin_view/widgets/logo_widget.dart';
import 'package:client/app/views/signin_view/widgets/signin_account_divider_widget.dart';
import 'package:client/app/views/signin_view/widgets/signin_bottom_description_widget.dart';
import 'package:flutter/material.dart';

class SignInAccountView extends StatefulWidget {
  const SignInAccountView({super.key});

  @override
  State<SignInAccountView> createState() => _MainScreenState();
}

class _MainScreenState extends State<SignInAccountView> with SignInWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.paddingMedium,
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 48,
          children: [
            Padding(
              padding: context.onlyTopPaddingHigh,
              child: const Logo(),
            ),
            signInAccountButton(context),
            const CustomSignInAccountDivider(),
            CustomElevatedButton(
              onPressed: () {
                CustomNavigator.goToScreen(
                    context, Routes.signinWithEmail.name);
              },
              text: L10n.of(context)!.signInEmail,
            ),
            const SignInBottomDescription(),
          ],
        ),
      ),
    );
  }
}
