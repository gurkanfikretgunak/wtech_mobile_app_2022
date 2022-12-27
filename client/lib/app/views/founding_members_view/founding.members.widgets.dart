import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/app/views/mentors_view/widgets/mentor_card_widget.dart';
import 'package:client/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class FoundingMembersWidgets {
  Widget body(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      padding: context.paddingNormal,
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        childAspectRatio: 0.6,
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
    return Text('Kurucu Üyeler', style: Theme.of(context).textTheme.headline6);
  }
}
