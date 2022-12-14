import 'package:client/core/views/abstractions/base_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Injectable()
class SignUpViewModel extends BaseViewModel{

  final _dropDownValue = BehaviorSubject<String>.seeded("");

  Stream get dropDownValue => _dropDownValue.stream;
  void changeValue(String value) {
    _dropDownValue.add(value);
  } 

  @override
  void clear() {
  
  }
  

}