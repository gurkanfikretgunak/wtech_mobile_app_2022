
import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_button.dart';
import 'package:client/core/views/common/widgets/custom_textfield.dart';
import 'package:client/core/views/forgot_password_view/widgets/unique_widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class ForgotPasswordWidgets {
  TextEditingController? forgotPasswordContorller = TextEditingController();
  Widget body(BuildContext context){
    
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('images/logo.svg',height: 50),
              Padding(padding: EdgeInsets.only(top: 50)),
              Text(L10n.of(context)!.forgotPassword,style:  TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: ColorConstant.instance.grey),),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(L10n.of(context)!.forgotPasswordDescription,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: ColorConstant.instance.grey),),
              Padding(padding: EdgeInsets.only(top: 20)),
              TextButton(child: Text(L10n.of(context)!.backLogin,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: ColorConstant.instance.blue),),onPressed: () {},),
              Padding(padding: EdgeInsets.only(top: 20)),
            
              ForgotTextField(labelText: L10n.of(context)!.emailOrPhone,prefixIcon: Icons.mail_outline,tfcontroller:forgotPasswordContorller!),
              Padding(padding: EdgeInsets.only(top: 30)),
          CustomElevatedButton(onPressed: (){}, text: L10n.of(context)!.resetPassword)
        ],
      ),
    );
  }
}