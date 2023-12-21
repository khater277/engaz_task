import 'package:engaz_task/app/app.dart';
import 'package:engaz_task/app/bloc_observer.dart';
import 'package:engaz_task/app/injector.dart';
import 'package:engaz_task/core/local_storage/location_storage.dart';
import 'package:engaz_task/core/local_storage/markers_response_storage.dart';
import 'package:engaz_task/core/local_storage/user_storage.dart';
import 'package:engaz_task/core/location/location.dart';
import 'package:engaz_task/features/home/data/models/location_model/location_model.dart';
import 'package:engaz_task/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = MyBlocObserver();
  setupGetIt();
  await Hive.initFlutter();
  await di<UserStorage>().init();
  await di<MarkersResponseStorage>().init();
  await di<LocationStorage>().init();
  await di<UserLocation>().init();
  final location = await di<UserLocation>().getCurrentPosition();
  di<LocationStorage>().saveData(
      data: LocationModel(
    latitude: location.latitude,
    longitude: location.longitude,
  ));
  runApp(const MyApp());
}
