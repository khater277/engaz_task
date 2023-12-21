import 'package:engaz_task/app/injector.dart';
import 'package:engaz_task/core/local_storage/user_storage.dart';
import 'package:engaz_task/features/home/data/models/user_realtime/user_realtime_model.dart';
import 'package:firebase_database/firebase_database.dart';

abstract class FirebaseRealtime {
  Future<void> setUserData({required UserRealtimeModel userRealtimeModel});
  Future<void> updateUserData({required Map<String, dynamic> updatedData});
  Stream<DatabaseEvent> getUserData();
}

class FirebaseRealtimeImpl implements FirebaseRealtime {
  DatabaseReference ref = FirebaseDatabase.instance.ref();

  @override
  Future<void> setUserData(
      {required UserRealtimeModel userRealtimeModel}) async {
    return ref
        .child('users')
        .child(userRealtimeModel.userToken!)
        .set(userRealtimeModel.toJson());
  }

  @override
  Future<void> updateUserData({required Map<String, dynamic> updatedData}) {
    return ref
        .child('users')
        .child(di<UserStorage>().getData()!.userToken!)
        .update(updatedData);
  }

  @override
  Stream<DatabaseEvent> getUserData() {
    return ref
        .child('users')
        .child(di<UserStorage>().getData()!.userToken!)
        .onValue;
  }
}
