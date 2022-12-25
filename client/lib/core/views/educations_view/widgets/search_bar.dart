import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:flutter/material.dart';
import 'package:client/core/views/common/widgets/text/custom_textfield.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.dynamicHeight(0.07),
      width: context.dynamicWidth(1),
      decoration: BoxDecoration(
        color: ColorConstant.instance.white,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.instance.black,
            offset: const Offset(0.0, 0.0),
            blurRadius: 1.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: PaddingExtension(context).paddingNormal,
            child: SizedBox(
              child: Container(
                height: context.dynamicHeight(0.09),
                width: context.dynamicWidth(0.8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CustomTextFormField(
                  prefixIcon: const Icon(Icons.search),
                  labelText: L10n.of(context)!.search,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
