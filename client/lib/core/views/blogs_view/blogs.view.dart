import 'package:client/core/views/blogs_view/blogs.widgets.dart';
import 'package:client/core/views/blogs_view/widgets/blogs_list.dart';
import 'package:client/core/views/blogs_view/widgets/blogs_model.dart';
import 'package:client/core/views/blogs_view/widgets/blogs_card.dart';
import 'package:client/core/views/common/widgets/button/custom_button_icon.dart';
import 'package:client/core/views/common/widgets/text/text_library.dart';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../extensions/extension.dart';
import '../../l10n/app_l10n.dart';
import '../common/widgets/custom_appbar.dart';
import '../common/widgets/custom_navbar.dart';
import '../view_model_sample_two/sample_two.viewmodel.dart';

class BlogsView extends StatelessWidget with BlogsWidget {
  BlogsView({super.key});

  final _vm = GetIt.I.get<SampleViewModelTwo>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(titleText: L10n.of(context)!.blog),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Padding(
        padding: context.paddingNormal,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              context.emptySizedHeightBoxHigh,
              // SizedBox(
              //   width: context.dynamicWidth(1),
              //   child: Column(
              //     children: [
              //       CustomIconButton(onPressed: () {}, icon: Icons.filter),
              //       const CustomTextFormField(),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: context.dynamicHeight(1),
                child: ListView.builder(
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
