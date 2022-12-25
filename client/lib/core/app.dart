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

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = GetIt.I.get<ChangeThemeViewModel>();

    return FlavorBanner(
      location: BannerLocation.topStart,
      child: StreamBuilder(
          stream: vm.theme,
          builder: (context, snapshot) {
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
              theme: CustomTheme.customLightTheme(context),
              debugShowCheckedModeBanner: false,
            );
          }),
    );
  }
}
