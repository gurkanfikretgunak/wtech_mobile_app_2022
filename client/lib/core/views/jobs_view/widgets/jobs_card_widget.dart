import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/button/button_libary.dart';
import 'package:client/core/views/common/widgets/custom_date_text.dart';
import 'package:client/core/views/common/widgets/custom_views_count.dart';
import 'package:client/core/views/common/widgets/text/text_library.dart';
import 'package:flutter/material.dart';

class JobsCardWidget extends StatelessWidget {
  const JobsCardWidget(
      {Key? key,
      required this.imageUrl,
      required this.role,
      required this.applyTime,
      required this.showNo,
      required this.institution})
      : super(key: key);

  final String? imageUrl;
  final String? applyTime;
  final String? role;
  final String? showNo;
  final String? institution;

  @override
  Widget build(BuildContext context) {
    bool isLiked = false;
    bool isContinue = true;
    return Wrap(
      children: [
        SizedBox(
          height: context.dynamicHeight(0.401),
          width: context.dynamicWidth(0.5),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: const BorderSide(color: Colors.black12),
            ),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    SizedBox(
                      height: context.dynamicHeight(0.16),
                      width: context.dynamicWidth(0.5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          imageUrl ?? '',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Card(
                      color: ColorConstant.instance.yellow,
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(color: Colors.black12),
                      ),
                      child: FittedBox(
                        child: Center(
                          child: Padding(
                            padding: context.paddingLow,
                            child: CustomText(
                              L10n.of(context)!.internship,
                              color: ColorConstant.instance.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: context.paddingLow,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomDateText(date: applyTime!),
                          CustomViewsCount(viewsCount: showNo!),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                                padding: context.verticalPaddingNormal,
                                child: CustomText(
                                  role!,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                )),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: CustomText(
                            institution!,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          )),
                        ],
                      ),
                      Padding(
                        padding: context.verticalPaddingNormal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomElevatedButton(
                              width: context.dynamicWidth(0.2),
                              onPressed: () {},
                              text: L10n.of(context)?.details ?? '',
                              textColor: ColorConstant.instance.white,
                              // buttonColor: false,
                            ),
                            Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: ColorConstant.instance.white,
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      color: ColorConstant.instance.grey
                                          .withOpacity(0.3)),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon((isLiked == false)
                                      ? Icons.favorite_border
                                      : Icons.favorite),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
