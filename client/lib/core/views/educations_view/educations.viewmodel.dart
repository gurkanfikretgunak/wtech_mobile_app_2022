import 'package:client/core/views/abstractions/base_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Injectable()
class EducationsViewModel extends BaseViewModel {
  final _heartFill = BehaviorSubject<bool>.seeded(false);

  Stream get heartFill=> _heartFill.stream;

  bool fillHeart = false;
  @override
  void clear() {
    
  }

  heartAnimation() {
    return GestureDetector(
      onTap: () {
        
      }
    );
  }

}