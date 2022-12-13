import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/themes/custom_theme.dart';
import 'package:client/core/views/news_view/news.view.dart';
import 'package:client/core/views/sample_view/bloc/sample_bloc.dart';
import 'package:client/core/views/sample_view/sample_view.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
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
        home: Provider<MainBloc>(
          create: (_) => MainBloc(),
          dispose: (context, bloc) => bloc.dispose(),
          child: NewsView(),
        ),
        title: "Flutter Boilerplate : ${Flavor.I.getString(Keys.appTitle)}",
        theme: CustomTheme.customThemeData(context),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
