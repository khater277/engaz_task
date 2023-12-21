import 'package:engaz_task/core/shared_preferences/shared_pref_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPrefHelper {
  Future<bool> setUid({required String uId});
  String? getUid();
}

class SharedPrefHelperImpl implements SharedPrefHelper {
  final SharedPreferences sharedPref;

  SharedPrefHelperImpl({required this.sharedPref});
  @override
  String? getUid() {
    return sharedPref.getString(SharedPrefKeys.uId);
  }

  @override
  Future<bool> setUid({required String uId}) async {
    return sharedPref.setString(SharedPrefKeys.uId, uId);
  }
}
