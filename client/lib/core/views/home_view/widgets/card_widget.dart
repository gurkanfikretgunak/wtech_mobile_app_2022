import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/common/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../l10n/app_l10n.dart';
import '../temporary_contants.dart/text_constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, this.isCheck});
  final bool? isCheck;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingBodyHorizontal,
      child: Card(
        elevation: 5,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                    decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Image.asset(HomeTextContants.imagePath,
                        fit: BoxFit.fill, width: MediaQuery.of(context).size.width))),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.55,
                      child: Padding(
                          padding: context.paddingBodyHorizontal,
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                            const Text(HomeTextContants.baslikText, maxLines: 2),
                            isCheck!
                                ? Row(children: [
                                    Row(children: const [
                                      Icon(Icons.location_on_outlined, size: 15),
                                      Text(HomeTextContants.cityText)
                                    ]),
                                    Padding(
                                        padding: context.paddingBodyHorizontal,
                                        child: Row(children: const [
                                          Icon(Icons.event_outlined, size: 15),
                                          Text(HomeTextContants.dateText)
                                        ]))
                                  ])
                                : const SizedBox()
                          ]))),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                      child: CustomElevatedButton(onPressed: () {}, text: L10n.of(context)!.view)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
