// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'polyline_model.freezed.dart';
part 'polyline_model.g.dart';

@freezed
@HiveType(typeId: 4)
class PolylineModel with _$PolylineModel {
  factory PolylineModel({
    @HiveField(0) String? id,
    @HiveField(1) double? startLat,
    @HiveField(2) double? startLong,
    @HiveField(3) double? destinationLat,
    @HiveField(4) double? destinationLong,
  }) = _PolylineModel;

  factory PolylineModel.fromJson(Map<String, dynamic> json) =>
      _$PolylineModelFromJson(json);
}
