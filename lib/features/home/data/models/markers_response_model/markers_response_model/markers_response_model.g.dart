// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'markers_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MarkersResponseModelAdapter extends TypeAdapter<MarkersResponseModel> {
  @override
  final int typeId = 2;

  @override
  MarkersResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MarkersResponseModel(
      statusCode: fields[0] as int?,
      success: fields[1] as bool?,
      markers: (fields[2] as List?)?.cast<MarkerData>(),
      message: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, MarkersResponseModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.statusCode)
      ..writeByte(1)
      ..write(obj.success)
      ..writeByte(2)
      ..write(obj.markers)
      ..writeByte(3)
      ..write(obj.message);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MarkersResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarkersResponseModelImpl _$$MarkersResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MarkersResponseModelImpl(
      statusCode: json['status_code'] as int?,
      success: json['success'] as bool?,
      markers: (json['data'] as List<dynamic>?)
          ?.map((e) => MarkerData.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$MarkersResponseModelImplToJson(
        _$MarkersResponseModelImpl instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'success': instance.success,
      'data': instance.markers,
      'message': instance.message,
    };
