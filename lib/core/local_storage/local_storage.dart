abstract class LocalStorage<Type> {
  Future<void> init();
  bool hasData();
  Future<void> saveData({required Type data});
  Type? getData();
  List<Type> getAllData();
  Future<void> delete();
}
