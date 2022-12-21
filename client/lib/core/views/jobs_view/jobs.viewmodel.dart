import 'package:client/core/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Injectable()
class JobsViewModel extends BaseViewModel {
  final BehaviorSubject<bool> _favorite = BehaviorSubject<bool>.seeded(true);
  Stream get favorite => _favorite.stream;

  Future<List> getJobs() async {
    setLoading(true);
    await Future.delayed(const Duration(seconds: 1));
    setLoading(false);
    return [];
  }

  @override
  void clear() {}

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
