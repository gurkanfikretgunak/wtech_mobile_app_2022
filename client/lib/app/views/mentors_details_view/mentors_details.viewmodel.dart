import 'package:client/app/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class MentorsDetailsViewModel extends BaseViewModel {
  @override
  void clear() {
    // TODO: implement clear
  }
  void getMentorDetails() async {
    setLoading(true);
    await Future.delayed(const Duration(seconds: 1));
    setLoading(false);
  }
}
