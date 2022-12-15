import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  final String? titleText;
  final bool? isCheck;
  final TextButton? appButton;
  const CustomAppbar({Key? key, this.isCheck = false, this.appButton, this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: context.onlyTopPaddingLow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(titleText ?? "",
                style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 20, fontWeight: FontWeight.normal)),
            isCheck!
                ? Text("Gürkan Fikret Günak", style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 20))
                : const SizedBox()
          ],
        ),
      ),
      actions: [
        isCheck!
            ? Padding(
                padding: context.onlyTopPaddingNormal,
                child: Container(
                    height: 40,
                    width: 85,
                    decoration:
                        BoxDecoration(color: ColorConstant.instance.yellow, borderRadius: BorderRadius.circular(50)),
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
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70.0);
}
