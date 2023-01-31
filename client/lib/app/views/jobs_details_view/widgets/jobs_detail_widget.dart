import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/app/l10n/app_l10n.dart';
import 'package:client/app/views/common/widgets/text/custom_text_library.dart';
import 'package:client/app/views/jobs_details_view/widgets/job_detail_action_button.dart';
import 'package:client/app/views/jobs_details_view/widgets/job_image_and_time.dart';
import 'package:client/app/views/jobs_details_view/widgets/job_expansion_tile.dart';
import 'package:flutter/material.dart';

class JobsDetailWidget extends StatelessWidget {
  const JobsDetailWidget(
      {super.key,
      required this.jobDetailTitle,
      required this.jobInstitution,
      required this.jobApplyTime,
      required this.jobQualification,
      required this.jobCriteria,
      required this.jobPositionInfo,
      required this.jobImage});

  final String? jobDetailTitle;
  final String? jobInstitution;
  final String? jobApplyTime;
  final String? jobQualification;
  final String? jobCriteria;
  final String? jobPositionInfo;
  final String? jobImage;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: context.paddingNormal,
            child: Center(
                child: CustomText(jobDetailTitle ?? "",
                    fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: context.onlyLeftPaddingNormal,
                child: CustomText(
                  jobInstitution ?? "",
                  color: ColorConstant.instance.blue,
                ),
              ),
              Padding(
                padding: context.onlyRightPaddingNormal,
                child: Row(
                  children: [
                    CustomText(
                      L10n.of(context)!.lastUpdatedDate,
                      color: ColorConstant.instance.black,
                    ),
                    CustomText(
                      ":",
                      color: ColorConstant.instance.black,
                    ),
                    CustomText(
                      jobApplyTime ?? "",
                      color: ColorConstant.instance.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: context.onlyTopPaddingMedium,
            child: SizedBox(
              height: context.dynamicHeight(0.2),
              width: context.dynamicWidth(0.9),
              child: JobImageandTime(jobImage: jobImage),
            ),
          ),
          Padding(
            padding: context.paddingMedium,
            child: CustomText(
              jobQualification ?? "",
              color: ColorConstant.instance.black,
              fontSize: 15,
            ),
          ),
          JobExpansionTile(
            theme: theme,
            expansionTileInfo: jobCriteria,
            expansionTileTitle: L10n.of(context)!.criteria,
          ),
          JobExpansionTile(
            theme: theme,
            expansionTileInfo: jobPositionInfo,
            expansionTileTitle: L10n.of(context)!.positionInfo,
          ),
          Padding(
            padding: context.onlyTopPaddingLow,
            child: floatingActionButton(context),
          )
        ],
      ),
    );
  }
}
