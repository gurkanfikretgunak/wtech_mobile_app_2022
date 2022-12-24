import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/common/widgets/custom_image.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:client/gen/assets.gen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class ApplysCardWidget extends StatelessWidget {
  ApplysCardWidget({
    Key? key,
    required this.state,
  }) : super(key: key);
  bool applyState = true;
  final bool state;
  Color applyAccepted = Colors.green.withOpacity(0.9);
  Color applyEvaluation = ColorConstant.instance.blue.withOpacity(0.9);
  @override
  Widget build(BuildContext context) {
    String accepted = L10n.of(context)!.accepted;
    String evaluating = L10n.of(context)!.evaluating;
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
                assetPath: Assets.images.png.education1.path,
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
                      state ? accepted : evaluating,
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
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                            if (kDebugMode) {
                              print(rating);
                            }
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
              child: Text("Sizleri front-end geliştirme dünyasında sektörün yeni lideri Flutter Geliştiricisi...",
                  style: TextStyle(color: ColorConstant.instance.grey, fontSize: 14)),
            ),
          ],
        ),
      ),
    );
  }
}
