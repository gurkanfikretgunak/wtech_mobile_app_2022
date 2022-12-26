import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:client/core/views/educations_detail_view/widgets/content_card.dart';
import 'package:client/core/views/educations_detail_view/widgets/expansion_tile.dart';
import 'package:client/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:client/core/views/common/widgets/button/custom_button_libary.dart';
import 'educations_detail.viewmodel.dart';
import 'widgets/content_list.dart';

class EducationsDetailWidgets {
  Widget educationContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          L10n.of(context)!.educationContent,
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
        context.emptySizedHeightBoxNormal,
        SizedBox(
          height: context.dynamicHeight(0.17),
          child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 7 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 5,
              ),
              itemCount: 4,
              itemBuilder: (BuildContext context, index) {
                var key = contentList(context)[index];
                return ContentCard(listItem: key);
              }),
        )
      ],
    );
  }

  Widget contentPieces(
      BuildContext context, IconData icon1, String text1, String text2) {
    return Row(
      children: [
        Icon(icon1, color: ColorConstant.instance.black),
        Text(text1, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(text2, style: TextStyle(color: ColorConstant.instance.grey)),
      ],
    );
  }

  Widget applyAndFavoriteButton(BuildContext context) {
    final vm = GetIt.I.get<EducationsDetailViewModel>();
    bool isFavorite = vm.changeFavorite();
    return StreamBuilder(
      stream: vm.favorite,
      builder: (context, snapshot) {
        return FittedBox(
          child: Padding(
            padding: context.verticalPaddingMedium,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomElevatedButton(
                  onPressed: () {},
                  text: "Başvur",
                  textColor: ColorConstant.instance.white,
                ),
                context.emptySizedWidthBoxNormal,
                CircleAvatar(
                  child: IconButton(
                    icon: isFavorite == true
                        ? const Icon(Icons.favorite)
                        : const Icon(Icons.favorite_border),
                    onPressed: () {
                      isFavorite = vm.changeFavorite();
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  PreferredSizeWidget appBar(BuildContext context) {
    return CustomAppbar(
      titleText: L10n.of(context)!.titleEducation,
      isCheck: false,
      isName: false
    );
  }

  Widget body(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: PaddingExtension(context).paddingNormal,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image.asset(Assets.images.education1.path)),
              Padding(
                padding: context.verticalPaddingMedium,
                child: educationContent(context),
              ),
              const EducationDescription(),
              applyAndFavoriteButton(context)
            ],
          ),
        ),
      ),
    );
  }
}
