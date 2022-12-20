import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/common/widgets/text/custom_textfield.dart';
import 'package:client/core/views/profile_edit_view/constants/profile_edit_const.dart';
import 'package:flutter/material.dart';

class ProfileEditTextFields extends StatelessWidget {
  const ProfileEditTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = context.height;
    return Padding(
      padding: context.horizontalPaddingNormal,
      child: SizedBox(
        height: screenHeight / 2.75,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: ProfileEditConstants().profileEditLabels(context).length,
          itemBuilder: (context, index) {
            return Padding(
              padding: context.verticalPaddingLow,
              child: CustomTextFormField(
                labelText:
                    ProfileEditConstants().profileEditLabels(context)[index],
                controller:
                    ProfileEditConstants().profileEditControllers()[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
