import 'package:client/app/l10n/app_l10n.dart';
import 'package:client/app/routes/custom_navigator.dart';
import 'package:client/app/views/common/widgets/custom_appbar.dart';
import 'package:client/app/views/mentors_view/widgets/mentor_card_widget.dart';
import 'package:client/core/utils/constants/enums/routes.enum.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class MentorsWidgets {
  Widget body(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      padding: context.paddingNormal,
      itemCount: 5,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: context.dynamicHeight(0.03),
        crossAxisCount: 2,
        crossAxisSpacing: context.dynamicWidth(0.03),
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        return MentorCardWidget(
          mentor: 'Zehra Öney',
          organization: 'Teknolojide Kadın Derneği',
          role: 'Yönetim Kurulu Başkanı',
          imageUrl: Assets.images.mentor1.path,
          onPressedContact: () {
            CustomNavigator.goToScreen(context, Routes.mentorDetail.name);
          },
          onPressedFavorite: () {
            Logger().i('Favorite button pressed');
          },
        );
      },
    );
  }

  PreferredSizeWidget? appbar(BuildContext context) {
    return CustomAppbar(
      titleText: L10n.of(context)!.mentorAppBarTitle,
      isName: false,
      isCheck: false,
    );
  }
}
