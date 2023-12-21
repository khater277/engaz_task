// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_realtime_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserRealtimeModelAdapter extends TypeAdapter<UserRealtimeModel> {
  @override
  final int typeId = 1;

  @override
  UserRealtimeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserRealtimeModel(
      userToken: fields[0] as String?,
      firebaseToken: fields[1] as String?,
      latitude: fields[2] as double?,
      longitude: fields[3] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, UserRealtimeModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.userToken)
      ..writeByte(1)
      ..write(obj.firebaseToken)
      ..writeByte(2)
      ..write(obj.latitude)
      ..writeByte(3)
      ..write(obj.longitude);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserRealtimeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRealtimeModelImpl _$$UserRealtimeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRealtimeModelImpl(
      userToken: json['userToken'] as String?,
      firebaseToken: json['firebaseToken'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$UserRealtimeModelImplToJson(
        _$UserRealtimeModelImpl instance) =>
    <String, dynamic>{
      'userToken': instance.userToken,
      'firebaseToken': instance.firebaseToken,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
