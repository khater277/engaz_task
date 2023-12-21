import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:engaz_task/core/errors/failures.dart';
import 'package:engaz_task/core/local_storage/user_storage.dart';
import 'package:engaz_task/core/location/location.dart';
import 'package:engaz_task/core/network/network_info.dart';
import 'package:engaz_task/features/home/data/models/user_realtime/user_realtime_model.dart';
import 'package:engaz_task/features/login/data/datasources/login_remote_data_source.dart';
import 'package:engaz_task/features/login/data/models/login_body_model/login_body_model.dart';
import 'package:engaz_task/features/login/data/models/login_response_model/login_response_model.dart';
import 'package:engaz_task/features/login/domain/repositories/login_repository.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource loginRemoteDataSource;
  final NetworkInfo networkInfo;
  final UserStorage userStorage;
  final UserLocation userLocation;
  LoginRepositoryImpl({
    required this.loginRemoteDataSource,
    required this.networkInfo,
    required this.userStorage,
    required this.userLocation,
  });
  @override
  Future<Either<Failure, LoginResponseModel>> login(
      LoginBodyModel loginBodyModel) async {
    if (await networkInfo.connected()) {
      try {
        final currentLocation = await userLocation.getCurrentPosition();
        final response =
            await loginRemoteDataSource.login(loginBodyModel: loginBodyModel);
        userStorage.saveData(data: response.userModel!);
        final setUser = await setUserData(
          UserRealtimeModel(
            userToken: response.userModel!.userToken,
            firebaseToken: response.userModel!.userFirebaseToken,
            latitude: currentLocation.latitude,
            longitude: currentLocation.longitude,
          ),
        );
        setUser.fold(
          (failure) {
            return Left(failure);
          },
          (result) {},
        );
        return Right(response);
      } on DioException catch (error) {
        return Left(ServerFailure(error: error, type: NetworkErrorTypes.api));
      } catch (error) {
        return Left(LocationFailure(message: error.toString()));
      }
    } else {
      return Left(ServerFailure(
          error: NoInternetConnection(),
          type: NetworkErrorTypes.noInternetConnection));
    }
  }

  @override
  Future<Either<Failure, void>> setUserData(
      UserRealtimeModel userRealtimeModel) async {
    try {
      final response = await loginRemoteDataSource.setUserData(
          userRealtimeModel: userRealtimeModel);
      return Right(response);
    } on FirebaseException catch (error) {
      return Left(
          ServerFailure(error: error, type: NetworkErrorTypes.realtime));
    }
  }
}
