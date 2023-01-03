import 'package:client/app/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Injectable()
class HelpViewModel extends BaseViewModel {
  final _expansion = BehaviorSubject<bool>.seeded(false);
  Stream get expansion => _expansion.stream;

  changeExpansion() => _expansion.value = !_expansion.value;

  @override
  void clear() {
    changeExpansion();
  }
}
