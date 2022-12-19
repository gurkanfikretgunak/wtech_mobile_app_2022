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
        appBar: const CustomAppbar(
          titleText: "Eğitimler",
          isCheck: true,
          isName: false,
        ),
        drawer: const Drawer(child: Text("data")),
        extendBody: true,
        extendBodyBehindAppBar: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              EducationsWidgets().searchBar(context),
              SizedBox(
                height: context.dynamicHeight(1),
                width: context.dynamicWidth(1),
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return EducationsWidgets().educationCard(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
