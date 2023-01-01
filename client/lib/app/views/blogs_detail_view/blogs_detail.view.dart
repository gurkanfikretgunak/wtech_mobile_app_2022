import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:client/app/views/blogs_detail_view/blogs_detail.widgets.dart';
import 'package:client/app/views/blogs_view/widgets/blogs_model.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../l10n/app_l10n.dart';
import '../common/widgets/custom_appbar.dart';
import 'blogs_detail.viewmodel.dart';

class BlogsDetailView extends StatelessWidget with BlogsDetailWidget {
  BlogsDetailView({
    super.key,
    required this.blogs,
  });

  final BlogsModel blogs;
  final _vm = GetIt.I.get<BlogsDetailViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        titleText: L10n.of(context)!.blog,
        isCheck: false,
        isName: false,
      ),
      body: Padding(
        padding: context.horizontalPaddingNormal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child: title(blogs)),
            Expanded(flex: 2, child: wtechAndDateText(context)),
            Expanded(flex: 6, child: blogsImage(blogs, context)),
            Expanded(flex: 2, child: blogsDetailTitleAndViewsCount(context)),
            Expanded(flex: 5, child: blogsDetailTextCard(context, blogs)),
            Expanded(flex: 3, child: shareButton(context))
          ],
        ),
      ),
    );
  }
}
