import 'package:dartz/dartz.dart';
import 'package:engaz_task/core/errors/failures.dart';
import 'package:engaz_task/features/home/data/models/markers_response_model/markers_response_model/markers_response_model.dart';
import 'package:firebase_database/firebase_database.dart';

abstract class HomeRepository {
  Future<Either<Failure, MarkersResponseModel>> getMarkers(
      {required String userToken});
  Future<Either<Failure, void>> updateUserData(
      {required Map<String, dynamic> updatedData});
  Future<Either<Failure, Stream<DatabaseEvent>>> getUserData();
}
