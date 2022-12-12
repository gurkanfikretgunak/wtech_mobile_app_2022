import 'package:client/core/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class MentorsViewModel extends BaseViewModel {
  @override
  void clear() {
    // TODO: implement clear
  }
  Future<List> getMentors() async {
    setLoading(true);
    await Future.delayed(const Duration(seconds: 1));
    setLoading(false);
    return [];
  }
}
