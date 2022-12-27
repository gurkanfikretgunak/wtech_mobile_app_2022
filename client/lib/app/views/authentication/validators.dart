import 'dart:async';

import 'package:client/core/utils/extensions/validation_extension.dart';

class Validators {
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.isValidEmail) {
      sink.add(email);
    } else {
      sink.addError('Enter a valid email');
    }
  });
  final validateName =
      StreamTransformer<String, String>.fromHandlers(handleData: (name, sink) {
    if (name.isValidName) {
      sink.add(name);
    } else {
      sink.addError('Invalid name, please enter more than 3 characters');
    }
  });
  final validatePhone =
      StreamTransformer<String, String>.fromHandlers(handleData: (phone, sink) {
    if (phone.isValidName) {
      sink.add(phone);
    } else {
      sink.addError('Please enter valid mobile number');
    }
  });

  final validateId =
      StreamTransformer<String, String>.fromHandlers(handleData: (id, sink) {
    if (id.isValidName) {
      sink.add(id);
    } else {
      sink.addError('Please enter valid id number');
    }
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.isValidPassword) {
      sink.add(password);
    } else {
      sink.addError('Invalid password, please enter more than 6 characters');
    }
  });
}
