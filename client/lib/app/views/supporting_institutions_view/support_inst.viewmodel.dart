import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import '../abstractions/base_view_model.dart';
@Injectable()
class SupportInstutionsViewModel extends BaseViewModel{
  BehaviorSubject<String> _support = BehaviorSubject<String>.seeded("");
  Stream get support => _support.stream;
  @override
  void clear() {
  }
}