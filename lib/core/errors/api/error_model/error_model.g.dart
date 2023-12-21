// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorModelImpl _$$ErrorModelImplFromJson(Map<String, dynamic> json) =>
    _$ErrorModelImpl(
      statusCode: json['status_code'] as int?,
      success: json['success'] as bool?,
      data: json['data'] as List<dynamic>?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ErrorModelImplToJson(_$ErrorModelImpl instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };
