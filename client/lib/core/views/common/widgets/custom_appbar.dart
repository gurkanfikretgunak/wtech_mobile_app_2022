import 'package:client/core/extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import '../../../../gen/assets.gen.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  final String? titleText;
  final bool? isCheck;
  final bool? isName;
  final TextButton? appButton;
<<<<<<< HEAD
  const CustomAppbar({Key? key, this.isCheck = false, this.appButton, this.titleText, this.isName}) : super(key: key);
=======
  const CustomAppbar({
    Key? key,
    this.isCheck = false,
    this.appButton,
    this.titleText,
  }) : super(key: key);
>>>>>>> 25774bbab5fd3c504dd86546f4d9c38d2c14f98d

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:
          isCheck! ? customMenuBuilder() : Padding(padding: context.onlyTopPaddingNormal, child: const BackButton()),
      title: Padding(
<<<<<<< HEAD
          padding: context.onlyTopPaddingLow,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text.rich(TextSpan(
                text: titleText ?? "",
                style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 18, fontWeight: FontWeight.normal),
                children: <TextSpan>[
                  TextSpan(
                      text: isName! ? ", Gürkan" : "",
                      style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 18))
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
                            Logger().d("Logger!");
                          },
                          child: Padding(
                            padding: context.onlyRightPaddingNormal,
                            child: CircleAvatar(maxRadius: 18, child: Image.asset(Assets.images.profile.path)),
                          ))),
                ],
=======
        padding: context.onlyTopPaddingLow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(titleText ?? "",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontSize: 20, fontWeight: FontWeight.normal)),
            isCheck!
                ? Text("Gürkan Fikret Günak",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontSize: 20))
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
>>>>>>> 25774bbab5fd3c504dd86546f4d9c38d2c14f98d
              )
            : const SizedBox()
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70.0);
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
