import 'dart:convert';

import 'package:engaz_task/core/apis/app/app_api.dart';
import 'package:engaz_task/core/firebase/realtime/firebase_realtime.dart';
import 'package:engaz_task/features/home/data/models/markers_response_model/markers_response_model/markers_response_model.dart';
import 'package:firebase_database/firebase_database.dart';

abstract class HomeRemoteDataSource {
  Future<MarkersResponseModel> getMarkers({required String userToken});
  Future<void> updateUserData({required Map<String, dynamic> updatedData});
  Stream<DatabaseEvent> getUserData();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final AppApi appApi;
  final FirebaseRealtime firebaseRealtime;

  HomeRemoteDataSourceImpl(
      {required this.appApi, required this.firebaseRealtime});

  @override
  Future<MarkersResponseModel> getMarkers({required String userToken}) async {
    final response = await appApi.getMarkers(userToken);
    return MarkersResponseModel.fromJson(jsonDecode(response));
  }

  @override
  Stream<DatabaseEvent> getUserData() {
    return firebaseRealtime.getUserData();
  }

  @override
  Future<void> updateUserData({required Map<String, dynamic> updatedData}) {
    return firebaseRealtime.updateUserData(updatedData: updatedData);
  }
}
