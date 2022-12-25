import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/educations_view/educations.widgets.dart';
import 'package:client/core/views/home_view/home.widgets.dart';
import 'package:flutter/material.dart';

class EducationView extends StatelessWidget {
  const EducationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: context.paddingNormal,
            child: Column(
              children: [
                HomeViewWidget.searchHomeWidget(context),
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
      ),
    );
  }
}
