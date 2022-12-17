import 'package:flutter/material.dart';
import 'package:client/core/extensions/extension.dart';

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
      children: [
        context.emptySizedHeightBoxSpecial,
        Image.asset(
          image,
          height: 250,
        ),
        context.emptySizedHeightBoxTittle,
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        context.emptySizedHeightBoxDescription,
        Text(
          description,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
