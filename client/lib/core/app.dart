import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/themes/custom_theme.dart';
import 'package:client/core/views/applys_view/applys.view.dart';
import 'package:client/core/views/educations_detail_view/educations_detail.view.dart';
import 'package:client/core/views/educations_view/educations.view.dart';
import 'package:client/core/views/mentors_details_view/mentors_details.view.dart';
import 'package:client/core/views/news_detail_view/news_detail.view.dart';
import 'package:client/core/views/news_view/news.view.dart';
import 'package:client/core/views/sample_view/bloc/sample_bloc.dart';
import 'package:client/core/views/sample_view/sample_view.dart';
import 'package:client/core/views/signin_view/signin_account_view.dart';
import 'package:client/core/views/signin_view/signin_email_view.dart';
import 'package:client/core/views/signup_view/signup.view.dart';
import 'package:client/core/views/videos_view/videos.view.dart';
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
        home: Provider<MainBloc>(
          create: (_) => MainBloc(),
          dispose: (context, bloc) => bloc.dispose(),
          child: const MainScreen(),
        ),
        title: "Flutter Boilerplate : ${Flavor.I.getString(Keys.appTitle)}",
        theme: CustomTheme.customThemeData(context),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
