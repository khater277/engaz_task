// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
@HiveType(typeId: 0)
class UserModel with _$UserModel {
  factory UserModel({
    @HiveField(0) @JsonKey(name: 'UsersID') String? usersId,
    @HiveField(1) @JsonKey(name: 'UserName') String? userName,
    @HiveField(2) @JsonKey(name: 'UserPhone') String? userPhone,
    @HiveField(3) @JsonKey(name: 'Password') String? password,
    @HiveField(4) @JsonKey(name: 'Email') String? email,
    @HiveField(5) @JsonKey(name: 'UserToken') String? userToken,
    @HiveField(6) @JsonKey(name: 'UserFirebaseToken') String? userFirebaseToken,
    @HiveField(7) @JsonKey(name: 'LoginType') String? loginType,
    @HiveField(8) @JsonKey(name: 'Socialid') String? socialId,
    @HiveField(9) @JsonKey(name: 'UserPhoto') String? userPhoto,
    @HiveField(10) @JsonKey(name: 'UserStatus') String? userStatus,
    @HiveField(11) String? lastUpdatedUsers,
    @HiveField(12) @JsonKey(name: 'CreatedAtUser') String? createdAtUser,
    @HiveField(13) @JsonKey(name: 'UserRate') String? userRate,
    @HiveField(14) @JsonKey(name: 'UserTimesOfRates') String? userTimesOfRates,
    @HiveField(15) @JsonKey(name: 'UserTotalRates') String? userTotalRates,
    @HiveField(16) @JsonKey(name: 'TripNumber') String? tripNumber,
    @HiveField(17) @JsonKey(name: 'HasTrip') String? hasTrip,
    @HiveField(18) @JsonKey(name: 'Login') String? login,
    @HiveField(19) @JsonKey(name: 'UserVersion') String? userVersion,
    @HiveField(20) @JsonKey(name: 'UserBalance') String? userBalance,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
