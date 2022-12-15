import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

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
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.instance.black,
            offset: Offset(0.0, 0.0),
            blurRadius: 1.0,
          ),
        ],
        //border: Border.all()
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: PaddingExtension(context).paddingAll,
            child: SizedBox(
              child: Container(
                height: context.dynamicHeight(0.09),
                width: context.dynamicWidth(0.8),              
                decoration: BoxDecoration(
                  //color: ColorConstant.instance.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CustomTextFormField(
                  prefixIcon: Icons.search,
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