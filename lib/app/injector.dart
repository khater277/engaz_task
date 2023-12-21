import 'package:dio/dio.dart';
import 'package:engaz_task/core/apis/app/app_api.dart';
import 'package:engaz_task/core/apis/app/app_end_points.dart';
import 'package:engaz_task/core/firebase/realtime/firebase_realtime.dart';
import 'package:engaz_task/core/local_storage/location_storage.dart';
import 'package:engaz_task/core/local_storage/markers_response_storage.dart';
import 'package:engaz_task/core/local_storage/user_realtime_data_storage.dart';
import 'package:engaz_task/core/local_storage/user_storage.dart';
import 'package:engaz_task/core/location/location.dart';
import 'package:engaz_task/core/shared_preferences/shared_pref_helper.dart';
import 'package:engaz_task/features/home/cubit/home_cubit.dart';
import 'package:engaz_task/features/home/data/datasources/home_remote_data_source.dart';
import 'package:engaz_task/features/home/data/repositories/home_repository_impl.dart';
import 'package:engaz_task/features/home/domain/repositories/home_repository.dart';
import 'package:engaz_task/features/home/domain/usecases/get_markers_usecase.dart';
import 'package:engaz_task/features/home/domain/usecases/get_user_data_usecase.dart';
import 'package:engaz_task/features/home/domain/usecases/update_user_data_usecase.dart';
import 'package:engaz_task/features/login/cubit/login_cubit.dart';
import 'package:engaz_task/features/login/data/datasources/login_remote_data_source.dart';
import 'package:engaz_task/features/login/data/repositories/login_repository_impl.dart';
import 'package:engaz_task/features/login/domain/repositories/login_repository.dart';
import 'package:engaz_task/features/login/domain/usecases/login_usecase.dart';
import 'package:engaz_task/features/login/domain/usecases/set_user_data_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:engaz_task/core/network/network_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

final di = GetIt.instance;

void setupGetIt() async {
  /// CUBITS
  di.registerLazySingleton<LoginCubit>(() => LoginCubit(loginUsecase: di()));
  di.registerLazySingleton<HomeCubit>(() => HomeCubit(
        getMarkersUsecase: di(),
        getUserDataUsecase: di(),
        updateUserDataUsecase: di(),
        markersResponseStorage: di(),
        userLocation: di(),
      ));

  /// DATASOURCES
  di.registerLazySingleton<LoginRemoteDataSource>(
      () => LoginRemoteDataSourceImpl(
            appApi: di(),
            firebaseRealtime: di(),
          ));
  di.registerLazySingleton<HomeRemoteDataSource>(() => HomeRemoteDataSourceImpl(
        appApi: di(),
        firebaseRealtime: di(),
      ));

  /// REPOSITORIES
  di.registerLazySingleton<LoginRepository>(() => LoginRepositoryImpl(
        loginRemoteDataSource: di(),
        networkInfo: di(),
        userStorage: di(),
        userLocation: di(),
      ));
  di.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(
        homeRemoteDataSource: di(),
        networkInfo: di(),
        markersResponseStorage: di(),
      ));

  /// USECASES
  /// LOGIN
  di.registerLazySingleton<LoginUsecase>(
      () => LoginUsecase(loginRepository: di()));
  di.registerLazySingleton<SetUserDataUsecase>(
      () => SetUserDataUsecase(loginRepository: di()));

  /// HOME
  di.registerLazySingleton<GetMarkersUsecase>(
      () => GetMarkersUsecase(homeRepository: di()));
  di.registerLazySingleton<GetUserDataUsecase>(
      () => GetUserDataUsecase(homeRepository: di()));
  di.registerLazySingleton<UpdateUserDataUsecase>(
      () => UpdateUserDataUsecase(homeRepository: di()));

  ///LOCAL STORAGE
  di.registerLazySingleton<UserStorage>(() => UserStorage());
  di.registerLazySingleton<UserRealtimeStorage>(() => UserRealtimeStorage());
  di.registerLazySingleton<MarkersResponseStorage>(
      () => MarkersResponseStorage());
  di.registerLazySingleton<LocationStorage>(() => LocationStorage());

  /// LOCATION
  di.registerLazySingleton<UserLocation>(() => UserLocationImpl());

  /// NETWORK INFO
  di.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: di()));
  di.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker());

  /// SHARED PREFERENCES
  di.registerLazySingleton<SharedPrefHelper>(
      () => SharedPrefHelperImpl(sharedPref: di()));
  di.registerLazySingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );
  await GetIt.instance.isReady<SharedPreferences>();

  /// FIREBASE
  di.registerLazySingleton<FirebaseRealtime>(() => FirebaseRealtimeImpl());

  /// APIS
  di.registerLazySingleton<AppApi>(() => AppApi(di()));

  /// DIOs
  Dio createAndSetupDio() {
    Dio dio = Dio();

    dio.options
      ..baseUrl = AppEndPoints.baseUrl
      ..responseType = ResponseType.plain
      ..headers = {
        'Content-Type': 'text/html; charset=UTF-8',
        'content-encoding': 'gzip'
      }
      ..connectTimeout = const Duration(seconds: 20)
      ..followRedirects = false;

    dio.interceptors.add(
      LogInterceptor(
          request: true,
          requestBody: true,
          requestHeader: true,
          responseBody: true,
          responseHeader: true,
          error: true),
    );

    return dio;
  }

  di.registerLazySingleton<Dio>(() => createAndSetupDio());
}
