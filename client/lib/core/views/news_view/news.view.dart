import 'package:client/core/views/news_view/news.widgets.dart';
import 'package:flutter/material.dart';

class NewsView extends StatelessWidget with NewsWidgets {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(context),
    );
  }
}
