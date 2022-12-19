import 'package:client/core/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Injectable()
class EducationsDetailViewModel extends BaseViewModel {
  final BehaviorSubject<bool> _favorite = BehaviorSubject<bool>.seeded(true);
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
