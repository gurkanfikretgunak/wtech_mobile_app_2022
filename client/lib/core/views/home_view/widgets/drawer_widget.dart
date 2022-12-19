import 'package:client/core/extensions/extension.dart';
import 'package:flutter/material.dart';
import '../../../../gen/assets.gen.dart';
import '../../../constants/color_constans.dart';
import '../temporary_contants.dart/icon_constants.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorConstant.instance.white,
      child: Column(
        children: [
          Padding(
            padding: context.onlyTopPaddingHigh,
            child: CircleAvatar(
              maxRadius: 50,
              child: ClipOval(child: Image.asset(Assets.images.logos.path)),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: context.onlyTopPaddingMedium,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: IconConstant.drawerIcon.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: context.dynamicHeight(0.06),
                        child: ListTile(
                            title: Text(IconConstant.drawerNames(context)[index],
                                style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 18)),
                            leading: Icon(
                              IconConstant.drawerIcon[index],
                              color: ColorConstant.instance.blue,
                            )),
                      ),
                      const Divider(thickness: 1)
                    ],
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: context.onlyBottomPaddingNormal,
            child: Text(
              "by Teknolojide Kadın Derneği",
              style: Theme.of(context).textTheme.subtitle1?.copyWith(color: ColorConstant.instance.blue, fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}
