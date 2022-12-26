<<<<<<< HEAD
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/utils/themes/custom_theme.dart';
import 'package:client/core/views/signin_view/widgets/logo_widget.dart';
=======
import 'package:client/core/views/signup_view/signup.viewmodel.dart';
>>>>>>> 997b4d9189507f32e8c4bbb1d790e81e83050bcf
import 'package:client/core/views/signup_view/signup.widgets.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD

class SignUpView extends StatelessWidget with SignUpWidgets {
  SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomTheme.customLightTheme(context).scaffoldBackgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: context.onlyTopPaddingHigh,
              child: const Logo(),
            ),
            userInfoTextfield(context, SignUpConstants().signUpLabels(context)),
            userProfileWidget(context, SignUpConstants().profileController!),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${L10n.of(context)!.alreadyHave} ",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: ColorConstant.instance.grey)),
                InkWell(
                    child: Text(
                  L10n.of(context)!.signIn,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: ColorConstant.instance.blue),
                ))
              ],
            ),
            const SignUpButton(),
            const AgreementTextWidget()
          ],
        ));
=======
import 'package:get_it/get_it.dart';
class SignUpView extends StatelessWidget with SignUpWidgets {
  SignUpView({super.key});
  final _vm = GetIt.I.get<SignUpViewModel>();
  @override
  Widget build(BuildContext context) {
    return _vm.baseScaffold(context,body: body(context));
>>>>>>> 997b4d9189507f32e8c4bbb1d790e81e83050bcf
  }
}
