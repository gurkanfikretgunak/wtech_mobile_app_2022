// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:client/core/data/network/abstractions/todos_service.dart'
    as _i17;
import 'package:client/core/data/network/abstractions/users_service.dart'
    as _i19;
import 'package:client/core/data/network/services/todos/todo_api.dart' as _i18;
import 'package:client/core/data/network/services/users/user_api.dart' as _i20;
import 'package:client/core/di/config/app_config.dart' as _i15;
import 'package:client/core/di/config/raw_helper.dart' as _i10;
import 'package:client/core/di/config/register_module.dart' as _i21;
import 'package:client/core/views/home_view/home.viewmodel.dart' as _i3;
import 'package:client/core/views/jobs_details_view/jobs_detail.viewmodel.dart'
    as _i4;
import 'package:client/core/views/jobs_view/jobs.viewmodel.dart' as _i5;
import 'package:client/core/views/mentors_details_view/mentors_details.viewmodel.dart'
    as _i6;
import 'package:client/core/views/mentors_view/mentors.viewmodel.dart' as _i7;
import 'package:client/core/views/news_detail_view/news_detail.viewmodel.dart'
    as _i8;
import 'package:client/core/views/news_view/news.viewmodel.dart' as _i9;
import 'package:client/core/views/user_profile_view/user_profile.viewmodel.dart'
    as _i13;
import 'package:client/core/views/videos_view/videos.viewmodel.dart' as _i14;
import 'package:client/core/views/view_model_sample/sample.viewmodel.dart'
    as _i11;
import 'package:client/core/views/view_model_sample_two/sample_two.viewmodel.dart'
    as _i12;
import 'package:dio/dio.dart' as _i16;
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
  gh.factory<_i3.HomeViewModel>(() => _i3.HomeViewModel());
  gh.factory<_i4.JobsDetailViewModel>(() => _i4.JobsDetailViewModel());
  gh.factory<_i5.JobsViewModel>(() => _i5.JobsViewModel());
  gh.factory<_i6.MentorsDetailsViewModel>(() => _i6.MentorsDetailsViewModel());
  gh.factory<_i7.MentorsViewModel>(() => _i7.MentorsViewModel());
  gh.factory<_i8.NewsDetailViewModel>(() => _i8.NewsDetailViewModel());
  gh.factory<_i9.NewsViewModel>(() => _i9.NewsViewModel());
  await gh.singletonAsync<_i10.RawConfig>(
    () => registerModule.config(),
    preResolve: true,
  );
  gh.factory<_i11.SampleViewModel>(() => _i11.SampleViewModel());
  gh.factory<_i12.SampleViewModelTwo>(() => _i12.SampleViewModelTwo());
  gh.factory<_i13.UserProfileViewModel>(() => _i13.UserProfileViewModel());
  gh.factory<_i14.VideosViewModel>(() => _i14.VideosViewModel());
  gh.singleton<_i15.AppConfig>(_i15.AppConfig(get<_i10.RawConfig>()));
  gh.singleton<_i16.Dio>(registerModule.dio(get<_i15.AppConfig>()));
  gh.factory<_i17.TodosService>(() => _i18.RestTodoService(
        get<_i16.Dio>(),
        get<_i15.AppConfig>(),
      ));
  gh.factory<_i19.UserService>(() => _i20.RestUserService(
        get<_i16.Dio>(),
        get<_i15.AppConfig>(),
      ));
  return get;
}

class _$RegisterModule extends _i21.RegisterModule {}
