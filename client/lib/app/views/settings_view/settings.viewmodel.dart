import 'package:client/app/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Injectable()
class SettingsViewModel extends BaseViewModel {
  final _switcher = BehaviorSubject<bool>.seeded(false);
  Stream get switcher => _switcher.stream;

  changeSwitcher() => _switcher.value = !_switcher.value;

  @override
  void clear() {
    changeSwitcher();
  }
}
