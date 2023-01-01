import 'package:client/app/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';
// ignore: depend_on_referenced_packages
import 'package:rxdart/rxdart.dart';

import '../../../core/data/local/theme_preference.dart';

@Injectable()
class ChangeThemeViewModel extends BaseViewModel with ThemeChangePreference {
  final _theme = BehaviorSubject<bool>.seeded(false);
  Stream get theme => _theme.stream;

  set changeTheme(bool value) {
    _theme.value = value;
  }

  @override
  void clear() {}
}
