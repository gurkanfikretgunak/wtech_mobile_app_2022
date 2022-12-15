import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:flutter/material.dart';

// Icon size 36 temadan almaya çalışalım
class BaseBottomSheetHeader extends StatelessWidget {
  const BaseBottomSheetHeader({
    Key? key,
  }) : super(key: key);

  final double _gripHeight = 50.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _gripHeight,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: context.paddingOnlyTop * 1.5,
            child: Divider(
              color: ColorConstant.instance.grey,
              thickness: 3,
              indent: MediaQuery.of(context).size.width * 0.30,
              endIndent: MediaQuery.of(context).size.width * 0.30,
            ),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * 0.01,
            top: 0,
            child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.02),
                  child: Icon(
                    Icons.close,
                    color: ColorConstant.instance.grey,
                    size: 36,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
