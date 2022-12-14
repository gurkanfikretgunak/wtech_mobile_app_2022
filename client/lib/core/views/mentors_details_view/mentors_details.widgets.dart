import 'package:flutter/material.dart';

class MentorDetailsWidgets {
  Widget body(BuildContext context) {
    return Container();
  }

  Widget appBarTitle(BuildContext context, String mentorName) {
    return Text(mentorName, style: Theme.of(context).textTheme.headline6);
  }
}
