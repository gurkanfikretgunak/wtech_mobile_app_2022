
import 'dart:html';

import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/signup_view/signup.view.dart';
import 'package:client/core/views/signup_view/signup.viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:path/path.dart';

import '../../constants/color_constans.dart';
import '../../extensions/extension.dart';
import '../forgot_password_view/widgets/unique_widgets.dart';

class SignUpWidgets {
  Widget body(BuildContext context){
    final List<String> signUpLabels = [
    L10n.of(context)!.nameSurnamee,
    L10n.of(context)!.email,
    L10n.of(context)!.password,
    L10n.of(context)!.phoneNumber,
    L10n.of(context)!.tcNumber,
  ];
   TextEditingController? nameSurnameController = TextEditingController();
   TextEditingController? emailController = TextEditingController();
   TextEditingController? passwordController = TextEditingController();
   TextEditingController? phoneController = TextEditingController();
   TextEditingController? tcController = TextEditingController();
   TextEditingController? profileController = TextEditingController();

   List<TextEditingController> controllerList = [
    nameSurnameController,emailController,passwordController,phoneController,tcController
   ];
   final _vm = GetIt.I.get<SignUpViewModel>();

    return StreamBuilder(
      stream: _vm.loading,
      builder: (context, snapshot) {
        return Center(
          child: Column(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset('images/logo.svg',height: 30),
                Text(L10n.of(context)!.signUp,style:TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: ColorConstant.instance.grey)),
                
                Column(
                  children: [
                    SizedBox(
                        height: 185,
                        width: 250,
                        child: ListView.builder(
                          itemCount: signUpLabels.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(top:6.0),
                              child: SizedBox(
                                height: 30,
                                child: ForgotTextField(labelText:signUpLabels[index],labelStyle: TextStyle(fontSize:12,color: ColorConstant.instance.grey),tfcontroller: controllerList[index]),),
                            );
                        },)
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          height: 30,
                          width: 250,
                          child: TextFormField(
                            decoration: InputDecoration(labelText: L10n.of(context)!.userProfile,labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: ColorConstant.instance.grey),suffix:   PopupMenuButton(
                          onSelected: (value) => _vm.changeValue(value),
                          itemBuilder: (context) =>  [
                            PopupMenuItem(value: L10n.of(context)!.student,child: Text(L10n.of(context)!.student),),
                            PopupMenuItem(value: L10n.of(context)!.teacher,child: Text(L10n.of(context)!.teacher),),
                            PopupMenuItem(value: L10n.of(context)!.mentor,child: Text(L10n.of(context)!.mentor),)
                          ],
                          iconSize: 15,
                            ),
                          )
                      
                          ),
                        )
                  ],
                ),
                  const Padding(padding:EdgeInsets.only(top: 8)),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: ColorConstant.instance.blue,borderRadius: BorderRadius.circular(4)),
                        height: 25,
                        width: 250,
                        child: Text(L10n.of(context)!.signUp,style: TextStyle(color: ColorConstant.instance.white,fontSize: 12,fontWeight: FontWeight.w400),),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(L10n.of(context)!.withSignUp,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: ColorConstant.instance.grey),),
                            InkWell(child: Text(L10n.of(context)!.withuserAgree,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: ColorConstant.instance.blue))),
                            Text(L10n.of(context)!.and,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: ColorConstant.instance.grey)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          InkWell(child: Text(L10n.of(context)!.clarificationText,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: ColorConstant.instance.blue))),
                          Text(L10n.of(context)!.youAgree,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: ColorConstant.instance.grey))
                        ],),
                        const Padding(padding: EdgeInsets.symmetric(vertical: 4)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text(L10n.of(context)!.alreadyHave,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: ColorConstant.instance.grey)),
                          InkWell(child: Text( L10n.of(context)!.signIn,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: ColorConstant.instance.blue),))
                        ],)
                      ],
                    )
                    // RichText(text: TextSpan( text:L10n.of(context)!.loginBottomDescription), )


    
    
              ],
            ),
        );
      }
    );
    
  }
}