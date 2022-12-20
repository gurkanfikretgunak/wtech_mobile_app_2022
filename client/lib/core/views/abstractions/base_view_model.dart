// ignore: depend_on_referenced_packages
import 'package:rxdart/subjects.dart';

abstract class BaseViewModel {
  final _loading = BehaviorSubject<bool>.seeded(false);

  Stream get loading => _loading.stream;
  void setLoading(bool value) => _loading.add(value);

  void clear();
}
