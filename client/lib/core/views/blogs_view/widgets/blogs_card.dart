import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/core/views/blogs_detail_view/blogs_detail.view.dart';
import 'package:client/core/views/blogs_view/blogs.widgets.dart';
import 'package:client/gen/assets.gen.dart';

import 'package:flutter/material.dart';

import 'blogs_model.dart';

class BlogsCard extends StatelessWidget with BlogsWidget {
  BlogsCard({
    super.key,
    required this.blogs,
  });

  final BlogsModel blogs;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BlogsDetailView(
              blogs: blogs,
            ),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 5,
        child: SizedBox(
          child: SizedBox(
            child: Row(
              children: [
                Expanded(flex: 20, child: cardImage(imagePath: Assets.images.png.blog1.path, context: context)),
                const Spacer(),
                Expanded(
                  flex: 20,
                  child: Padding(
                    padding: context.paddingLow,
                    child: Wrap(
                      runSpacing: 15,
                      children: [
                        cardTitleText(blogs.title!),
                        cardDetailText(blogs.detail!),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            dateText(date: blogs.date!),
                            viewCount(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
