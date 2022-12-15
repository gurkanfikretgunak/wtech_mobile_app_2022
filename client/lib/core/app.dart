import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/themes/custom_theme.dart';
<<<<<<< HEAD
<<<<<<< HEAD
import 'package:client/core/views/forgot_password_view/forgotpass.view.dart';
import 'package:client/core/views/sample_view/bloc/sample_bloc.dart';
import 'package:client/core/views/sample_view/sample_view.dart';
import 'package:client/core/views/signup_view/signup.view.dart';
=======
import 'package:client/core/views/home_view/home.view.dart';

>>>>>>> 914b689cf6fc8b62e820ba5d92d74f441914e779
// ignore: depend_on_referenced_packages
=======
import 'package:client/core/views/sample_view/bloc/sample_bloc.dart';
import 'package:client/core/views/sample_view/sample_view.dart';
>>>>>>> 6ebb626fd66f2019a0795c76607aec259da5e617
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
<<<<<<< HEAD
<<<<<<< HEAD
        home: Provider<MainBloc>(
          create: (_) => MainBloc(),
          dispose: (context, bloc) => bloc.dispose(),
          child:  SignUpView(),
        ),
=======
        home: HomeView(),
>>>>>>> 914b689cf6fc8b62e820ba5d92d74f441914e779
=======
        home: Provider<MainBloc>(
          create: (_) => MainBloc(),
          dispose: (context, bloc) => bloc.dispose(),
          child: const MainScreen(),
        ),
>>>>>>> 6ebb626fd66f2019a0795c76607aec259da5e617
        title: "Flutter Boilerplate : ${Flavor.I.getString(Keys.appTitle)}",
        theme: CustomTheme.customThemeData(context),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
