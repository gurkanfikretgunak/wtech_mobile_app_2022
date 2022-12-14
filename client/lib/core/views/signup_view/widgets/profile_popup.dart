

import 'package:flutter/material.dart';

import '../../../l10n/app_l10n.dart';

class ProfilePopUpButton extends StatelessWidget {
  const ProfilePopUpButton({
    Key? key,
    required this.profileController,
  }) : super(key: key);

  final TextEditingController? profileController;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
    onSelected: (value) {
      if( value == L10n.of(context)!.student){
        profileController?.text = L10n.of(context)!.student;
      }else if (value == L10n.of(context)!.teacher){
        profileController?.text = L10n.of(context)!.teacher;
      }else if (value == L10n.of(context)!.mentor){
        profileController?.text = L10n.of(context)!.mentor;
      }
    } ,
    initialValue: "profil(seçiniz)" ,
    itemBuilder: (context) =>  [
      PopupMenuItem(value: L10n.of(context)!.student,child: Text(L10n.of(context)!.student),),
      PopupMenuItem(value: L10n.of(context)!.teacher,child: Text(L10n.of(context)!.teacher),),
      PopupMenuItem(value: L10n.of(context)!.mentor,child: Text(L10n.of(context)!.mentor),)
    ],
    iconSize: 15,
      );
  }
}