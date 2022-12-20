import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/about_view/about.widgets.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/common/widgets/custom_image.dart';
import 'package:client/core/views/common/widgets/text/custom_text_library.dart';
import 'package:flutter/material.dart';

class AboutDetailView extends StatelessWidget with AboutWidgets {
  const AboutDetailView({
    super.key,
    required this.title,
    required this.imagePath,
  });

  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        titleText: title,
        isCheck: false,
        isName: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomImage(
              assetPath: imagePath,
              height: context.dynamicHeight(0.3),
            ),
            Padding(
                padding: context.paddingMedium,
                child: CustomText(L10n.of(context)!.associationDescription)),
          ],
        ),
      ),
    );
  }
}
