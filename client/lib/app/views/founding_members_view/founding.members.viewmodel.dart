import 'package:client/app/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class FoundingMembersViewModel extends BaseViewModel {
  @override
  void clear() {}
  Future<List> getMentors() async {
    setLoading(true);
    await Future.delayed(const Duration(seconds: 1));
    setLoading(false);
    return [];
  }
}
