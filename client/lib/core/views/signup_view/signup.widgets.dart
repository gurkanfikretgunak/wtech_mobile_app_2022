import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/signup_view/signup_constants/label_constants.dart';
import 'package:client/core/views/signup_view/widgets/profile_choose_widget.dart';
import 'package:client/core/views/signup_view/widgets/register_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../l10n/app_l10n.dart';
import '../authentication/authentication.viewmodel.dart';
import '../common/widgets/text/custom_textfield.dart';

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
    final _vm = GetIt.I.get<AuthenticationViewModel>();

    return StreamBuilder<Object>(
        stream: _vm.email,
        builder: (context, snapshot) {
          return CustomTextFormField(
              prefixIcon: Icons.mail_outline,
              labelText: L10n.of(context)!.name,
              controller: SignUpConstants.nameSurnameController,
              onChanged: (text) {
                _vm.changeName(text!);
              },
              errorText: snapshot.error?.toString());
        });
  }

  Widget phoneTextField(BuildContext context) {
    final _vm = GetIt.I.get<AuthenticationViewModel>();

    return StreamBuilder<Object>(
        stream: _vm.phone,
        builder: (context, snapshot) {
          return CustomTextFormField(
              prefixIcon: Icons.mail_outline,
              labelText: L10n.of(context)!.phoneNumber,
              controller: SignUpConstants.phoneController,
              onChanged: (text) {
                _vm.changePhone(text!);
              },
              errorText: snapshot.error?.toString());
        });
  }

  Widget idTextField(BuildContext context) {
    final _vm = GetIt.I.get<AuthenticationViewModel>();

    return StreamBuilder<Object>(
        stream: _vm.id,
        builder: (context, snapshot) {
          return Padding(
            padding: context.onlyTopPaddingNormal,
            child: CustomTextFormField(
                prefixIcon: Icons.mail_outline,
                labelText: L10n.of(context)!.tcNumber,
                controller: SignUpConstants.tcController,
                onChanged: (text) {
                  _vm.changeId(text!);
                },
                errorText: snapshot.error?.toString()),
          );
        });
  }
}
