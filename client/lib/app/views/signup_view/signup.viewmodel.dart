import 'package:client/app/l10n/app_l10n.dart';
import 'package:client/app/views/abstractions/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
// ignore: depend_on_referenced_packages
import 'package:rxdart/rxdart.dart';

@Injectable()
class SignUpViewModel extends BaseViewModel {
  final BehaviorSubject<String> _controller =
      BehaviorSubject<String>.seeded("");
  Stream get controller => _controller.stream;
  void changeValue(
      String value, context, TextEditingController? profileController) {
    if (value == L10n.of(context)!.student) {
      _controller.add(L10n.of(context)!.student);
    } else if (value == L10n.of(context)!.teacher) {
      _controller.add(L10n.of(context)!.teacher);
    } else if (value == L10n.of(context)!.mentor) {
      _controller.add(L10n.of(context)!.mentor);
    }
    profileController?.text = _controller.value;
  }

  @override
  void clear() {}
}
