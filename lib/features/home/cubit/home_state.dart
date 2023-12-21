part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.getRealtimeUserSuccess(
      UserRealtimeModel userRealtimeModel) = _GetRealtimeUserSuccess;
  const factory HomeState.getRealtimeUserError(String errorMsg) =
      _GetRealtimeUserError;
  const factory HomeState.getMarkersLoading() = _GetMarkersLoading;
  const factory HomeState.getMarkersSuccess() = _GetMarkersSuccess;
  const factory HomeState.getMarkersError(String errorMsg) = _GetMarkersError;
  const factory HomeState.createMap() = _CreateMap;
  const factory HomeState.realTimeLocation(Position myLocation) =
      _RealTimeLocation;
  const factory HomeState.updateLocationSuccess(double lat, double long) =
      _UpdateLocationSuccess;
  const factory HomeState.updateLocationError(String errorMsg) =
      _UpdateLocationError;
}
