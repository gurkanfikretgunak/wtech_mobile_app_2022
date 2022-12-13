import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EducationsDetailView extends StatelessWidget {
  const EducationsDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar.customAppBar(context: context, titleText: L10n.of(context)!.hello, isBackIcon: true),
        body: Padding(
          padding: PaddingExtension(context).paddingAll,
          child: Column(
            children: [
              ClipRRect(borderRadius: BorderRadius.circular(13), child: Image.asset("images/education_1.png")),
            ],
          ),
        ),
      ),
    );
  }
}