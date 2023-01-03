import 'package:client/app/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';
// ignore: depend_on_referenced_packages
import 'package:rxdart/rxdart.dart';

@Injectable()
class AboutViewModel extends BaseViewModel {
  final _example = BehaviorSubject<bool>.seeded(false);

  Stream get example => _example.stream;

  userProfileEdit() {}

  @override
  void clear() {
    // TODO: implement clear
  }
}
