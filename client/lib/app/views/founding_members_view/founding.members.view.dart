import 'package:client/app/views/common/widgets/custom_appbar.dart';
import 'package:client/app/views/founding_members_view/founding.members.widgets.dart';
import 'package:flutter/material.dart';

class FoundingMembersView extends StatelessWidget with FoundingMembersWidgets {
  FoundingMembersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        titleText: "Kurucu Üyeler",
        isCheck: false,
        isName: false,
      ),
      body: body(context),
    );
  }
}
