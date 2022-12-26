import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/text/custom_text.dart';
import 'package:client/core/views/educations_detail_view/widgets/content_card.dart';
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

  Widget contentPieces(BuildContext context, IconData icon1, String text1, String text2) {
    return Row(
      children: [
        Icon(icon1, color: ColorConstant.instance.black),
        Text(text1, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(text2, style: TextStyle(color: ColorConstant.instance.grey)),
      ],
    );
  }

  Widget applyAndFavoriteButton(BuildContext context) {
    final _vm = GetIt.I.get<EducationsDetailViewModel>();
    bool isFavorite = _vm.changeFavorite();
    return StreamBuilder(
      stream: _vm.favorite,
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
                  child: CustomIconButton(
                    onPressed: () async {
                      isFavorite = _vm.changeFavorite();
                    },
                    icon: isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Theme.of(context).backgroundColor,
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
