import 'package:client/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import 'widgets/mentor_card_widget.dart';

class MentorsWidgets {
  Widget body(BuildContext context) {
    return MentorCardWidget(
      mentor: 'Zehra Öney',
      organization: 'Teknolojide Kadın Derneği',
      role: 'Yönetim Kurulu Başkanı',
      imageUrl: Assets.images.mentor.path,
    );
  }

  Widget appBarTitle(BuildContext context) {
    return Text('Mentorler', style: Theme.of(context).textTheme.headline6);
  }
}
// GridView.builder(
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//         itemBuilder: (context, index) {
//           return const MentorCardWidget(
//             mentor: 'Zehra Öney',
//             organization: 'Teknolojide Kadın Derneği',
//             role: 'Yönetim Kurulu Başkanı',
//             imageUrl: 'https://avatars.githubusercontent.com/u/68864968?v=4',
//           );
//         });