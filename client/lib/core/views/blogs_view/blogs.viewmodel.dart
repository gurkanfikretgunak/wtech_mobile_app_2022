import 'package:client/core/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Injectable()
class BlogsViewModel extends BaseViewModel {
  final _login = BehaviorSubject<String>.seeded("");
  final _password = BehaviorSubject<String>.seeded("");
  final BehaviorSubject<bool> _favorite = BehaviorSubject<bool>.seeded(true);
  Stream get favorite => _favorite.stream;

  Stream get login => _login.stream;
  void setLogin(String value) => _login.add(value);

  Stream get password => _password.stream;
  void setPassword(String value) => _password.add(value);

  Future<bool> signIn() async {
    setLoading(true);
    await Future.delayed(const Duration(seconds: 1));
    setLoading(false);
    return false;
  }

  @override
  void clear() {
    _login.add("");
    _password.add("");
  }

  bool heartFill() {
    if(_favorite.value == true) {
      _favorite.value = false;
    }
    else if(_favorite.value == false) {
      _favorite.value = true;
    }
    return _favorite.value;
  }
}
