// ignore_for_file: invalid_annotation_target

import 'package:engaz_task/features/login/data/models/user_model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  factory LoginResponseModel({
    @JsonKey(name: 'status_code') int? statusCode,
    bool? success,
    @JsonKey(name: 'data') UserModel? userModel,
    String? message,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}
