import 'package:client/core/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Injectable()
class JobsDetailViewModel extends BaseViewModel {
  Future<List> getJobs() async {
    setLoading(true);
    await Future.delayed(const Duration(seconds: 1));
    setLoading(false);
    return [];
  }

  @override
  void clear() {}
}
