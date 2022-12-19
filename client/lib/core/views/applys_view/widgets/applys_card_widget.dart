import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/common/widgets/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../gen/assets.gen.dart';
import '../../common/widgets/text/custom_text.dart';

class ApplysCardWidget extends StatelessWidget {
  ApplysCardWidget({
    Key? key,
    required this.state,
  }) : super(key: key);
  bool applyState = true;
  final bool state;
  Color applyAccepted = Colors.green.withOpacity(0.9);
  Color applyEvaluation = ColorConstant.instance.yellow.withOpacity(0.6);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              CustomImage(
                assetPath: Assets.images.education1.path,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: state ? applyAccepted : applyEvaluation,
                  ),
                  height: context.dynamicHeight(0.04),
                  width: context.dynamicWidth(0.3),
                  child: Center(
                    child: CustomText(
                      state ? "Kabul Edildi" : "Değerlendirmede",
                      color: ColorConstant.instance.white,
                    ),
                  ),
                ),
              ),
            ]),
            Padding(
              padding: context.paddingLow,
              child: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Flutter & Dart Bootcamp 22'",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      children: [
                        RatingBar.builder(
                          initialRating: 2,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 5,
                          itemSize: context.dynamicWidth(0.04),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: ColorConstant.instance.yellow,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        const Text("(0)"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: context.paddingLow,
              child: Text(
                  "Sizleri front-end geliştirme dünyasında sektörün yeni lideri Flutter Geliştiricisi...",
                  style: TextStyle(
                      color: ColorConstant.instance.grey, fontSize: 14)),
            ),
            // Padding(
            //   padding: context.paddingNormal,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       ElevatedButton(
            //         child: Text(L10n.of(context)!.educationButton),
            //         onPressed: () {},
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
