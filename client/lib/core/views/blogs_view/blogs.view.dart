import 'package:client/core/views/blogs_view/blogs.widgets.dart';
import 'package:client/core/views/blogs_view/widgets/blog_list_tile.dart';
import 'package:client/core/views/blogs_view/widgets/blog_model.dart';

import 'package:flutter/material.dart';

class BlogsView extends StatefulWidget with BlogsWidget {
  const BlogsView({Key? key}) : super(key: key);

  @override
  State<BlogsView> createState() => _BlogsViewState();
}

class _BlogsViewState extends State<BlogsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16.0,
              ),
              Column(
                children: BlogsData.recentNewsData
                    .map((e) => BlogsListTile(e))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
