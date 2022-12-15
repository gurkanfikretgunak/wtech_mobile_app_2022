import 'package:client/core/constants/color_constans.dart';
import 'package:flutter/material.dart';

import '../../../extensions/extension.dart';

class CustomAppBar extends PreferredSize {
  const CustomAppBar({super.key, required super.child, required super.preferredSize});

  static PreferredSize customAppBar({
    required BuildContext context,
    required String titleText,
    required bool isBackIcon,
    bool? isCheck,
    TextButton? appButton,
  }) {
    return PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          leading: isBackIcon ? const BackButton() : null,
          title: Padding(
            padding: const EdgeInsets.only(top: 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titleText,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontSize: 20, fontWeight: FontWeight.normal)),
                Text("Gürkan Fikret Günak",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontSize: 20))
              ],
            ),
          ),
          actions: [

            isCheck!
                ? Padding(
                    padding: context.paddingOnlyTop,
                    child: Container(
                        height: 40,
                        width: 85,
                        decoration: BoxDecoration(
                            color: ColorConstant.instance.yellow, borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("W-27",
                                style: Theme.of(context).textTheme.subtitle1?.copyWith(fontWeight: FontWeight.bold)),
                            const CircleAvatar(maxRadius: 18),
                          ],
                        )),
                  )
                : appButton ?? const SizedBox()

            Padding(
              padding: context.onlyTopPaddingNormal,
              child: Container(
                  height: 40,
                  width: 85,
                  decoration: BoxDecoration(
                      color: ColorConstant.instance.yellow,
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("W-27",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(fontWeight: FontWeight.bold)),
                      const CircleAvatar(maxRadius: 18),
                    ],
                  )),
            )

          ],
        ));
  }
}
