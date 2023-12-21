import 'package:engaz_task/core/local_storage/keys.dart';
import 'package:engaz_task/core/local_storage/local_storage.dart';
import 'package:engaz_task/features/home/data/models/location_model/location_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocationStorage implements LocalStorage<LocationModel> {
  static Box<LocationModel>? _box;

  @override
  Future<void> delete() => _box!.delete(StorageKeys.location);

  @override
  List<LocationModel> getAllData() => _box!.values.toList();

  @override
  LocationModel? getData() => _box!.get(StorageKeys.location);

  @override
  bool hasData() => _box!.isNotEmpty;

  @override
  Future<void> init() async {
    if (!Hive.isAdapterRegistered(LocationModelAdapter().typeId)) {
      Hive.registerAdapter(LocationModelAdapter());
    }
    _box = await Hive.openBox(StorageKeys.location);
  }

  @override
  Future<void> saveData({required LocationModel data}) async {
    await _box!.put(StorageKeys.location, data);
    await _box!.flush();
  }
}
