extension InputValidation on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp = RegExp(r"^\s*([A-Za-z]{1,})+\.?$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!]).{8,}');
    return passwordRegExp.hasMatch(this);
  }

  bool get validateMobile {
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    final RegExp regExp = RegExp(patttern);
    return regExp.hasMatch(this);
  }

  bool get validateId {
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    final RegExp regExpId = RegExp(patttern);
    return regExpId.hasMatch(this);
  }
}
