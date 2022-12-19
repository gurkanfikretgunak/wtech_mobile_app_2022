import 'package:client/core/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Injectable()
class SettingsViewModel extends BaseViewModel {
  BehaviorSubject<bool> _switcher = BehaviorSubject<bool>.seeded(false);
  Stream get switcher => _switcher.stream;

  changeSwitcher(value) {
    if (_switcher == value) {
      _switcher.value = false;
    } else if (_switcher == value) {
      _switcher.value = true;
    }
    return _switcher.value;
  }

  @override
  void clear() {}
}
