// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'marker_data.freezed.dart';
part 'marker_data.g.dart';

@freezed
@HiveType(typeId: 3)
class MarkerData with _$MarkerData {
  factory MarkerData({
    @HiveField(0) @JsonKey(name: 'TaskID') String? taskId,
    @HiveField(1) @JsonKey(name: 'Lat') String? lat,
    @HiveField(2) @JsonKey(name: 'Longt') String? longt,
    @HiveField(3) @JsonKey(name: 'Name') String? name,
  }) = _MarkerData;

  factory MarkerData.fromJson(Map<String, dynamic> json) =>
      _$MarkerDataFromJson(json);
}
