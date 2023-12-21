import 'package:engaz_task/core/local_storage/keys.dart';
import 'package:engaz_task/core/local_storage/local_storage.dart';
import 'package:engaz_task/features/home/data/models/user_realtime/user_realtime_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class UserRealtimeStorage implements LocalStorage<UserRealtimeModel> {
  static Box<UserRealtimeModel>? _box;

  @override
  Future<void> delete() => _box!.delete(StorageKeys.userRealtime);

  @override
  List<UserRealtimeModel> getAllData() => _box!.values.toList();

  @override
  UserRealtimeModel? getData() => _box!.get(StorageKeys.userRealtime);

  @override
  bool hasData() => _box!.isNotEmpty;

  @override
  Future<void> init() async {
    if (!Hive.isAdapterRegistered(UserRealtimeModelAdapter().typeId)) {
      Hive.registerAdapter(UserRealtimeModelAdapter());
    }
    _box = await Hive.openBox(StorageKeys.userRealtime);
  }

  @override
  Future<void> saveData({required UserRealtimeModel data}) async {
    await _box!.put(StorageKeys.userRealtime, data);
    await _box!.flush();
  }
}
