import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/button/button_libary.dart';
import 'package:client/core/views/common/widgets/custom_date_text.dart';
import 'package:client/core/views/common/widgets/custom_views_count.dart';
import 'package:client/core/views/common/widgets/text/text_libary.dart';
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
        Stack(
          clipBehavior: Clip.none,
          alignment: AlignmentDirectional.topCenter,
          children: [
            SizedBox(
              height: context.dynamicHeight(0.4),
              width: context.dynamicWidth(0.5),
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: const BorderSide(color: Colors.black12),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: context.dynamicHeight(0.16),
                      width: context.dynamicWidth(0.5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.network(
                          imageUrl ?? '',
                          fit: BoxFit.fill,
                        ),
                      ),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: context.dynamicHeight(0.11),
              left: context.dynamicWidth(0.01),
              child: SizedBox(
                height: context.dynamicHeight(0.05),
                width: context.dynamicWidth(0.17),
                child: Card(
                  color: ColorConstant.instance.yellow,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(color: Colors.black12),
                  ),
                  child: Center(
                    child: CustomText(
                      L10n.of(context)!.internship,
                      color: ColorConstant.instance.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: context.dynamicHeight(0.31),
                left: context.dynamicWidth(0.03),
                child: CustomElevatedButton(
                  onPressed: isContinue ? () {} : null,
                  text: (isContinue == false)
                      ? L10n.of(context)!.terminatedButton
                      : L10n.of(context)!.details,
                  textColor: ColorConstant.instance.white,
                )),
            Positioned(
                top: context.dynamicHeight(0.31),
                right: context.dynamicWidth(0.05),
                child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: ColorConstant.instance.white,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: ColorConstant.instance.grey.withOpacity(0.3)),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon((isLiked == false)
                          ? Icons.favorite_border
                          : Icons.favorite),
                    ))),
          ],
        ),
      ],
    );
  }
}
