import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/common/widgets/button/button_libary.dart';
import 'package:client/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class MentorDetailsWidgets {
  Widget body(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingNormal * 2,
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: context.horizontalPaddingNormal * 2,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: Image.asset(Assets.images.mentor1.path).image,
              ),
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.remove_red_eye),
                  const Text('1038 kez görüntülendi.'),
                  Padding(
                    padding: context.horizontalPaddingNormal * 2,
                    child: const VerticalDivider(thickness: 2),
                  ),
                  const Icon(Icons.task_outlined),
                  const Text('16 Başvuru yapıldı.'),
                ],
              ),
            ),
            const Divider(thickness: 2),
            const Spacer(),
            CustomElevatedButton(onPressed: () {}, text: 'İletişime Geç')
          ],
        ),
      ),
    );
  }

  Widget appBarTitle(BuildContext context, String mentorName) {
    return Text(mentorName, style: Theme.of(context).textTheme.headline6);
  }
}
