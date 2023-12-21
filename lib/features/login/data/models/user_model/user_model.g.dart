// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final int typeId = 0;

  @override
  UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModel(
      usersId: fields[0] as String?,
      userName: fields[1] as String?,
      userPhone: fields[2] as String?,
      password: fields[3] as String?,
      email: fields[4] as String?,
      userToken: fields[5] as String?,
      userFirebaseToken: fields[6] as String?,
      loginType: fields[7] as String?,
      socialId: fields[8] as String?,
      userPhoto: fields[9] as String?,
      userStatus: fields[10] as String?,
      lastUpdatedUsers: fields[11] as String?,
      createdAtUser: fields[12] as String?,
      userRate: fields[13] as String?,
      userTimesOfRates: fields[14] as String?,
      userTotalRates: fields[15] as String?,
      tripNumber: fields[16] as String?,
      hasTrip: fields[17] as String?,
      login: fields[18] as String?,
      userVersion: fields[19] as String?,
      userBalance: fields[20] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(21)
      ..writeByte(0)
      ..write(obj.usersId)
      ..writeByte(1)
      ..write(obj.userName)
      ..writeByte(2)
      ..write(obj.userPhone)
      ..writeByte(3)
      ..write(obj.password)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.userToken)
      ..writeByte(6)
      ..write(obj.userFirebaseToken)
      ..writeByte(7)
      ..write(obj.loginType)
      ..writeByte(8)
      ..write(obj.socialId)
      ..writeByte(9)
      ..write(obj.userPhoto)
      ..writeByte(10)
      ..write(obj.userStatus)
      ..writeByte(11)
      ..write(obj.lastUpdatedUsers)
      ..writeByte(12)
      ..write(obj.createdAtUser)
      ..writeByte(13)
      ..write(obj.userRate)
      ..writeByte(14)
      ..write(obj.userTimesOfRates)
      ..writeByte(15)
      ..write(obj.userTotalRates)
      ..writeByte(16)
      ..write(obj.tripNumber)
      ..writeByte(17)
      ..write(obj.hasTrip)
      ..writeByte(18)
      ..write(obj.login)
      ..writeByte(19)
      ..write(obj.userVersion)
      ..writeByte(20)
      ..write(obj.userBalance);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      usersId: json['UsersID'] as String?,
      userName: json['UserName'] as String?,
      userPhone: json['UserPhone'] as String?,
      password: json['Password'] as String?,
      email: json['Email'] as String?,
      userToken: json['UserToken'] as String?,
      userFirebaseToken: json['UserFirebaseToken'] as String?,
      loginType: json['LoginType'] as String?,
      socialId: json['Socialid'] as String?,
      userPhoto: json['UserPhoto'] as String?,
      userStatus: json['UserStatus'] as String?,
      lastUpdatedUsers: json['lastUpdatedUsers'] as String?,
      createdAtUser: json['CreatedAtUser'] as String?,
      userRate: json['UserRate'] as String?,
      userTimesOfRates: json['UserTimesOfRates'] as String?,
      userTotalRates: json['UserTotalRates'] as String?,
      tripNumber: json['TripNumber'] as String?,
      hasTrip: json['HasTrip'] as String?,
      login: json['Login'] as String?,
      userVersion: json['UserVersion'] as String?,
      userBalance: json['UserBalance'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'UsersID': instance.usersId,
      'UserName': instance.userName,
      'UserPhone': instance.userPhone,
      'Password': instance.password,
      'Email': instance.email,
      'UserToken': instance.userToken,
      'UserFirebaseToken': instance.userFirebaseToken,
      'LoginType': instance.loginType,
      'Socialid': instance.socialId,
      'UserPhoto': instance.userPhoto,
      'UserStatus': instance.userStatus,
      'lastUpdatedUsers': instance.lastUpdatedUsers,
      'CreatedAtUser': instance.createdAtUser,
      'UserRate': instance.userRate,
      'UserTimesOfRates': instance.userTimesOfRates,
      'UserTotalRates': instance.userTotalRates,
      'TripNumber': instance.tripNumber,
      'HasTrip': instance.hasTrip,
      'Login': instance.login,
      'UserVersion': instance.userVersion,
      'UserBalance': instance.userBalance,
    };
