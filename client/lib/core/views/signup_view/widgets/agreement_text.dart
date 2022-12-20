import 'package:flutter/material.dart';

import '../../../utils/constants/colors/color_constans.dart';
import '../../../l10n/app_l10n.dart';

class AgreementTextWidget extends StatelessWidget {
  const AgreementTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${L10n.of(context)!.withSignUp} ",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: ColorConstant.instance.grey),
            ),
            InkWell(
                child: Text("${L10n.of(context)!.withuserAgree} ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: ColorConstant.instance.blue))),
            Text("${L10n.of(context)!.and} ",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorConstant.instance.grey)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                child: Text("${L10n.of(context)!.clarificationText} ",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: ColorConstant.instance.blue))),
            Text("${L10n.of(context)!.youAgree} ",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorConstant.instance.grey))
          ],
        ),
      ],
    );
  }
}
