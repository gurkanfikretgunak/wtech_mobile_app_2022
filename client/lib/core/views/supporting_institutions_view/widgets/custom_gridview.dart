import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors/color_constans.dart';
import '../../common/widgets/text/custom_text.dart';
import '../support_constants/support_text_const.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingNormal,
      child: SizedBox(
        child: GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 67,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 1.5),
          itemBuilder: (context, index) {
            return Container(
              color: ColorConstant.instance.textFormFieldBorderColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Image(
                          image: NetworkImage(
                              SupportTextConstants.imagePath()[index]))),
                  Padding(padding: context.paddingLow),
                  CustomText(
                    SupportTextConstants().instutionConstant(context)[index],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
