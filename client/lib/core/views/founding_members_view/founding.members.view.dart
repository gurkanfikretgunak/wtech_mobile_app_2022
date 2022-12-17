import 'package:client/core/views/common/widgets/custom_appbar.dart';
import 'package:client/core/views/common/widgets/custom_navbar.dart';
import 'package:client/core/views/founding_members_view/founding.members.widgets.dart';
import 'package:flutter/material.dart';

class FoundingMembersView extends StatelessWidget with FoundingMembersWidgets {
  FoundingMembersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        titleText: "Kurucu Üyeler",
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: body(context),
    );
  }
}
