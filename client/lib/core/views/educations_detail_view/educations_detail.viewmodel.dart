import 'package:client/core/views/abstractions/base_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../l10n/app_l10n.dart';

@Injectable()
class EducationsDetailViewModel extends BaseViewModel {
  BehaviorSubject<bool> _favorite = BehaviorSubject<bool>.seeded(true);
  Stream get favorite => _favorite.stream;

  bool changeFavorite() {
    if (_favorite.value == true) {
      _favorite.value = false;
    } else if (_favorite.value == false) {
      _favorite.value = true;
    }
    return _favorite.value;
  }

  @override
  void clear() {}
}
