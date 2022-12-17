// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:client/core/data/network/abstractions/todos_service.dart'
    as _i21;
import 'package:client/core/data/network/abstractions/users_service.dart'
    as _i23;
import 'package:client/core/data/network/services/todos/todo_api.dart' as _i22;
import 'package:client/core/data/network/services/users/user_api.dart' as _i24;
import 'package:client/core/di/config/app_config.dart' as _i19;
import 'package:client/core/di/config/raw_helper.dart' as _i13;
import 'package:client/core/di/config/register_module.dart' as _i25;
import 'package:client/core/views/blogs_detail_view/blogs_detail.viewmodel.dart'
    as _i3;
import 'package:client/core/views/blogs_view/blogs.viewmodel.dart' as _i4;
import 'package:client/core/views/educations_detail_view/educations_detail.viewmodel.dart'
    as _i5;
import 'package:client/core/views/educations_view/educations.viewmodel.dart'
    as _i6;
import 'package:client/core/views/forgot_password_view/fotgotpass.viewmodel.dart'
    as _i7;
import 'package:client/core/views/home_view/home.viewmodel.dart' as _i8;
import 'package:client/core/views/mentors_details_view/mentors_details.viewmodel.dart'
    as _i9;
import 'package:client/core/views/mentors_view/mentors.viewmodel.dart' as _i10;
import 'package:client/core/views/news_detail_view/news_detail.viewmodel.dart'
    as _i11;
import 'package:client/core/views/news_view/news.viewmodel.dart' as _i12;
import 'package:client/core/views/signup_view/signup.viewmodel.dart' as _i16;
import 'package:client/core/views/user_profile_view/user_profile.viewmodel.dart'
    as _i17;
import 'package:client/core/views/videos_view/videos.viewmodel.dart' as _i18;
import 'package:client/core/views/view_model_sample/sample.viewmodel.dart'
    as _i14;
import 'package:client/core/views/view_model_sample_two/sample_two.viewmodel.dart'
    as _i15;
import 'package:dio/dio.dart' as _i20;
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
  gh.factory<_i3.BlogsDetailViewModel>(() => _i3.BlogsDetailViewModel());
  gh.factory<_i4.BlogsViewModel>(() => _i4.BlogsViewModel());
  gh.factory<_i5.EducationsDetailViewModel>(
      () => _i5.EducationsDetailViewModel());
  gh.factory<_i6.EducationsViewModel>(() => _i6.EducationsViewModel());
  gh.factory<_i7.ForgotPasswordViewModel>(() => _i7.ForgotPasswordViewModel());
  gh.factory<_i8.HomeViewModel>(() => _i8.HomeViewModel());
  gh.factory<_i9.MentorsDetailsViewModel>(() => _i9.MentorsDetailsViewModel());
  gh.factory<_i10.MentorsViewModel>(() => _i10.MentorsViewModel());
  gh.factory<_i11.NewsDetailViewModel>(() => _i11.NewsDetailViewModel());
  gh.factory<_i12.NewsViewModel>(() => _i12.NewsViewModel());
  await gh.singletonAsync<_i13.RawConfig>(
    () => registerModule.config(),
    preResolve: true,
  );
  gh.factory<_i14.SampleViewModel>(() => _i14.SampleViewModel());
  gh.factory<_i15.SampleViewModelTwo>(() => _i15.SampleViewModelTwo());
  gh.factory<_i16.SignUpViewModel>(() => _i16.SignUpViewModel());
  gh.factory<_i17.UserProfileViewModel>(() => _i17.UserProfileViewModel());
  gh.factory<_i18.VideosViewModel>(() => _i18.VideosViewModel());
  gh.singleton<_i19.AppConfig>(_i19.AppConfig(get<_i13.RawConfig>()));
  gh.singleton<_i20.Dio>(registerModule.dio(get<_i19.AppConfig>()));
  gh.factory<_i21.TodosService>(() => _i22.RestTodoService(
        get<_i20.Dio>(),
        get<_i19.AppConfig>(),
      ));
  gh.factory<_i23.UserService>(() => _i24.RestUserService(
        get<_i20.Dio>(),
        get<_i19.AppConfig>(),
      ));
  return get;
}

class _$RegisterModule extends _i25.RegisterModule {}
