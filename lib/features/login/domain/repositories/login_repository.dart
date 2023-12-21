import 'package:dartz/dartz.dart';
import 'package:engaz_task/core/errors/failures.dart';
import 'package:engaz_task/features/home/data/models/user_realtime/user_realtime_model.dart';
import 'package:engaz_task/features/login/data/models/login_body_model/login_body_model.dart';
import 'package:engaz_task/features/login/data/models/login_response_model/login_response_model.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginResponseModel>> login(
      LoginBodyModel loginBodyModel);

  Future<Either<Failure, void>> setUserData(
      UserRealtimeModel userRealtimeModel);
}
