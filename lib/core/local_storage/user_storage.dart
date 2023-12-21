import 'package:engaz_task/core/local_storage/keys.dart';
import 'package:engaz_task/core/local_storage/local_storage.dart';
import 'package:engaz_task/features/login/data/models/user_model/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class UserStorage implements LocalStorage<UserModel> {
  static Box<UserModel>? _box;

  @override
  Future<void> delete() => _box!.delete(StorageKeys.user);

  @override
  List<UserModel> getAllData() => _box!.values.toList();

  @override
  UserModel? getData() => _box!.get(StorageKeys.user);

  @override
  bool hasData() => _box!.isNotEmpty;

  @override
  Future<void> init() async {
    if (!Hive.isAdapterRegistered(UserModelAdapter().typeId)) {
      Hive.registerAdapter(UserModelAdapter());
    }
    _box = await Hive.openBox(StorageKeys.user);
  }

  @override
  Future<void> saveData({required UserModel data}) async {
    await _box!.put(StorageKeys.user, data);
    await _box!.flush();
  }
}
