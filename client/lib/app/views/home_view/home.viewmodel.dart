import 'package:client/app/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Injectable()
class HomeViewModel extends BaseViewModel {
  final _login = BehaviorSubject<String>.seeded("");

  Stream get login => _login.stream;
  void setLogin(String value) => _login.add(value);

  @override
  void clear() {
    _login.add("");
  }
}
