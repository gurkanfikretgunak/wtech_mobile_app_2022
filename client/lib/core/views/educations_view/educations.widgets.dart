import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/educations_view/widgets/education_card.dart';
import 'package:client/core/views/educations_view/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:client/core/views/common/widgets/text/custom_textfield.dart';

class EducationsWidgets {
  Widget educationCard(BuildContext context) {
    return const EducationCardWidget();
  }

  Widget searchBar(BuildContext context) {
    return const SearchBarWidget();
  }

  Widget searchEducationWidget(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: CustomTextFormField(
        prefixIcon: const Icon(Icons.search),
        labelText: L10n.of(context)!.search,
        isSearch: true,
      ),
    );
  }
}
