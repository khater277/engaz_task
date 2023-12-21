import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:engaz_task/core/local_storage/markers_response_storage.dart';
import 'package:engaz_task/core/location/location.dart';
import 'package:engaz_task/features/home/data/models/markers_response_model/markers_response_model/marker_data.dart';
import 'package:engaz_task/features/home/data/models/polyline_model/polyline_model.dart';
import 'package:engaz_task/features/home/data/models/user_realtime/user_realtime_model.dart';
import 'package:engaz_task/features/home/domain/usecases/get_markers_usecase.dart';
import 'package:engaz_task/features/home/domain/usecases/get_user_data_usecase.dart';
import 'package:engaz_task/features/home/domain/usecases/update_user_data_usecase.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetMarkersUsecase _getMarkersUsecase;
  final GetUserDataUsecase _getUserDataUsecase;
  final UpdateUserDataUsecase _updateUserDataUsecase;
  final MarkersResponseStorage _markersResponseStorage;
  final UserLocation _userLocation;

  HomeCubit({
    required GetMarkersUsecase getMarkersUsecase,
    required GetUserDataUsecase getUserDataUsecase,
    required UpdateUserDataUsecase updateUserDataUsecase,
    required MarkersResponseStorage markersResponseStorage,
    required UserLocation userLocation,
  })  : _getMarkersUsecase = getMarkersUsecase,
        _getUserDataUsecase = getUserDataUsecase,
        _updateUserDataUsecase = updateUserDataUsecase,
        _markersResponseStorage = markersResponseStorage,
        _userLocation = userLocation,
        super(const HomeState.initial());

  final Completer<GoogleMapController> completer =
      Completer<GoogleMapController>();
  List<MarkerData> markersData = [];
  Set<Marker> markers = {};
  // CameraPosition? currentCameraPosition;

  UserRealtimeModel? user;
  Future<void> getUserData() async {
    final response = await _getUserDataUsecase.call(NoParams());
    response.fold(
      (failure) => emit(HomeState.getRealtimeUserError(failure.getMessage())),
      (stream) {
        stream.listen((event) {
          final user =
              UserRealtimeModel.fromJson(jsonDecode(event.snapshot.toString()));
          this.user = user;
          emit(HomeState.getRealtimeUserSuccess(user));
        });
      },
    );
  }

  void createMap({required GoogleMapController googleMapController}) async {
    completer.complete(googleMapController);
    emit(const HomeState.createMap());
  }

  Future<void> homeInit({required String userToken}) async {
    // final location = await _userLocation.getCurrentPosition();
    // currentCameraPosition = CameraPosition(
    //   target: LatLng(
    //     location.latitude,
    //     location.longitude,
    //   ),
    //   zoom: 13.0,
    // );
    // ignore: unused_local_variable
    final fun1 = await getMarkers(userToken: userToken);
    // ignore: unused_local_variable
    final fun2 = await realTimeLocation();
    // await getUserData();
  }

  Future<void> getMarkers({required String userToken}) async {
    emit(const HomeState.getMarkersLoading());
    final response = await _getMarkersUsecase.call(userToken);
    markersData = _markersResponseStorage.hasData()
        ? _markersResponseStorage.getData()!.markers ?? []
        : [];
    response.fold(
      (failure) async {
        mapSetup();
        emit(HomeState.getMarkersError(failure.getMessage()));
      },
      (markersResponseModel) async {
        mapSetup();
        // emit(const HomeState.getMarkersSuccess());
      },
    );
  }

  void moveCamera({required LatLng latLng}) async {
    final controller = await completer.future;
    controller.moveCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        target: latLng,
        zoom: 13.0,
      ),
    ));
  }

  void mapSetup() {
    setPolylines();
    setMarkers();
  }

  void setMarkers() {
    if (markersData.isNotEmpty) {
      for (int i = 0; i < markersData.length; i++) {
        markers.add(
          Marker(
              markerId: MarkerId(markersData[i].taskId!),
              position: LatLng(
                double.parse(markersData[i].lat!),
                double.parse(markersData[i].longt!),
              ),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: InfoWindow(title: markersData[i].name)),
        );
      }
    }
  }

  void setPolylines() {
    for (int i = 0; i < markersData.length; i++) {
      for (int j = i + 1; j < markersData.length; j++) {
        createPolylines(
            polylineModel: PolylineModel(
          id: "${markersData[i].taskId}${markersData[j].taskId}",
          startLat: double.parse(markersData[i].lat!),
          startLong: double.parse(markersData[i].longt!),
          destinationLat: double.parse(markersData[j].lat!),
          destinationLong: double.parse(markersData[j].longt!),
        ));
      }
    }
  }

  Map<PolylineId, Polyline> polylines = {};
  Future<void> createPolylines({required PolylineModel polylineModel}) async {
    List<LatLng> polylineCoordinates = [
      LatLng(polylineModel.startLat!, polylineModel.startLong!),
      LatLng(polylineModel.destinationLat!, polylineModel.destinationLong!),
    ];

    PolylineId id = PolylineId(polylineModel.id!);
    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.red,
      points: polylineCoordinates,
      width: 3,
    );
    polylines[id] = polyline;
  }

  Position? myLocation;
  Future<void> realTimeLocation() async {
    _userLocation.getStreamPosition().listen((location) async {
      if (myLocation != null) {
        if ((location.latitude != myLocation!.latitude) ||
            (location.longitude != myLocation!.longitude)) {
          myLocation = location;
          await updateLocation(
              lat: location.latitude, long: location.longitude);
        }
      } else {
        myLocation = location;
        await updateLocation(lat: location.latitude, long: location.longitude);
      }
    });
  }

  Future<void> updateLocation(
      {required double lat, required double long}) async {
    final response = await _updateUserDataUsecase.call({
      'latitude': lat,
      'longitude': long,
    });
    response.fold(
      (failure) => emit(HomeState.updateLocationError(failure.getMessage())),
      (result) => emit(HomeState.updateLocationSuccess(lat, long)),
    );
  }
}
