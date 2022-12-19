import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Injectable()
class SplashViewModel {
  splashDelay() {
    Future.delayed(const Duration(milliseconds: 3000), () {});
  }
}
