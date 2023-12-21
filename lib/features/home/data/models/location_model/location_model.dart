// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
@HiveType(typeId: 4)
class LocationModel with _$LocationModel {
  factory LocationModel({
    @HiveField(0) double? latitude,
    @HiveField(1) double? longitude,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
