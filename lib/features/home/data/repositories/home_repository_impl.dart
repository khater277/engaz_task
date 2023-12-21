import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:engaz_task/core/errors/failures.dart';
import 'package:engaz_task/core/local_storage/markers_response_storage.dart';
// import 'package:engaz_task/core/local_storage/markers_storage.dart';
import 'package:engaz_task/core/network/network_info.dart';
import 'package:engaz_task/features/home/data/datasources/home_remote_data_source.dart';
import 'package:engaz_task/features/home/data/models/markers_response_model/markers_response_model/markers_response_model.dart';
import 'package:engaz_task/features/home/domain/repositories/home_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class HomeRepositoryImpl implements HomeRepository {
  final NetworkInfo networkInfo;
  final HomeRemoteDataSource homeRemoteDataSource;
  final MarkersResponseStorage markersResponseStorage;

  HomeRepositoryImpl({
    required this.networkInfo,
    required this.homeRemoteDataSource,
    required this.markersResponseStorage,
  });

  @override
  Future<Either<Failure, MarkersResponseModel>> getMarkers(
      {required String userToken}) async {
    if (await networkInfo.connected()) {
      try {
        final response =
            await homeRemoteDataSource.getMarkers(userToken: userToken);
        markersResponseStorage.saveData(data: response);
        return Right(response);
      } on DioException catch (error) {
        return Left(ServerFailure(error: error, type: NetworkErrorTypes.api));
      }
    } else {
      return Left(ServerFailure(
          error: NoInternetConnection(),
          type: NetworkErrorTypes.noInternetConnection));
    }
  }

  @override
  Future<Either<Failure, Stream<DatabaseEvent>>> getUserData() async {
    try {
      final response = homeRemoteDataSource.getUserData();
      return Right(response);
    } on FirebaseException catch (error) {
      return Left(
          ServerFailure(error: error, type: NetworkErrorTypes.realtime));
    }
  }

  @override
  Future<Either<Failure, void>> updateUserData(
      {required Map<String, dynamic> updatedData}) async {
    try {
      final response =
          homeRemoteDataSource.updateUserData(updatedData: updatedData);
      return Right(response);
    } on FirebaseException catch (error) {
      return Left(
          ServerFailure(error: error, type: NetworkErrorTypes.realtime));
    }
  }
}
