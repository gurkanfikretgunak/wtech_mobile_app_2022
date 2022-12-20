import 'package:client/core/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../data/local/theme_preference.dart';

@Injectable()
class ChangeThemeViewModel extends BaseViewModel with ThemeChangePreference {
  final _theme = BehaviorSubject<bool>.seeded(true);
  Stream get theme => _theme.stream;

  changeTheme() {
    _theme.value = !_theme.value;
  }

  @override
  void clear() {}
}
