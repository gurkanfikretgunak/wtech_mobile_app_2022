import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/sample_view/bloc/sample_bloc.dart';
import 'package:client/core/views/signin_view/signin_widgets.dart';
import 'package:client/core/views/signin_view/widgets/logo_widget.dart';
import 'package:client/core/views/signin_view/widgets/signin_bottom_description_widget.dart';
import 'package:client/core/views/signin_view/widgets/signin_account_divider_widget.dart';
import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

import '../common/widgets/custom_button.dart';
import '../common/widgets/custom_divider.dart';

class SignInAccountView extends StatefulWidget {
  const SignInAccountView({super.key});

  @override
  State<SignInAccountView> createState() => _MainScreenState();
}

class _MainScreenState extends State<SignInAccountView> with SignInWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MainBloc>(
      builder: (context, bloc, _) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: context.horizontalPaddingNormal,
              child: Wrap(
                alignment: WrapAlignment.center,
                runSpacing: 60,
                children: [
                  const Logo(),
                  signInAccountButton(context),
                  const CustomSignInAccountDivider(),
                  SizedBox(
                    width: context.dynamicWidth(1),
                    height: context.dynamicHeight(0.04),
                    child: CustomElevatedButton(
                        onPressed: () {}, text: L10n.of(context)!.signInEmail),
                  ),
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
