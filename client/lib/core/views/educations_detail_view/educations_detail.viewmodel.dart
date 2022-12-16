import 'package:client/core/views/abstractions/base_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../l10n/app_l10n.dart';

@Injectable()
class EducationsDetailViewModel extends BaseViewModel {

  BehaviorSubject<bool> _favorite = BehaviorSubject<bool>.seeded(false);
  Stream get favorite => _favorite.stream;

  void changeFavorite() {
    if(_favorite == false) {
      _favorite.add(true);
    }
    else if(_favorite == true) {
      _favorite.add(false);
    }
  }


  @override
  void clear() {
    
  }

}