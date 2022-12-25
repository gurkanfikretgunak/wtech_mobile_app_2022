import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/common/widgets/button/custom_button_libary.dart';
import 'package:client/core/views/mentors_view/mentors.viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class MentorCardWidget extends StatelessWidget {
  final String? mentor;
  final String? imageUrl;
  final String? organization;
  final String? role;
  final Function()? onPressedContact;
  final Function()? onPressedFavorite;

  const MentorCardWidget({
    Key? key,
    required this.mentor,
    required this.imageUrl,
    required this.organization,
    required this.role,
    this.onPressedContact,
    this.onPressedFavorite,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.topCenter,
      children: [
        MentorImageWidget(imageUrl: imageUrl),
        MentorInfosWidget(
          mentor: mentor,
          organization: organization,
          role: role,
          onPressed: onPressedContact,
        ),
        FavoriteButtonWidget(
          onPressed: onPressedFavorite,
        )
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
    required this.onPressed,
  }) : super(key: key);

  final String? mentor;
  final String? organization;
  final String? role;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100,
      child: SizedBox(
        height: context.dynamicHeight(0.2),
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
                color: ColorConstant.instance.black.withOpacity(0.1)),
          ),
          child: Padding(
            padding: context.paddingNormal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(mentor ?? '',
                    style: Theme.of(context).textTheme.bodyText1),
                Text(
                  organization ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: ColorConstant.instance.blue),
                ),
                Text(
                  role ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: ColorConstant.instance.grey),
                ),
                CustomElevatedButton(
                  width: context.dynamicHeight(0.1),
                  height: context.dynamicHeight(0.04),
                  onPressed: onPressed,
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
  final Function()? onPressed;
  const FavoriteButtonWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _vm = GetIt.I.get<MentorsViewModel>();
    bool heart = _vm.heartFill();

    return StreamBuilder(
      stream: _vm.favorite,
      builder: (context, snapshot) {
        return Positioned(
          right: 10,
          top: 10,
          child: CircleAvatar(
            backgroundColor: ColorConstant.instance.white,
            child: IconButton(
              splashRadius: Material.defaultSplashRadius / 2,
              onPressed: () => heart = _vm.heartFill(),
              icon: heart ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
            ),
          ),
        );
      },
    );
  }
}
