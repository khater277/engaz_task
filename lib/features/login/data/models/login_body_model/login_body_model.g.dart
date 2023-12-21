// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginBodyModelImpl _$$LoginBodyModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginBodyModelImpl(
      phoneNumber: json['UserPhone'] as String?,
      password: json['Password'] as String?,
      firebaseToken: json['UserFirebaseToken'] as String?,
    );

Map<String, dynamic> _$$LoginBodyModelImplToJson(
        _$LoginBodyModelImpl instance) =>
    <String, dynamic>{
      'UserPhone': instance.phoneNumber,
      'Password': instance.password,
      'UserFirebaseToken': instance.firebaseToken,
    };
