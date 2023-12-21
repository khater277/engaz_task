// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginBodyModel _$LoginBodyModelFromJson(Map<String, dynamic> json) {
  return _LoginBodyModel.fromJson(json);
}

/// @nodoc
mixin _$LoginBodyModel {
  @JsonKey(name: 'UserPhone')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'Password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserFirebaseToken')
  String? get firebaseToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginBodyModelCopyWith<LoginBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginBodyModelCopyWith<$Res> {
  factory $LoginBodyModelCopyWith(
          LoginBodyModel value, $Res Function(LoginBodyModel) then) =
      _$LoginBodyModelCopyWithImpl<$Res, LoginBodyModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'UserPhone') String? phoneNumber,
      @JsonKey(name: 'Password') String? password,
      @JsonKey(name: 'UserFirebaseToken') String? firebaseToken});
}

/// @nodoc
class _$LoginBodyModelCopyWithImpl<$Res, $Val extends LoginBodyModel>
    implements $LoginBodyModelCopyWith<$Res> {
  _$LoginBodyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? firebaseToken = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      firebaseToken: freezed == firebaseToken
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginBodyModelImplCopyWith<$Res>
    implements $LoginBodyModelCopyWith<$Res> {
  factory _$$LoginBodyModelImplCopyWith(_$LoginBodyModelImpl value,
          $Res Function(_$LoginBodyModelImpl) then) =
      __$$LoginBodyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'UserPhone') String? phoneNumber,
      @JsonKey(name: 'Password') String? password,
      @JsonKey(name: 'UserFirebaseToken') String? firebaseToken});
}

/// @nodoc
class __$$LoginBodyModelImplCopyWithImpl<$Res>
    extends _$LoginBodyModelCopyWithImpl<$Res, _$LoginBodyModelImpl>
    implements _$$LoginBodyModelImplCopyWith<$Res> {
  __$$LoginBodyModelImplCopyWithImpl(
      _$LoginBodyModelImpl _value, $Res Function(_$LoginBodyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? firebaseToken = freezed,
  }) {
    return _then(_$LoginBodyModelImpl(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      firebaseToken: freezed == firebaseToken
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginBodyModelImpl implements _LoginBodyModel {
  _$LoginBodyModelImpl(
      {@JsonKey(name: 'UserPhone') this.phoneNumber,
      @JsonKey(name: 'Password') this.password,
      @JsonKey(name: 'UserFirebaseToken') this.firebaseToken});

  factory _$LoginBodyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginBodyModelImplFromJson(json);

  @override
  @JsonKey(name: 'UserPhone')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'Password')
  final String? password;
  @override
  @JsonKey(name: 'UserFirebaseToken')
  final String? firebaseToken;

  @override
  String toString() {
    return 'LoginBodyModel(phoneNumber: $phoneNumber, password: $password, firebaseToken: $firebaseToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginBodyModelImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firebaseToken, firebaseToken) ||
                other.firebaseToken == firebaseToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumber, password, firebaseToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginBodyModelImplCopyWith<_$LoginBodyModelImpl> get copyWith =>
      __$$LoginBodyModelImplCopyWithImpl<_$LoginBodyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginBodyModelImplToJson(
      this,
    );
  }
}

abstract class _LoginBodyModel implements LoginBodyModel {
  factory _LoginBodyModel(
          {@JsonKey(name: 'UserPhone') final String? phoneNumber,
          @JsonKey(name: 'Password') final String? password,
          @JsonKey(name: 'UserFirebaseToken') final String? firebaseToken}) =
      _$LoginBodyModelImpl;

  factory _LoginBodyModel.fromJson(Map<String, dynamic> json) =
      _$LoginBodyModelImpl.fromJson;

  @override
  @JsonKey(name: 'UserPhone')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'Password')
  String? get password;
  @override
  @JsonKey(name: 'UserFirebaseToken')
  String? get firebaseToken;
  @override
  @JsonKey(ignore: true)
  _$$LoginBodyModelImplCopyWith<_$LoginBodyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
