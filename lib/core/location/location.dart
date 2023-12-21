import 'package:geolocator/geolocator.dart';

abstract class UserLocation {
  Future<void> init();
  Future<Position> getCurrentPosition();
  Stream<Position> getStreamPosition();
}

class UserLocationImpl implements UserLocation {
  @override
  Future<void> init() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
  }

  @override
  Future<Position> getCurrentPosition() => Geolocator.getCurrentPosition();

  @override
  Stream<Position> getStreamPosition() => Geolocator.getPositionStream();
}
