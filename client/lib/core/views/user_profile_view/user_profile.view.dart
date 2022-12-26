import 'package:client/core/views/user_profile_view/user_profile.viewmodel.dart';
import 'package:client/core/views/user_profile_view/user_profile.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
class UserProfileView extends StatelessWidget with UserProfileWidgets {
  
  UserProfileView({super.key});
  final _vm = GetIt.I.get<UserProfileViewModel>();
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
      appBar: CustomAppbar(
        titleText: L10n.of(context)!.profile,
        isName: false,
        isCheck: false,
      ),
      body: Wrap(children: [
        Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Stack(children: [
            Padding(
              padding: context.onlyTopPaddingHigh,
              child: Container(
                  height: context.dynamicHeight(0.75),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).selectedRowColor,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60)),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      userNameText(context),
                      const CustomText("gurkan@gmail.com"),
                      context.emptySizedHeightBoxHigh,
                      context.emptySizedHeightBoxNormal,
                      listViewBuildProfilItem(context),
                    ],
                  )),
            ),
            profileAvatar(context)
          ]),
        ]),
      ]),
    );
=======
    return _vm.baseScaffold( context ,appbar: appbar(context), body: body(context));
>>>>>>> 997b4d9189507f32e8c4bbb1d790e81e83050bcf
  }
}
