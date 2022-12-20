import 'package:client/core/views/abstractions/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../l10n/app_l10n.dart';

@Injectable()
class BottomNavBarViewModel extends BaseViewModel {
  final _currentPage = BehaviorSubject<int>.seeded(0);
  Stream get currentPage => _currentPage.stream;

  setCurrentPage(value) => _currentPage.add(value);

  void onTap(value) {
    setCurrentPage(value);
  }

  buildAppBarTitle({
    required int pageIndex,
    required BuildContext context,
  }) {
    switch (pageIndex) {
      case 0:
        return L10n.of(context)!.hello;
      case 1:
        return "Eğitimler";
      case 2:
        return L10n.of(context)!.favorites;
      case 3:
        return L10n.of(context)!.apply;
      default:
    }
  }

  @override
  void clear() {}
}
