// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:client/app/themes/change_theme/change_theme.viewmodel.dart'
    as _i9;
import 'package:client/app/views/about_view/about.viewmodel.dart' as _i3;
import 'package:client/app/views/applys_view/applys.viewmodel.dart' as _i4;
import 'package:client/app/views/authentication/authentication.viewmodel.dart'
    as _i5;
import 'package:client/app/views/blogs_detail_view/blogs_detail.viewmodel.dart'
    as _i6;
import 'package:client/app/views/blogs_view/blogs.viewmodel.dart' as _i7;
import 'package:client/app/views/bottom_navbar/bottom_navbar.viewmodel.dart'
    as _i8;
import 'package:client/app/views/educations_detail_view/educations_detail.viewmodel.dart'
    as _i10;
import 'package:client/app/views/educations_view/educations.viewmodel.dart'
    as _i11;
import 'package:client/app/views/events_view/events.viewmodel.dart' as _i12;
import 'package:client/app/views/favorites_view/favorites.viewmodel.dart'
    as _i13;
import 'package:client/app/views/forgot_password_view/forgotpass.viewmodel.dart'
    as _i14;
import 'package:client/app/views/forgot_password_view/fotgotpass.viewmodel.dart'
    as _i15;
import 'package:client/app/views/founding_members_view/founding.members.viewmodel.dart'
    as _i16;
import 'package:client/app/views/help_view/help.viewmodel.dart' as _i17;
import 'package:client/app/views/home_view/home.viewmodel.dart' as _i18;
import 'package:client/app/views/jobs_details_view/jobs_detail.viewmodel.dart'
    as _i19;
import 'package:client/app/views/jobs_view/jobs.viewmodel.dart' as _i20;
import 'package:client/app/views/mentors_details_view/mentors_details.viewmodel.dart'
    as _i21;
import 'package:client/app/views/mentors_view/mentors.viewmodel.dart' as _i22;
import 'package:client/app/views/news_detail_view/news_detail.viewmodel.dart'
    as _i23;
import 'package:client/app/views/news_view/news.viewmodel.dart' as _i24;
import 'package:client/app/views/profile_edit_view/profile_edit.viewmodel.dart'
    as _i25;
import 'package:client/app/views/settings_view/settings.viewmodel.dart' as _i27;
import 'package:client/app/views/signup_view/signup.viewmodel.dart' as _i28;
import 'package:client/app/views/splash_view/splash.viewmodel.dart' as _i29;
import 'package:client/app/views/supporting_institutions_view/support_inst.viewmodel.dart'
    as _i30;
import 'package:client/app/views/user_profile_view/user_profile.viewmodel.dart'
    as _i31;
import 'package:client/app/views/videos_view/videos.viewmodel.dart' as _i32;
import 'package:client/core/data/network/abstractions/users_service.dart'
    as _i35;
import 'package:client/core/data/network/services/users/user_api.dart' as _i36;
import 'package:client/core/di/config/app_config.dart' as _i33;
import 'package:client/core/di/config/raw_helper.dart' as _i26;
import 'package:client/core/di/config/register_module.dart' as _i37;
import 'package:dio/dio.dart' as _i34;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AboutViewModel>(() => _i3.AboutViewModel());
  gh.factory<_i4.ApplysViewModel>(() => _i4.ApplysViewModel());
  gh.factory<_i5.AuthenticationViewModel>(() => _i5.AuthenticationViewModel());
  gh.factory<_i6.BlogsDetailViewModel>(() => _i6.BlogsDetailViewModel());
  gh.factory<_i7.BlogsViewModel>(() => _i7.BlogsViewModel());
  gh.factory<_i8.BottomNavBarViewModel>(() => _i8.BottomNavBarViewModel());
  gh.factory<_i9.ChangeThemeViewModel>(() => _i9.ChangeThemeViewModel());
  gh.factory<_i10.EducationsDetailViewModel>(
      () => _i10.EducationsDetailViewModel());
  gh.factory<_i11.EducationsViewModel>(() => _i11.EducationsViewModel());
  gh.factory<_i12.EventsViewModel>(() => _i12.EventsViewModel());
  gh.factory<_i13.FavoritesViewModel>(() => _i13.FavoritesViewModel());
  gh.factory<_i14.ForgotPasswordViewModel>(
      () => _i14.ForgotPasswordViewModel());
  gh.factory<_i15.ForgotPasswordViewModel>(
      () => _i15.ForgotPasswordViewModel());
  gh.factory<_i16.FoundingMembersViewModel>(
      () => _i16.FoundingMembersViewModel());
  gh.factory<_i17.HelpViewModel>(() => _i17.HelpViewModel());
  gh.factory<_i18.HomeViewModel>(() => _i18.HomeViewModel());
  gh.factory<_i19.JobsDetailViewModel>(() => _i19.JobsDetailViewModel());
  gh.factory<_i20.JobsViewModel>(() => _i20.JobsViewModel());
  gh.factory<_i21.MentorsDetailsViewModel>(
      () => _i21.MentorsDetailsViewModel());
  gh.factory<_i22.MentorsViewModel>(() => _i22.MentorsViewModel());
  gh.factory<_i23.NewsDetailViewModel>(() => _i23.NewsDetailViewModel());
  gh.factory<_i24.NewsViewModel>(() => _i24.NewsViewModel());
  gh.factory<_i25.ProfileEditViewModel>(() => _i25.ProfileEditViewModel());
  await gh.singletonAsync<_i26.RawConfig>(
    () => registerModule.config(),
    preResolve: true,
  );
  gh.factory<_i27.SettingsViewModel>(() => _i27.SettingsViewModel());
  gh.factory<_i28.SignUpViewModel>(() => _i28.SignUpViewModel());
  gh.factory<_i29.SplashViewModel>(() => _i29.SplashViewModel());
  gh.factory<_i30.SupportInstutionsViewModel>(
      () => _i30.SupportInstutionsViewModel());
  gh.factory<_i31.UserProfileViewModel>(() => _i31.UserProfileViewModel());
  gh.factory<_i32.VideosViewModel>(() => _i32.VideosViewModel());
  gh.singleton<_i33.AppConfig>(_i33.AppConfig(get<_i26.RawConfig>()));
  gh.singleton<_i34.Dio>(registerModule.dio(get<_i33.AppConfig>()));
  gh.factory<_i35.UserService>(() => _i36.RestUserService(
        get<_i34.Dio>(),
        get<_i33.AppConfig>(),
      ));
  return get;
}

class _$RegisterModule extends _i37.RegisterModule {}
