import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/routes/custom_navigator.dart';
import 'package:client/core/views/common/widgets/button/custom_button_elevated.dart';
import 'package:client/core/views/common/widgets/button/custom_button_icon.dart';
import 'package:client/core/views/common/widgets/text/text_library.dart';
import 'package:client/core/views/educations_view/educations.viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../enums/routes.enum.dart';

class EducationCardWidget extends StatelessWidget {
  const EducationCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = GetIt.I.get<EducationsViewModel>();
    bool heart = vm.heartAnimation();

    return StreamBuilder(
      stream: vm.heartFill,
      builder: (context, snapshot) {
        return Padding(
          padding: PaddingExtension(context).horizontalPaddingNormal,
          child: GestureDetector(
            onTap: () {
              CustomNavigator.goToScreen(context, Routes.educationDetail.name);
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(Assets.images.education1.path),
                  Padding(
                    padding: PaddingExtension(context).paddingNormal,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomText(
                          "Flutter & Dart Bootcamp 22'",
                          fontSize: 18,
                        ),
                        context.emptySizedHeightBoxLow,
                        CustomText(
                          "Sizleri front-end geliştirme dünyasında sektörün yeni lideri Flutter Geliştiricisi...",
                          color: ColorConstant.instance.grey,
                        ),
                        context.emptySizedHeightBoxLow,
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: false,
                              itemCount: 5,
                              itemSize: context.dynamicWidth(0.05),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: ColorConstant.instance.yellow,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            const CustomText("(0)"),
                          ],
                        ),
                        context.emptySizedHeightBoxLow,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // CustomElevatedButton(
                            //   text: "dsfjk",
                            //   // text: L10n.of(context)!.educationButton,
                            //   onPressed: () {},
                            // ),
                            CustomIconButton(
                              onPressed: () async {
                                heart = vm.heartAnimation();
                              },
                              icon: heart
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
