import 'dart:async';
import 'package:client/app/views/abstractions/base_view_model.dart';
import 'package:client/app/views/authentication/validators.dart';
import 'package:injectable/injectable.dart';
// ignore: depend_on_referenced_packages
import 'package:rxdart/rxdart.dart';

@Injectable()
class AuthenticationViewModel extends BaseViewModel with Validators {
// Creating a new stream through the controller
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  final _nameController = BehaviorSubject<String>();
  final _phoneController = BehaviorSubject<String>();

  final _idController = BehaviorSubject<String>();

  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);
  Stream<String> get name => _nameController.stream.transform(validateName);
  Stream<String> get phone => _phoneController.stream.transform(validatePhone);
  Stream<String> get id => _idController.stream.transform(validateId);

  // change data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;
  Function(String) get changeName => _nameController.sink.add;
  Function(String) get changePhone => _phoneController.sink.add;

  Function(String) get changeId => _idController.sink.add;

  @override
  void clear() {
    _emailController.close();
    _passwordController.close();
  }
}
