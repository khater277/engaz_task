// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_body_model.freezed.dart';
part 'login_body_model.g.dart';

@freezed
class LoginBodyModel with _$LoginBodyModel {
  factory LoginBodyModel({
    @JsonKey(name: 'UserPhone') String? phoneNumber,
    @JsonKey(name: 'Password') String? password,
    @JsonKey(name: 'UserFirebaseToken') String? firebaseToken,
  }) = _LoginBodyModel;

  factory LoginBodyModel.fromJson(Map<String, dynamic> json) =>
      _$LoginBodyModelFromJson(json);
}
