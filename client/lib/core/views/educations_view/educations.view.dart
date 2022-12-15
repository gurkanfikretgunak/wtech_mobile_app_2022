import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/common/widgets/custom_navbar.dart';
import 'package:client/core/views/educations_view/educations.widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EducationView extends StatelessWidget {
  const EducationView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(titleText: L10n.of(context)!.hello, isCheck: false),
        drawer :const Drawer(child: Text("data")),
        extendBody: true,
        extendBodyBehindAppBar: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              EducationsWidgets().searchBar(context, screenHeight, screenWidth),
              SizedBox(
                height: screenHeight,
                width: screenWidth,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder:(context, index) {
                    return EducationsWidgets().educationCard(context, screenHeight, screenWidth);
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}