import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/authentication/authentication.viewmodel.dart';
import 'package:client/core/views/common/widgets/text/custom_textfield.dart';
import 'package:client/core/views/signin_view/widgets/logo_widget.dart';
import 'package:client/core/views/signup_view/signup_constants/label_constants.dart';
import 'package:client/core/views/signup_view/widgets/agreement_text.dart';
import 'package:client/core/views/signup_view/widgets/profile_choose_widget.dart';
import 'package:client/core/views/signup_view/widgets/register_textfield.dart';
import 'package:client/core/views/signup_view/widgets/signup_button.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
class SignUpWidgets {
  Widget userInfoTextfield(BuildContext context, List<String> labels) {
    return const RegisterTextfields();
  }

  Widget userProfileWidget(
      BuildContext context, TextEditingController controller) {
    TextEditingController? profileController = TextEditingController();
    return UserProfileChooseWidget(profileController: profileController);
  }

  Widget nameTextField(BuildContext context) {
    final vm = GetIt.I.get<AuthenticationViewModel>();

    return StreamBuilder<Object>(
        stream: vm.email,
        builder: (context, snapshot) {
          return CustomTextFormField(
              prefixIcon: const Icon(Icons.mail_outline),
              labelText: L10n.of(context)!.name,
              controller: SignUpConstants.nameSurnameController,
              onChanged: (text) {
                vm.changeName(text!);
              },
              errorText: snapshot.error?.toString());
        });
  }

  Widget phoneTextField(BuildContext context) {
    final vm = GetIt.I.get<AuthenticationViewModel>();

    return StreamBuilder<Object>(
        stream: vm.phone,
        builder: (context, snapshot) {
          return CustomTextFormField(
              prefixIcon: const Icon(Icons.mail_outline),
              labelText: L10n.of(context)!.phoneNumber,
              controller: SignUpConstants.phoneController,
              onChanged: (text) {
                vm.changePhone(text!);
              },
              errorText: snapshot.error?.toString());
        });
  }

  Widget idTextField(BuildContext context) {
    final vm = GetIt.I.get<AuthenticationViewModel>();

    return StreamBuilder<Object>(
        stream: vm.id,
        builder: (context, snapshot) {
          return Padding(
            padding: context.onlyTopPaddingNormal,
            child: CustomTextFormField(
                prefixIcon: const Icon(Icons.mail_outline),
                labelText: L10n.of(context)!.tcNumber,
                controller: SignUpConstants.tcController,
                onChanged: (text) {
                  vm.changeId(text!);
                },
                errorText: snapshot.error?.toString()),
          );
        });
  }

  Widget body(BuildContext context){
    return Column(
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
    );
  }
}
