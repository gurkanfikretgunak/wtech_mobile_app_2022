// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:client/core/data/network/abstractions/todos_service.dart'
    as _i33;
import 'package:client/core/data/network/abstractions/users_service.dart'
    as _i35;
import 'package:client/core/data/network/services/todos/todo_api.dart' as _i34;
import 'package:client/core/data/network/services/users/user_api.dart' as _i36;
import 'package:client/core/di/config/app_config.dart' as _i31;
import 'package:client/core/di/config/raw_helper.dart' as _i24;
import 'package:client/core/di/config/register_module.dart' as _i37;
import 'package:client/core/views/about_view/about.viewmodel.dart' as _i3;
import 'package:client/core/views/applys_view/applys.viewmodel.dart' as _i4;
import 'package:client/core/views/authentication/authentication.viewmodel.dart'
    as _i5;
import 'package:client/core/views/blogs_detail_view/blogs_detail.viewmodel.dart'
    as _i6;
import 'package:client/core/views/blogs_view/blogs.viewmodel.dart' as _i7;
import 'package:client/core/views/bottom_navbar/bottom_navbar.viewmodel.dart'
    as _i8;
import 'package:client/core/views/educations_detail_view/educations_detail.viewmodel.dart'
    as _i9;
import 'package:client/core/views/educations_view/educations.viewmodel.dart'
    as _i10;
import 'package:client/core/views/favorites_view/favorites.viewmodel.dart'
    as _i11;
import 'package:client/core/views/forgot_password_view/forgotpass.viewmodel.dart'
    as _i12;
import 'package:client/core/views/forgot_password_view/fotgotpass.viewmodel.dart'
    as _i13;
import 'package:client/core/views/founding_members_view/founding.members.viewmodel.dart'
    as _i14;
import 'package:client/core/views/help_view/help.viewmodel.dart' as _i15;
import 'package:client/core/views/home_view/home.viewmodel.dart' as _i16;
import 'package:client/core/views/jobs_details_view/jobs_detail.viewmodel.dart'
    as _i17;
import 'package:client/core/views/jobs_view/jobs.viewmodel.dart' as _i18;
import 'package:client/core/views/mentors_details_view/mentors_details.viewmodel.dart'
    as _i19;
import 'package:client/core/views/mentors_view/mentors.viewmodel.dart' as _i20;
import 'package:client/core/views/news_detail_view/news_detail.viewmodel.dart'
    as _i21;
import 'package:client/core/views/news_view/news.viewmodel.dart' as _i22;
import 'package:client/core/views/profile_edit_view/profile_edit.viewmodel.dart'
    as _i23;
import 'package:client/core/views/settings_view/settings.viewmodel.dart'
    as _i25;
import 'package:client/core/views/signup_view/signup.viewmodel.dart' as _i26;
import 'package:client/core/views/splash_view/splash.viewmodel.dart' as _i27;
import 'package:client/core/views/supporting_institutions_view/support_inst.viewmodel.dart'
    as _i28;
import 'package:client/core/views/user_profile_view/user_profile.viewmodel.dart'
    as _i29;
import 'package:client/core/views/videos_view/videos.viewmodel.dart' as _i30;
import 'package:dio/dio.dart' as _i32;
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
  gh.factory<_i9.EducationsDetailViewModel>(
      () => _i9.EducationsDetailViewModel());
  gh.factory<_i10.EducationsViewModel>(() => _i10.EducationsViewModel());
  gh.factory<_i11.FavoritesViewModel>(() => _i11.FavoritesViewModel());
  gh.factory<_i12.ForgotPasswordViewModel>(
      () => _i12.ForgotPasswordViewModel());
  gh.factory<_i13.ForgotPasswordViewModel>(
      () => _i13.ForgotPasswordViewModel());
  gh.factory<_i14.FoundingMembersViewModel>(
      () => _i14.FoundingMembersViewModel());
  gh.factory<_i15.HelpViewModel>(() => _i15.HelpViewModel());
  gh.factory<_i16.HomeViewModel>(() => _i16.HomeViewModel());
  gh.factory<_i17.JobsDetailViewModel>(() => _i17.JobsDetailViewModel());
  gh.factory<_i18.JobsViewModel>(() => _i18.JobsViewModel());
  gh.factory<_i19.MentorsDetailsViewModel>(
      () => _i19.MentorsDetailsViewModel());
  gh.factory<_i20.MentorsViewModel>(() => _i20.MentorsViewModel());
  gh.factory<_i21.NewsDetailViewModel>(() => _i21.NewsDetailViewModel());
  gh.factory<_i22.NewsViewModel>(() => _i22.NewsViewModel());
  gh.factory<_i23.ProfileEditViewModel>(() => _i23.ProfileEditViewModel());
  await gh.singletonAsync<_i24.RawConfig>(
    () => registerModule.config(),
    preResolve: true,
  );
  gh.factory<_i25.SettingsViewModel>(() => _i25.SettingsViewModel());
  gh.factory<_i26.SignUpViewModel>(() => _i26.SignUpViewModel());
  gh.factory<_i27.SplashViewModel>(() => _i27.SplashViewModel());
  gh.factory<_i28.SupportInstutionsViewModel>(
      () => _i28.SupportInstutionsViewModel());
  gh.factory<_i29.UserProfileViewModel>(() => _i29.UserProfileViewModel());
  gh.factory<_i30.VideosViewModel>(() => _i30.VideosViewModel());
  gh.singleton<_i31.AppConfig>(_i31.AppConfig(get<_i24.RawConfig>()));
  gh.singleton<_i32.Dio>(registerModule.dio(get<_i31.AppConfig>()));
  gh.factory<_i33.TodosService>(() => _i34.RestTodoService(
        get<_i32.Dio>(),
        get<_i31.AppConfig>(),
      ));
  gh.factory<_i35.UserService>(() => _i36.RestUserService(
        get<_i32.Dio>(),
        get<_i31.AppConfig>(),
      ));
  return get;
}

class _$RegisterModule extends _i37.RegisterModule {}
