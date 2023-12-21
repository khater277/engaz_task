import 'dart:convert';

import 'package:engaz_task/core/apis/app/app_api.dart';
import 'package:engaz_task/core/firebase/realtime/firebase_realtime.dart';
import 'package:engaz_task/features/home/data/models/user_realtime/user_realtime_model.dart';
import 'package:engaz_task/features/login/data/models/login_body_model/login_body_model.dart';
import 'package:engaz_task/features/login/data/models/login_response_model/login_response_model.dart';

abstract class LoginRemoteDataSource {
  Future<LoginResponseModel> login({required LoginBodyModel loginBodyModel});
  Future<void> setUserData({required UserRealtimeModel userRealtimeModel});
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final AppApi appApi;
  final FirebaseRealtime firebaseRealtime;
  LoginRemoteDataSourceImpl(
      {required this.appApi, required this.firebaseRealtime});
  @override
  Future<LoginResponseModel> login(
      {required LoginBodyModel loginBodyModel}) async {
    final response = await appApi.login(loginBodyModel.toJson());
    return LoginResponseModel.fromJson(jsonDecode(response));
  }

  @override
  Future<void> setUserData({required UserRealtimeModel userRealtimeModel}) {
    return firebaseRealtime.setUserData(userRealtimeModel: userRealtimeModel);
  }
}
