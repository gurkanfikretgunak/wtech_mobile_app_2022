import 'package:client/app/l10n/app_l10n.dart';
import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/app/views/common/widgets/button/custom_button_libary.dart';
import 'package:client/app/views/jobs_details_view/widgets/jobs_apply_bottom_sheet.dart';

import 'package:flutter/material.dart';

Widget floatingActionButton(BuildContext context) {
  return Container(
    padding: context.horizontalPaddingHigh,
    width: context.width,
    child: CustomElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          context: context,
          isScrollControlled: true,
          builder: (context) => const JobsDetailBottomSheetWidget(),
        );
      },
      text: L10n.of(context)?.apply ?? '',
      textColor: ColorConstant.instance.white,
    ),
  );
}
