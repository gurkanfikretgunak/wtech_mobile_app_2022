import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/common/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

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
            padding: context.onlyTopPaddingNormal,
            child: CustomDivider(
              endIndent: MediaQuery.of(context).size.width * 0.30,
              color: ColorConstant.instance.grey,
              indent: MediaQuery.of(context).size.width * 0.30,
              thickness: 3,
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
                  padding: context.onlyRightPaddingNormal,
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
