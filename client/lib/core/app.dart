import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/routes/app_routest.dart';
import 'package:client/core/themes/custom_theme.dart';
import 'package:client/core/views/home_view/home.view.dart';
import 'package:client/core/views/sample_view/bloc/sample_bloc.dart';
import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

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
        onGenerateRoute: AppRoutes.instance.onGenerateRoute,
        home: Provider<MainBloc>(
          create: (_) => MainBloc(),
          dispose: (context, bloc) => bloc.dispose(),
          child: HomeView(),
        ),
        title: "Flutter Boilerplate : ${Flavor.I.getString(Keys.appTitle)}",
        theme: CustomTheme.customThemeData(context),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
