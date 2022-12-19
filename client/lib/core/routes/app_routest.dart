import 'package:client/core/views/blogs_view/blogs.view.dart';
import 'package:client/core/views/educations_detail_view/educations_detail.view.dart';
import 'package:client/core/views/educations_view/educations.view.dart';
import 'package:client/core/views/jobs_details_view/jobs_detail.view.dart';
import 'package:client/core/views/jobs_view/jobs.view.dart';
import 'package:client/core/views/mentors_view/mentors.view.dart';
import 'package:client/core/views/news_view/news.view.dart';
import 'package:client/core/views/videos_view/videos.view.dart';
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
        return navigate(BlogsView());

      case Routes.educations:
        return navigate(const EducationView());

      case Routes.educationDetail:
        return navigate(const EducationsDetailView());

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
        return navigate(JobsView());

      case Routes.jobDetail:
        return navigate(JobsDetailView());

      case Routes.mentors:
        return navigate(MentorsView());
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
        return navigate(VideosView());

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
