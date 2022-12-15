import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/themes/custom_theme.dart';
import 'package:client/core/views/home_view/home.view.dart';

// ignore: depend_on_referenced_packages
import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
      location: BannerLocation.topStart,
      child: MaterialApp(
        localizationsDelegates: L10n.localizationsDelegates,
        supportedLocales: L10n.supportedLocales,
        // home: FlavorView(),
        home: HomeView(),
        title: "Flutter Boilerplate : ${Flavor.I.getString(Keys.appTitle)}",
        theme: CustomTheme.customThemeData(context),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
