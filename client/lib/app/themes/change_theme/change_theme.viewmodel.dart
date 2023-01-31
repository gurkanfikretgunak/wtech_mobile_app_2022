import 'package:client/app/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';
// ignore: depend_on_referenced_packages
import 'package:rxdart/rxdart.dart';

import '../../../core/data/local/theme_preference.dart';

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
