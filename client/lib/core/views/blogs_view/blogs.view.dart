import 'package:client/core/views/blogs_view/blogs.widgets.dart';
import 'package:client/core/views/blogs_view/widgets/blogs_list.dart';
import 'package:client/core/views/blogs_view/widgets/blogs_card.dart';
import 'package:client/core/views/common/widgets/text/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../extensions/extension.dart';
import '../../l10n/app_l10n.dart';
import '../common/widgets/custom_appbar.dart';
import '../common/widgets/custom_navbar.dart';
import 'blogs.viewmodel.dart';

class BlogsView extends StatelessWidget with BlogsWidget {
  BlogsView({super.key});

  final _vm = GetIt.I.get<BlogsViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(titleText: L10n.of(context)!.blog),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Padding(
        padding: context.paddingNormal,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 10,
                      child: CustomTextFormField(
                        prefixIcon: Icons.search,
                        hintText: L10n.of(context)!.searchInTheBlog,
                      )),
                ],
              ),
              context.emptySizedHeightBoxNormal,
              SizedBox(
                height: context.dynamicHeight(1),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: blogsList.length,
                  itemBuilder: (context, index) {
                    return BlogsCard(blogs: blogsList[index]);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
