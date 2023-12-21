// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_realtime_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRealtimeModel _$UserRealtimeModelFromJson(Map<String, dynamic> json) {
  return _UserRealtimeModel.fromJson(json);
}

/// @nodoc
mixin _$UserRealtimeModel {
  @HiveField(0)
  String? get userToken => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get firebaseToken => throw _privateConstructorUsedError;
  @HiveField(2)
  double? get latitude => throw _privateConstructorUsedError;
  @HiveField(3)
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRealtimeModelCopyWith<UserRealtimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRealtimeModelCopyWith<$Res> {
  factory $UserRealtimeModelCopyWith(
          UserRealtimeModel value, $Res Function(UserRealtimeModel) then) =
      _$UserRealtimeModelCopyWithImpl<$Res, UserRealtimeModel>;
  @useResult
  $Res call(
      {@HiveField(0) String? userToken,
      @HiveField(1) String? firebaseToken,
      @HiveField(2) double? latitude,
      @HiveField(3) double? longitude});
}

/// @nodoc
class _$UserRealtimeModelCopyWithImpl<$Res, $Val extends UserRealtimeModel>
    implements $UserRealtimeModelCopyWith<$Res> {
  _$UserRealtimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userToken = freezed,
    Object? firebaseToken = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      userToken: freezed == userToken
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as String?,
      firebaseToken: freezed == firebaseToken
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRealtimeModelImplCopyWith<$Res>
    implements $UserRealtimeModelCopyWith<$Res> {
  factory _$$UserRealtimeModelImplCopyWith(_$UserRealtimeModelImpl value,
          $Res Function(_$UserRealtimeModelImpl) then) =
      __$$UserRealtimeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? userToken,
      @HiveField(1) String? firebaseToken,
      @HiveField(2) double? latitude,
      @HiveField(3) double? longitude});
}

/// @nodoc
class __$$UserRealtimeModelImplCopyWithImpl<$Res>
    extends _$UserRealtimeModelCopyWithImpl<$Res, _$UserRealtimeModelImpl>
    implements _$$UserRealtimeModelImplCopyWith<$Res> {
  __$$UserRealtimeModelImplCopyWithImpl(_$UserRealtimeModelImpl _value,
      $Res Function(_$UserRealtimeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userToken = freezed,
    Object? firebaseToken = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$UserRealtimeModelImpl(
      userToken: freezed == userToken
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as String?,
      firebaseToken: freezed == firebaseToken
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRealtimeModelImpl implements _UserRealtimeModel {
  _$UserRealtimeModelImpl(
      {@HiveField(0) this.userToken,
      @HiveField(1) this.firebaseToken,
      @HiveField(2) this.latitude,
      @HiveField(3) this.longitude});

  factory _$UserRealtimeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRealtimeModelImplFromJson(json);

  @override
  @HiveField(0)
  final String? userToken;
  @override
  @HiveField(1)
  final String? firebaseToken;
  @override
  @HiveField(2)
  final double? latitude;
  @override
  @HiveField(3)
  final double? longitude;

  @override
  String toString() {
    return 'UserRealtimeModel(userToken: $userToken, firebaseToken: $firebaseToken, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRealtimeModelImpl &&
            (identical(other.userToken, userToken) ||
                other.userToken == userToken) &&
            (identical(other.firebaseToken, firebaseToken) ||
                other.firebaseToken == firebaseToken) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userToken, firebaseToken, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRealtimeModelImplCopyWith<_$UserRealtimeModelImpl> get copyWith =>
      __$$UserRealtimeModelImplCopyWithImpl<_$UserRealtimeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRealtimeModelImplToJson(
      this,
    );
  }
}

abstract class _UserRealtimeModel implements UserRealtimeModel {
  factory _UserRealtimeModel(
      {@HiveField(0) final String? userToken,
      @HiveField(1) final String? firebaseToken,
      @HiveField(2) final double? latitude,
      @HiveField(3) final double? longitude}) = _$UserRealtimeModelImpl;

  factory _UserRealtimeModel.fromJson(Map<String, dynamic> json) =
      _$UserRealtimeModelImpl.fromJson;

  @override
  @HiveField(0)
  String? get userToken;
  @override
  @HiveField(1)
  String? get firebaseToken;
  @override
  @HiveField(2)
  double? get latitude;
  @override
  @HiveField(3)
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$UserRealtimeModelImplCopyWith<_$UserRealtimeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
