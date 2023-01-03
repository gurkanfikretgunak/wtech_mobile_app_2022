import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/app/l10n/app_l10n.dart';
import 'package:client/app/views/educations_view/widgets/education_card.dart';
import 'package:client/app/views/educations_view/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:client/app/views/common/widgets/text/custom_textfield.dart';

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
        suffixIcon: const Icon(Icons.filter_list),
        labelText: L10n.of(context)!.search,
        isSearch: true,
      ),
    );
  }

  Widget body(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: context.paddingNormal,
          child: Column(
            children: [
              EducationsWidgets().searchEducationWidget(context),
              ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return EducationsWidgets().educationCard(context);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return context.emptySizedHeightBoxNormal;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
