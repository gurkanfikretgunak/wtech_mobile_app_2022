import 'package:client/core/extensions/extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/educations_view/widgets/education_card.dart';
import 'package:client/core/views/educations_view/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../common/widgets/text/custom_textfield.dart';

class EducationsWidgets {
  Widget educationCard(BuildContext context) {
    return const EducationCardWidget();
  }

  Widget searchBar(BuildContext context) {
    return const SearchBarWidget();
  }

  Widget searchEducationWidget(BuildContext context) {
    return Padding(
      padding: context.onlyLRTpaddingNormal,
      child: FittedBox(
        child: Row(
          children: [
            SizedBox(
              height: context.dynamicHeight(0.055),
              width: context.dynamicWidth(0.75),
              child: CustomTextFormField(
                prefixIcon: Icons.search,
                labelText: L10n.of(context)!.search,
              ),
            ),
            IconButton(
                onPressed: () {
                  Logger().d("message");
                },
                icon: const Icon(Icons.filter_list_outlined, size: 30))
          ],
        ),
      ),
    );
  }
}