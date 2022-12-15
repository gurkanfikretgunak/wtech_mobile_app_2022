import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/common/widgets/button/button_libary.dart';
import 'package:flutter/material.dart';

import '../../../l10n/app_l10n.dart';
import '../temporary_contants.dart/text_constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, this.isCheck});
  final bool? isCheck;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingLow,
      child: Card(
        elevation: 5,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset(HomeTextContants.imagePath,
                      fit: BoxFit.fill, width: MediaQuery.of(context).size.width),
                )),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  SizedBox(
                      width: context.width * 0.53,
                      child: Padding(
                          padding: context.horizontalPaddingLow,
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                            const Text(HomeTextContants.baslikText, maxLines: 2),
                            isCheck!
                                ? Row(children: [
                                    Row(children: const [
                                      Icon(Icons.location_on_outlined, size: 15),
                                      Text(HomeTextContants.cityText)
                                    ]),
                                    Padding(
                                        padding: context.horizontalPaddingLow,
                                        child: Row(children: const [
                                          Icon(Icons.event_outlined, size: 15),
                                          Text(HomeTextContants.dateText)
                                        ]))
                                  ])
                                : const SizedBox()
                          ]))),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                      child: CustomElevatedButton(
                          onPressed: () {}, text: L10n.of(context)!.view, textColor: ColorConstant.instance.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
