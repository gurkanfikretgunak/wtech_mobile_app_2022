import 'package:injectable/injectable.dart';

@Injectable()
class SplashViewModel {
  splashDelay() {
    Future.delayed(const Duration(milliseconds: 3000), () {});
  }
}
