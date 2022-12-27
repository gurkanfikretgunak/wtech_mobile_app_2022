import 'package:client/app/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Injectable()
class NewsViewModel extends BaseViewModel {
  final _example = BehaviorSubject<bool>.seeded(false);

  Stream get example => _example.stream;

  userProfileEdit() {}

  @override
  void clear() {
    // TODO: implement clear
  }
}
