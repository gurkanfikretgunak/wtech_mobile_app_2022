import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/button/button_libary.dart';
import 'package:flutter/material.dart';

class MentorCardWidget extends StatelessWidget {
  final String? mentor;
  final String? imageUrl;
  final String? organization;
  final String? role;

  const MentorCardWidget({
    Key? key,
    required this.mentor,
    required this.imageUrl,
    required this.organization,
    required this.role,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.topCenter,
      children: [
        MentorImageWidget(imageUrl: imageUrl),
        MentorInfosWidget(mentor: mentor, organization: organization, role: role),
        const FavoriteButtonWidget()
      ],
    );
  }
}

class MentorImageWidget extends StatelessWidget {
  const MentorImageWidget({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageUrl ?? '',
    );
  }
}

class MentorInfosWidget extends StatelessWidget {
  const MentorInfosWidget({
    Key? key,
    required this.mentor,
    required this.organization,
    required this.role,
  }) : super(key: key);

  final String? mentor;
  final String? organization;
  final String? role;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100,
      child: SizedBox(
        width: context.dynamicWidth(0.4),
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: ColorConstant.instance.black.withOpacity(0.1)),
          ),
          child: Padding(
            padding: context.horizontalPaddingNormal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(mentor ?? '', style: Theme.of(context).textTheme.bodyText1),
                Padding(
                  padding: context.verticalPaddingNormal,
                  child: Text(
                    organization ?? '',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(color: ColorConstant.instance.blue),
                  ),
                ),
                Text(
                  role ?? '',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(color: ColorConstant.instance.grey),
                ),
                CustomElevatedButton(
                  onPressed: () {},
                  text: L10n.of(context)?.contact ?? '',
                  textColor: ColorConstant.instance.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FavoriteButtonWidget extends StatelessWidget {
  const FavoriteButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 10,
      top: 10,
      child: CircleAvatar(
        backgroundColor: ColorConstant.instance.white,
        child: IconButton(
          splashRadius: Material.defaultSplashRadius / 2,
          onPressed: () {},
          icon: Icon(Icons.favorite_border, color: ColorConstant.instance.blue),
        ),
      ),
    );
  }
}
