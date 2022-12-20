import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInAccountButton extends StatelessWidget {
  const SignInAccountButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.socialText,
  }) : super(key: key);
  final String icon;
  final String text;
  final String socialText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.verticalPaddingLow,
      child: InkWell(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: ColorConstant.instance.grey),
            color: Colors.white,
          ),
          height: context.dynamicHeight(0.06),
          width: context.dynamicWidth(1),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SvgPicture.asset(
                  icon,
                  height: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text.rich(
                  TextSpan(
                      text: text,
                      children: <TextSpan>[
                        TextSpan(
                            text: " $socialText",
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                      ],
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(fontSize: 16.5)),
                ),
              ),
            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
