import 'package:client/core/views/news_view/news.view.dart';
import 'package:flutter/material.dart';

import '../enums/routes.enum.dart';

class AppRoutes {
  AppRoutes._init();
  static final AppRoutes _instance = AppRoutes._init();
  static AppRoutes get instance => _instance;

  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    final routes = Routes.values.byName(routeSettings.name!);

    switch (routes) {
      case Routes.news:
        return navigate(NewsView());
      case Routes.about:
        // TODO: Handle this case.
        break;
      case Routes.blogs:
        // TODO: Handle this case.
        break;
      case Routes.blogDetail:
        // TODO: Handle this case.
        break;
      case Routes.educations:
        // TODO: Handle this case.
        break;
      case Routes.educationDetail:
        // TODO: Handle this case.
        break;
      case Routes.events:
        // TODO: Handle this case.
        break;
      case Routes.eventDetail:
        // TODO: Handle this case.
        break;
      case Routes.forgotPassword:
        // TODO: Handle this case.
        break;
      case Routes.home:
        // TODO: Handle this case.
        break;
      case Routes.jobs:
        // TODO: Handle this case.
        break;
      case Routes.jobDetail:
        // TODO: Handle this case.
        break;
      case Routes.mentors:
        // TODO: Handle this case.
        break;
      case Routes.mentorDetail:
        // TODO: Handle this case.
        break;
      case Routes.newsDetail:
        // TODO: Handle this case.
        break;
      case Routes.onBoarding:
        // TODO: Handle this case.
        break;
      case Routes.signin:
        // TODO: Handle this case.
        break;
      case Routes.signup:
        // TODO: Handle this case.
        break;
      case Routes.splash:
        // TODO: Handle this case.
        break;
      case Routes.userProfile:
        // TODO: Handle this case.
        break;
      case Routes.videos:
        // TODO: Handle this case.
        break;

      default:
        return navigate(
          Text('No route defined for ${routes.name}'),
        );
    }
    return null;
  }

  Route<dynamic>? navigate(Widget child) {
    return MaterialPageRoute(
      builder: (context) {
        return child;
      },
    );
  }
}
