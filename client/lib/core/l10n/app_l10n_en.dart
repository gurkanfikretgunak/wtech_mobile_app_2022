import 'app_l10n.dart';

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get appBarTitle => 'Flutter Boilerplate';

  @override
  String get signIn => 'Sign In';

  @override
  String get signUp => 'Sign Up';
}
