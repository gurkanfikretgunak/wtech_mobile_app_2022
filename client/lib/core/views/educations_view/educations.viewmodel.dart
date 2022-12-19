import 'package:client/core/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Injectable()
class EducationsViewModel extends BaseViewModel {
  final BehaviorSubject<bool> _heartFill = BehaviorSubject<bool>.seeded(true);
  Stream get heartFill => _heartFill.stream;

  bool fillHeart = false;
  @override
  void clear() {}

  heartAnimation() {
    if (_heartFill.value == true) {
      _heartFill.value = false;
    } else if (_heartFill.value == false) {
      _heartFill.value = true;
    }
    return _heartFill.value;
  }
}
