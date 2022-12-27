import 'package:client/app/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Injectable()
class UserProfileViewModel extends BaseViewModel {
  final _userStage = BehaviorSubject<bool>.seeded(false);

  Stream get userStage => _userStage.stream;

  userProfileEdit() {}

  @override
  void clear() {
    _userStage.add(false);
  }
}
