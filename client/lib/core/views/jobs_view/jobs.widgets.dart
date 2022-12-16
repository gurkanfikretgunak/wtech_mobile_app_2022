import 'package:client/core/extensions/extension.dart';
import 'package:client/core/views/jobs_view/widgets/jobs_card_widget.dart';
import 'package:flutter/material.dart';

class JobsWidgets {
  Widget body(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      padding: context.paddingLow,
      itemCount: 5,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        childAspectRatio: 0.65,
      ),
      itemBuilder: (context, index) => const JobsCardWidget(
          imageUrl:
              "https://storagewtech.blob.core.windows.net/files/posts/posts_370_16644637286335b370bb4e3.jpeg",
          applyTime: "10.11.2022",
          institution: "Women in Technology Association",
          role: "Project Management Assistant",
          showNo: "100"),
    );
  }
}
