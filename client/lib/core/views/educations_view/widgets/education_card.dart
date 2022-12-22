import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/routes/custom_navigator.dart';
import 'package:client/core/views/common/widgets/button/custom_button_icon.dart';
import 'package:client/core/views/common/widgets/text/custom_text_library.dart';
import 'package:client/core/views/educations_view/educations.viewmodel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get_it/get_it.dart';
import 'package:client/gen/assets.gen.dart';
import 'package:client/core/utils/constants/enums/routes.enum.dart';

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
        return GestureDetector(
          onTap: () {
            CustomNavigator.goToScreen(context, Routes.educationDetail.name);
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(Assets.images.education2.path)),
                    Positioned(
                      left: context.dynamicWidth(0.78),
                      top: context.dynamicHeight(0.005),
                      child: CircleAvatar(
                        backgroundColor: ColorConstant.instance.white,
                        child: CustomIconButton(
                          onPressed: () async {
                            heart = vm.heartAnimation();
                          },
                          icon: heart ? Icons.favorite : Icons.favorite_border,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: PaddingExtension(context).paddingNormal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(
                        "Genç Kariyer Eğitim Programı",
                        fontSize: 18,
                      ),
                      context.emptySizedHeightBoxLow,
                      CustomText(
                        "Hopi ve Teknolojide Kadın Derneği iş birliği ile meslek tercihleri aşamasında yönlendirmeye ve geleceğe dair bilgiye ihtiyaç...",
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
                            itemSize: context.dynamicWidth(0.035),
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
                          const CustomText("(0)"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
