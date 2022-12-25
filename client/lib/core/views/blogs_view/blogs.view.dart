import 'package:client/core/views/blogs_view/blogs.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'blogs.viewmodel.dart';

class BlogsView extends StatelessWidget with BlogsWidget {
  BlogsView({super.key});

  final _vm = GetIt.I.get<BlogsViewModel>();

  @override
  Widget build(BuildContext context) {
    return _vm.baseScaffold(context, appbar: appBar(context), body: body(context));
  }
}
