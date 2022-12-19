import 'package:client/core/views/abstractions/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../l10n/app_l10n.dart';

@Injectable()
class ProfileEditViewModel extends BaseViewModel {
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
    print(profileController!.text);
  }

  @override
  void clear() {}
}
