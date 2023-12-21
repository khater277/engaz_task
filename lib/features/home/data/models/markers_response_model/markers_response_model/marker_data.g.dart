// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marker_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MarkerDataAdapter extends TypeAdapter<MarkerData> {
  @override
  final int typeId = 3;

  @override
  MarkerData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MarkerData(
      taskId: fields[0] as String?,
      lat: fields[1] as String?,
      longt: fields[2] as String?,
      name: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, MarkerData obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.taskId)
      ..writeByte(1)
      ..write(obj.lat)
      ..writeByte(2)
      ..write(obj.longt)
      ..writeByte(3)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MarkerDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarkerDataImpl _$$MarkerDataImplFromJson(Map<String, dynamic> json) =>
    _$MarkerDataImpl(
      taskId: json['TaskID'] as String?,
      lat: json['Lat'] as String?,
      longt: json['Longt'] as String?,
      name: json['Name'] as String?,
    );

Map<String, dynamic> _$$MarkerDataImplToJson(_$MarkerDataImpl instance) =>
    <String, dynamic>{
      'TaskID': instance.taskId,
      'Lat': instance.lat,
      'Longt': instance.longt,
      'Name': instance.name,
    };
