import 'package:client/core/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SplashViewModel extends BaseViewModel {
  splashDelay() {
    Future.delayed(const Duration(milliseconds: 3000), () {});
  }

  @override
  void clear() {}
}
