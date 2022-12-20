import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/button/custom_button_libary.dart';
import 'package:client/core/views/common/widgets/text/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../constants/profile_edit_const.dart';

class ChangePasswordContainer extends StatelessWidget {
  const ChangePasswordContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = context.height;
    double screemWidth = context.width;
    return InkWell(
      child: Padding(
        padding: context.onlyTopPaddingNormal,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: screenHeight / 15,
              width: screemWidth * 10 / 11,
              decoration: BoxDecoration(
                  color: ColorConstant.instance.blue,
                  borderRadius: BorderRadius.circular(6)),
            ),
            Text(
              L10n.of(context)!.resetPassword,
              style: TextStyle(color: ColorConstant.instance.white),
            )
          ],
        ),
      ),
      onTap: () {
        showModalBottomSheet<void>(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight / 2,
                  child: ListView.builder(
                    itemCount:
                        ProfileEditConstants().changePassLabels(context).length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: context.paddingMedium,
                        child: CustomTextFormField(
                          controller: ProfileEditConstants()
                              .ChangePasswordControllers()[index]!,
                          labelText: ProfileEditConstants()
                              .changePassLabels(context)[index],
                        ),
                      );
                    },
                  ),
                ),
                CustomElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    text: L10n.of(context)!.save)
              ],
            );
          },
        );
      },
    );
  }
}
