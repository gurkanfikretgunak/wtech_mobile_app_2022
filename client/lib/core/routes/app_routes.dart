import 'package:client/core/views/about_view/about.view.dart';
import 'package:client/core/views/blogs_view/blogs.view.dart';
import 'package:client/core/views/educations_detail_view/educations_detail.view.dart';
import 'package:client/core/views/educations_view/educations.view.dart';
import 'package:client/core/views/events_view/events.view.dart';
import 'package:client/core/views/forgot_password_view/forgotpass.view.dart';
import 'package:client/core/views/help_view/help.view.dart';
import 'package:client/core/views/jobs_details_view/jobs_detail.view.dart';
import 'package:client/core/views/jobs_view/jobs.view.dart';
import 'package:client/core/views/mentors_view/mentors.view.dart';
import 'package:client/core/views/news_view/news.view.dart';
import 'package:client/core/views/settings_view/settings.view.dart';
import 'package:client/core/views/signin_view/signin_email_view.dart';
import 'package:client/core/views/signup_view/signup.view.dart';
import 'package:client/core/views/user_profile_view/user_profile.view.dart';
import 'package:client/core/views/videos_view/videos.view.dart';
import 'package:flutter/material.dart';
import '../utils/constants/enums/routes.enum.dart';
import '../views/bottom_navbar/bottom_navbar.view.dart';
import '../views/founding_members_view/founding.members.view.dart';
import '../views/onboarding_view/onboarding.view.dart';
import '../views/signin_view/signin_account_view.dart';

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
        return navigate(const AboutView());

      case Routes.blogs:
        return navigate(BlogsView());

      case Routes.educations:
        return navigate(const EducationView());

      case Routes.educationDetail:
        return navigate(const EducationsDetailView());

      case Routes.events:
        return navigate(const EventsView());

      case Routes.eventDetail:
        // TODO: Handle this case.
        break;

      case Routes.forgotPassword:
        return navigate(ForgotPasswordView());

      case Routes.home:
        return navigate(CustomBottomNavBar());

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
        return navigate(const OnboardingView());

      case Routes.signinWithAccount:
        return navigate(const SignInAccountView());

      case Routes.signinWithEmail:
        return navigate(const SignInEmailView());

      case Routes.signup:
        return navigate(SignUpView());

      case Routes.splash:
        // TODO: Handle this case.
        break;
      case Routes.userProfile:
        return navigate(UserProfileView());

      case Routes.videos:
        return navigate(VideosView());

      case Routes.settings:
        return navigate(SettingsView());

      case Routes.foundingMembersView:
        return navigate(FoundingMembersView());

      case Routes.missionAndVision:
        return navigate(const HelpView(
          appbarText: '-',
          expansionText: "Title Help - 1",
          expansionTextTwo: "Title Help - 2",
        ));

      default:
        return navigate(
          Text('No route defined for ${routes.name}'),
        );
    }
    return null;
  }

  Route<dynamic> navigate(Widget child) {
    return MaterialPageRoute(
      builder: (context) {
        return child;
      },
    );
  }
}
