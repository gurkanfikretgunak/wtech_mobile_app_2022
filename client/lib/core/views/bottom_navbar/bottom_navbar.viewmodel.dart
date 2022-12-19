import 'package:client/core/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Injectable()
class BottomNavBarViewModel extends BaseViewModel {
  final _currentPage = BehaviorSubject<int>.seeded(0);
  Stream get currentPage => _currentPage.stream;

  setCurrentPage(value) => _currentPage.add(value);

  void onTap(value) {
    setCurrentPage(value);
  }

  @override
  void clear() {}
}
