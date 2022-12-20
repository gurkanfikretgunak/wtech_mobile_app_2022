import 'package:flutter/material.dart';
import 'package:client/core/utils/extensions/common_extension.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        context.emptySizedHeightBoxHigh,
        Image.asset(image, height: context.dynamicHeight(0.3)),
        context.emptySizedHeightBoxNormal,
        context.emptySizedHeightBoxNormal,
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        context.emptySizedHeightBoxNormal,
        Text(
          description,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
