import 'package:client/core/extensions/extension.dart';
import 'package:client/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import 'widgets/mentor_card_widget.dart';

class MentorsWidgets {
  Widget body(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      padding: context.paddingNormal,
      itemCount: 5,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        childAspectRatio: 0.8,
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
