// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'polyline_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PolylineModelAdapter extends TypeAdapter<PolylineModel> {
  @override
  final int typeId = 4;

  @override
  PolylineModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PolylineModel(
      id: fields[0] as String?,
      startLat: fields[1] as double?,
      startLong: fields[2] as double?,
      destinationLat: fields[3] as double?,
      destinationLong: fields[4] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, PolylineModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.startLat)
      ..writeByte(2)
      ..write(obj.startLong)
      ..writeByte(3)
      ..write(obj.destinationLat)
      ..writeByte(4)
      ..write(obj.destinationLong);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PolylineModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PolylineModelImpl _$$PolylineModelImplFromJson(Map<String, dynamic> json) =>
    _$PolylineModelImpl(
      id: json['id'] as String?,
      startLat: (json['startLat'] as num?)?.toDouble(),
      startLong: (json['startLong'] as num?)?.toDouble(),
      destinationLat: (json['destinationLat'] as num?)?.toDouble(),
      destinationLong: (json['destinationLong'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PolylineModelImplToJson(_$PolylineModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startLat': instance.startLat,
      'startLong': instance.startLong,
      'destinationLat': instance.destinationLat,
      'destinationLong': instance.destinationLong,
    };
