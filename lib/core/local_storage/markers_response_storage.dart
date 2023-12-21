import 'package:engaz_task/core/local_storage/keys.dart';
import 'package:engaz_task/core/local_storage/local_storage.dart';
import 'package:engaz_task/features/home/data/models/markers_response_model/markers_response_model/marker_data.dart';
import 'package:engaz_task/features/home/data/models/markers_response_model/markers_response_model/markers_response_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MarkersResponseStorage implements LocalStorage<MarkersResponseModel> {
  static Box<MarkersResponseModel>? _box;

  @override
  Future<void> delete() => _box!.delete(StorageKeys.markersResponse);

  @override
  List<MarkersResponseModel> getAllData() => _box!.values.toList();

  @override
  MarkersResponseModel? getData() => _box!.get(StorageKeys.markersResponse);

  @override
  bool hasData() => _box!.isNotEmpty;

  @override
  Future<void> init() async {
    if (!Hive.isAdapterRegistered(MarkersResponseModelAdapter().typeId)) {
      Hive.registerAdapter(MarkersResponseModelAdapter());
    }
    if (!Hive.isAdapterRegistered(MarkerDataAdapter().typeId)) {
      Hive.registerAdapter(MarkerDataAdapter());
    }
    _box = await Hive.openBox(StorageKeys.markersResponse);
  }

  @override
  Future<void> saveData({required MarkersResponseModel data}) async {
    await _box!.put(StorageKeys.markersResponse, data);
    await _box!.flush();
  }
}
