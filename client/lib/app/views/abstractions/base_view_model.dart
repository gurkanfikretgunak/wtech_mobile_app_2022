// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';

abstract class BaseViewModel {
  final _loading = BehaviorSubject<bool>.seeded(false);
  Stream get loading => _loading.stream;
  void setLoading(bool value) => _loading.add(value);

  Widget baseScaffold(
    BuildContext context, {
    Widget? body,
    PreferredSizeWidget? appbar,
    Widget? navbar,
    Widget? drawer,
    Widget? fab,
  }) {
    return Scaffold(
      body: body,
      appBar: appbar,
      bottomNavigationBar: navbar,
      drawer: drawer,
      floatingActionButton: fab,
    );
  }

  void clear();
}
