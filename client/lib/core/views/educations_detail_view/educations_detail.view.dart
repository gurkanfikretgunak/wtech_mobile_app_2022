import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/button/button_libary.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/common/widgets/custom_divider.dart';
import 'package:client/core/views/educations_detail_view/educations_detail.viewmodel.dart';
import 'package:client/core/views/educations_detail_view/educations_detail.widgets.dart';
import 'package:client/core/views/educations_detail_view/widgets/expansion_tile.dart';
import 'package:client/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class EducationsDetailView extends StatelessWidget
    with EducationsDetailWidgets {
  const EducationsDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = GetIt.I.get<EducationsDetailViewModel>();

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(
            titleText: L10n.of(context)!.titleEducation,
            isCheck: false,
            isName: false),
        body: Padding(
          padding: PaddingExtension(context).paddingNormal,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
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
      ),
    );
  }
}
