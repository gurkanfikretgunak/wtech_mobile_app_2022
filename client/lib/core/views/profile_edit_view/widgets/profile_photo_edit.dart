import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/button/button_libary.dart';
import 'package:flutter/material.dart';

class CustomPhotoEdit extends StatelessWidget {
  const CustomPhotoEdit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
      CircleAvatar(minRadius: 40,maxRadius: 55,),
      CustomIconButton(onPressed: (){}, icon: Icons.camera_alt_rounded,color: ColorConstant.instance.grey,)
    ]);
  }
}
