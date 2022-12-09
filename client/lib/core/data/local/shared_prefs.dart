// ignore: import_of_legacy_library_into_null_safe
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  void setStorageUsers(String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("email", value);
  }

  Future<String?> getStorageUsers() async {
    final prefs = await SharedPreferences.getInstance();
    String? result = prefs.getString("email");
    return result;
  }
}
