import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../utils/constants/enums/routes.enum.dart';
import '../../../routes/custom_navigator.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  final String? titleText;
  final bool? isCheck;
  final bool? isName;
  final TextButton? appButton;
  const CustomAppbar({Key? key, this.isCheck = false, this.appButton, this.titleText, this.isName = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:
          isCheck! ? customMenuBuilder() : Padding(padding: context.onlyTopPaddingNormal, child: const BackButton()),
      title: Padding(
          padding: context.onlyTopPaddingLow,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text.rich(TextSpan(
                text: titleText ?? "",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontSize: 18, fontWeight: FontWeight.normal, color: Theme.of(context).backgroundColor),
                children: <TextSpan>[
                  TextSpan(
                      text: isName! ? ", Uncle Bob" : "",
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(fontSize: 18, color: Theme.of(context).backgroundColor))
                ])),
          ])),
      actions: [
        isCheck!
            ? Row(
                children: [
                  Padding(
                    padding: context.onlyTopPaddingNormal,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_none_outlined,
                        )),
                  ),
                  Padding(
                      padding: context.onlyTopPaddingNormal,
                      child: GestureDetector(
                          onTap: () {
                            CustomNavigator.goToScreen(context, Routes.userProfile.name);
                          },
                          child: Padding(
                            padding: context.onlyRightPaddingNormal,
                            child: CircleAvatar(
                              maxRadius: 18,
                              child: Image.asset(
                                Assets.images.png.profile.path,
                              ),
                            ),
                          ))),
                ],
              )
            : const SizedBox()
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}

Builder customMenuBuilder() {
  return Builder(builder: (BuildContext context) {
    return Padding(
        padding: context.onlyTopPaddingNormal,
        child: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            }));
  });
}
