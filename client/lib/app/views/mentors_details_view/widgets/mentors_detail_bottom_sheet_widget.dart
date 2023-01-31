import 'package:client/app/l10n/app_l10n.dart';
import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/app/views/common/widgets/button/custom_button_libary.dart';
import 'package:client/app/views/common/widgets/text/custom_text_library.dart';
import 'package:flutter/material.dart';

class MentorsDetailBottomSheetWidget extends StatelessWidget {
  const MentorsDetailBottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isTrue = false;
    return Padding(
      padding: context.verticalPaddingLow + context.horizontalPaddingMedium,
      child: Wrap(
        runSpacing: context.height * 0.02,
        children: [
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: context.horizontalPaddingHigh,
                    child: Divider(
                      thickness: 3,
                      color: ColorConstant.instance.grey,
                    ),
                  )),
              Expanded(
                  flex: 0,
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.close))),
            ],
          ),
          CustomTextFormField(
              hintText: L10n.of(context)?.mentorDetailBottomSheetName ?? ''),
          CustomTextFormField(
              hintText: L10n.of(context)?.mentorDetailBottomSheetEmail ?? ''),
          CustomTextFormField(
              hintText: L10n.of(context)?.mentorDetailBottomSheetMessage ?? ''),
          Row(
            children: [
              Text(L10n.of(context)?.mentorDetailBottomSheetUploadFile ?? ''),
              context.emptySizedWidthBoxLow,
              Expanded(
                child: CustomElevatedButton(
                  iconWidget: const Icon(Icons.attach_file),
                  onPressed: () {},
                  text:
                      L10n.of(context)?.mentorDetailBottomSheetSelectFile ?? '',
                  textColor: ColorConstant.instance.white,
                ),
              ),
            ],
          ),
          Text(L10n.of(context)?.mentorDetailBottomSheetNotSelectedFile ?? ''),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: isTrue,
                onChanged: (value) {
                  isTrue = !isTrue;
                },
              ),
              Text(L10n.of(context)?.mentorDetailBottomSheetSaveInfo ?? ''),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CustomElevatedButton(
                  onPressed: () {},
                  text:
                      L10n.of(context)?.mentorDetailBottomSheetWatchVideo ?? '',
                  textColor: ColorConstant.instance.white,
                ),
              ),
              context.emptySizedWidthBoxNormal,
              Expanded(
                child: CustomElevatedButton(
                  onPressed: () {},
                  text: L10n.of(context)?.mentorDetailBottomSheetSend ?? '',
                  textColor: ColorConstant.instance.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
