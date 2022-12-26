import 'package:flutter/material.dart';
import 'package:client/core/views/home_view/home.widgets.dart';

class HomeView extends StatelessWidget with HomeViewWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return body(context);
  }
}
