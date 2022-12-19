// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:client/core/data/network/abstractions/todos_service.dart'
    as _i22;
import 'package:client/core/data/network/abstractions/users_service.dart'
    as _i24;
import 'package:client/core/data/network/services/todos/todo_api.dart' as _i23;
import 'package:client/core/data/network/services/users/user_api.dart' as _i25;
import 'package:client/core/di/config/app_config.dart' as _i20;
import 'package:client/core/di/config/raw_helper.dart' as _i14;
import 'package:client/core/di/config/register_module.dart' as _i26;
import 'package:client/core/views/authentication/authentication.viewmodel.dart'
    as _i3;
import 'package:client/core/views/educations_detail_view/educations_detail.viewmodel.dart'
    as _i4;
import 'package:client/core/views/educations_view/educations.viewmodel.dart'
    as _i5;
import 'package:client/core/views/forgot_password_view/fotgotpass.viewmodel.dart'
    as _i6;
import 'package:client/core/views/home_view/home.viewmodel.dart' as _i7;
import 'package:client/core/views/jobs_details_view/jobs_detail.viewmodel.dart'
    as _i8;
import 'package:client/core/views/jobs_view/jobs.viewmodel.dart' as _i9;
import 'package:client/core/views/mentors_details_view/mentors_details.viewmodel.dart'
    as _i10;
import 'package:client/core/views/mentors_view/mentors.viewmodel.dart' as _i11;
import 'package:client/core/views/news_detail_view/news_detail.viewmodel.dart'
    as _i12;
import 'package:client/core/views/news_view/news.viewmodel.dart' as _i13;
import 'package:client/core/views/signup_view/signup.viewmodel.dart' as _i17;
import 'package:client/core/views/user_profile_view/user_profile.viewmodel.dart'
    as _i18;
import 'package:client/core/views/videos_view/videos.viewmodel.dart' as _i19;
import 'package:client/core/views/view_model_sample/sample.viewmodel.dart'
    as _i15;
import 'package:client/core/views/view_model_sample_two/sample_two.viewmodel.dart'
    as _i16;
import 'package:dio/dio.dart' as _i21;
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
  gh.factory<_i3.AuthenticationViewModel>(() => _i3.AuthenticationViewModel());
  gh.factory<_i4.EducationsDetailViewModel>(
      () => _i4.EducationsDetailViewModel());
  gh.factory<_i5.EducationsViewModel>(() => _i5.EducationsViewModel());
  gh.factory<_i6.ForgotPasswordViewModel>(() => _i6.ForgotPasswordViewModel());
  gh.factory<_i7.HomeViewModel>(() => _i7.HomeViewModel());
  gh.factory<_i8.JobsDetailViewModel>(() => _i8.JobsDetailViewModel());
  gh.factory<_i9.JobsViewModel>(() => _i9.JobsViewModel());
  gh.factory<_i10.MentorsDetailsViewModel>(
      () => _i10.MentorsDetailsViewModel());
  gh.factory<_i11.MentorsViewModel>(() => _i11.MentorsViewModel());
  gh.factory<_i12.NewsDetailViewModel>(() => _i12.NewsDetailViewModel());
  gh.factory<_i13.NewsViewModel>(() => _i13.NewsViewModel());
  await gh.singletonAsync<_i14.RawConfig>(
    () => registerModule.config(),
    preResolve: true,
  );
  gh.factory<_i15.SampleViewModel>(() => _i15.SampleViewModel());
  gh.factory<_i16.SampleViewModelTwo>(() => _i16.SampleViewModelTwo());
  gh.factory<_i17.SignUpViewModel>(() => _i17.SignUpViewModel());
  gh.factory<_i18.UserProfileViewModel>(() => _i18.UserProfileViewModel());
  gh.factory<_i19.VideosViewModel>(() => _i19.VideosViewModel());
  gh.singleton<_i20.AppConfig>(_i20.AppConfig(get<_i14.RawConfig>()));
  gh.singleton<_i21.Dio>(registerModule.dio(get<_i20.AppConfig>()));
  gh.factory<_i22.TodosService>(() => _i23.RestTodoService(
        get<_i21.Dio>(),
        get<_i20.AppConfig>(),
      ));
  gh.factory<_i24.UserService>(() => _i25.RestUserService(
        get<_i21.Dio>(),
        get<_i20.AppConfig>(),
      ));
  return get;
}

class _$RegisterModule extends _i26.RegisterModule {}
