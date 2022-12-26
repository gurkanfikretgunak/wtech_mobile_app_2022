import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/jobs_view/widgets/jobs_card_widget.dart';
import 'package:client/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class JobsWidgets {
  PreferredSizeWidget appbar(BuildContext context) {
    return CustomAppbar(
      titleText: L10n.of(context)!.jobAndinternship,
      isCheck: false,
      isName: false,
    );
  }

  Widget body(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      padding: context.paddingLow,
      itemCount: 5,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        childAspectRatio: context.width / context.height * 1.05,
      ),
      itemBuilder: (context, index) => JobsCardWidget(
          imageUrl: Assets.images.job1.path,
          applyTime: "10.11.2022",
          institution: "Women in Technology Association",
          role: "Project Management Assistant",
          showNo: "100"),
    );
  }
}
