import 'package:client/core/views/abstractions/base_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../l10n/app_l10n.dart';

@Injectable()
class NavbarViewModel extends BaseViewModel {
  final BehaviorSubject<int> _page = BehaviorSubject<int>.seeded(0);
  Stream get page => _page.stream;

  void changePage(index) {
    _page.add(index);
  }

  @override
  void clear() {}
}
