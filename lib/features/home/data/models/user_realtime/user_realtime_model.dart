// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'user_realtime_model.freezed.dart';
part 'user_realtime_model.g.dart';

@freezed
@HiveType(typeId: 1)
class UserRealtimeModel with _$UserRealtimeModel {
  factory UserRealtimeModel({
    @HiveField(0) String? userToken,
    @HiveField(1) String? firebaseToken,
    @HiveField(2) double? latitude,
    @HiveField(3) double? longitude,
  }) = _UserRealtimeModel;

  factory UserRealtimeModel.fromJson(Map<String, dynamic> json) =>
      _$UserRealtimeModelFromJson(json);
}
