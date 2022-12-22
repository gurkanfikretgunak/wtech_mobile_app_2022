import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/signup_view/signup.viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ProfilePopUpButton extends StatelessWidget {
  ProfilePopUpButton({
    Key? key,
    required this.profileController,
  }) : super(key: key);

  TextEditingController? profileController;
  final _vm = GetIt.I.get<SignUpViewModel>();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _vm.controller,
      builder: (context, snapshot) {
        return PopupMenuButton(
          onSelected: (value) {
            _vm.changeValue(value, context, profileController);
          },
          initialValue: "profil(seçiniz)",
          itemBuilder: (context) => [
            PopupMenuItem(
              value: L10n.of(context)!.student,
              child: Text(L10n.of(context)!.student),
            ),
            PopupMenuItem(
              value: L10n.of(context)!.teacher,
              child: Text(L10n.of(context)!.teacher),
            ),
            PopupMenuItem(
              value: L10n.of(context)!.mentor,
              child: Text(L10n.of(context)!.mentor),
            )
          ],
          iconSize: 15,
        );
      },
    );
  }
}
