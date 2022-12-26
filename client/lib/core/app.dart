import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/routes/app_routes.dart';
import 'package:client/core/utils/themes/change_theme/change_theme.viewmodel.dart';
import 'package:client/core/views/sample_view/bloc/sample_bloc.dart';
import 'package:client/core/views/splash_view/splash.view.dart';
import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

import 'utils/themes/custom_theme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  ThemeChangeProvider appModel = ThemeChangeProvider();

  @override
  void initState() {
    super.initState();
    _initAppTheme();
  }

  void _initAppTheme() async {
    appModel.darkTheme = await appModel.appPreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeChangeProvider()),
      ],
      child: FlavorBanner(
        location: BannerLocation.topStart,
        child: Consumer<ThemeChangeProvider>(
          builder: (context, value, child) {
            return MaterialApp(
              localizationsDelegates: L10n.localizationsDelegates,
              supportedLocales: L10n.supportedLocales,
              onGenerateRoute: AppRoutes.instance.onGenerateRoute,
              home: Provider<MainBloc>(
                create: (_) => MainBloc(),
                dispose: (context, bloc) => bloc.dispose(),
                child: SplashView(),
              ),
              title: "Flutter Boilerplate : ${Flavor.I.getString(Keys.appTitle)}",
              theme: value.darkTheme ? CustomTheme.customLightTheme(context) : CustomTheme.customDarkTheme(context),
              debugShowCheckedModeBanner: false,
            );
          },
        ),
      ),
    );
  }
}
