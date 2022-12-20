import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import 'widgets/mentor_card_widget.dart';

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
        );
      },
    );
  }

  Widget appBarTitle(BuildContext context) {
    return Text('Mentorler', style: Theme.of(context).textTheme.headline6);
  }
}
