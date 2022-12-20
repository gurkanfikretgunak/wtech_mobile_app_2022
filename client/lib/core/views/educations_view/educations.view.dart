import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/educations_view/educations.widgets.dart';
import 'package:flutter/material.dart';

class EducationView extends StatelessWidget {
  const EducationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: false,
        body: Column(
          children: [
            Padding(
              padding: context.onlyLeftPaddingMedium,
              child: EducationsWidgets().searchEducationWidget(context),
            ),
            Padding(
              padding: context.onlyTopPaddingLow,
              child: Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: context.dynamicHeight(0.8),
                  width: context.dynamicWidth(1),
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return EducationsWidgets().educationCard(context);
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return context.emptySizedHeightBoxNormal;
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
