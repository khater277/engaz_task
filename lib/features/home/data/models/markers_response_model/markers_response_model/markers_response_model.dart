// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'marker_data.dart';

part 'markers_response_model.freezed.dart';
part 'markers_response_model.g.dart';

@freezed
@HiveType(typeId: 2)
class MarkersResponseModel with _$MarkersResponseModel {
  factory MarkersResponseModel({
    @HiveField(0) @JsonKey(name: 'status_code') int? statusCode,
    @HiveField(1) bool? success,
    @HiveField(2) @JsonKey(name: 'data') List<MarkerData>? markers,
    @HiveField(3) String? message,
  }) = _MarkersResponseModel;

  factory MarkersResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MarkersResponseModelFromJson(json);
}
