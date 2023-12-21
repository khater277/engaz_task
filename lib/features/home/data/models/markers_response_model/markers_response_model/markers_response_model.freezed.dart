// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'markers_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarkersResponseModel _$MarkersResponseModelFromJson(Map<String, dynamic> json) {
  return _MarkersResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MarkersResponseModel {
  @HiveField(0)
  @JsonKey(name: 'status_code')
  int? get statusCode => throw _privateConstructorUsedError;
  @HiveField(1)
  bool? get success => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'data')
  List<MarkerData>? get markers => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarkersResponseModelCopyWith<MarkersResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkersResponseModelCopyWith<$Res> {
  factory $MarkersResponseModelCopyWith(MarkersResponseModel value,
          $Res Function(MarkersResponseModel) then) =
      _$MarkersResponseModelCopyWithImpl<$Res, MarkersResponseModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'status_code') int? statusCode,
      @HiveField(1) bool? success,
      @HiveField(2) @JsonKey(name: 'data') List<MarkerData>? markers,
      @HiveField(3) String? message});
}

/// @nodoc
class _$MarkersResponseModelCopyWithImpl<$Res,
        $Val extends MarkersResponseModel>
    implements $MarkersResponseModelCopyWith<$Res> {
  _$MarkersResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? success = freezed,
    Object? markers = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      markers: freezed == markers
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as List<MarkerData>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarkersResponseModelImplCopyWith<$Res>
    implements $MarkersResponseModelCopyWith<$Res> {
  factory _$$MarkersResponseModelImplCopyWith(_$MarkersResponseModelImpl value,
          $Res Function(_$MarkersResponseModelImpl) then) =
      __$$MarkersResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'status_code') int? statusCode,
      @HiveField(1) bool? success,
      @HiveField(2) @JsonKey(name: 'data') List<MarkerData>? markers,
      @HiveField(3) String? message});
}

/// @nodoc
class __$$MarkersResponseModelImplCopyWithImpl<$Res>
    extends _$MarkersResponseModelCopyWithImpl<$Res, _$MarkersResponseModelImpl>
    implements _$$MarkersResponseModelImplCopyWith<$Res> {
  __$$MarkersResponseModelImplCopyWithImpl(_$MarkersResponseModelImpl _value,
      $Res Function(_$MarkersResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? success = freezed,
    Object? markers = freezed,
    Object? message = freezed,
  }) {
    return _then(_$MarkersResponseModelImpl(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      markers: freezed == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as List<MarkerData>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarkersResponseModelImpl implements _MarkersResponseModel {
  _$MarkersResponseModelImpl(
      {@HiveField(0) @JsonKey(name: 'status_code') this.statusCode,
      @HiveField(1) this.success,
      @HiveField(2) @JsonKey(name: 'data') final List<MarkerData>? markers,
      @HiveField(3) this.message})
      : _markers = markers;

  factory _$MarkersResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarkersResponseModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'status_code')
  final int? statusCode;
  @override
  @HiveField(1)
  final bool? success;
  final List<MarkerData>? _markers;
  @override
  @HiveField(2)
  @JsonKey(name: 'data')
  List<MarkerData>? get markers {
    final value = _markers;
    if (value == null) return null;
    if (_markers is EqualUnmodifiableListView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(3)
  final String? message;

  @override
  String toString() {
    return 'MarkersResponseModel(statusCode: $statusCode, success: $success, markers: $markers, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkersResponseModelImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, success,
      const DeepCollectionEquality().hash(_markers), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkersResponseModelImplCopyWith<_$MarkersResponseModelImpl>
      get copyWith =>
          __$$MarkersResponseModelImplCopyWithImpl<_$MarkersResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarkersResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MarkersResponseModel implements MarkersResponseModel {
  factory _MarkersResponseModel(
      {@HiveField(0) @JsonKey(name: 'status_code') final int? statusCode,
      @HiveField(1) final bool? success,
      @HiveField(2) @JsonKey(name: 'data') final List<MarkerData>? markers,
      @HiveField(3) final String? message}) = _$MarkersResponseModelImpl;

  factory _MarkersResponseModel.fromJson(Map<String, dynamic> json) =
      _$MarkersResponseModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'status_code')
  int? get statusCode;
  @override
  @HiveField(1)
  bool? get success;
  @override
  @HiveField(2)
  @JsonKey(name: 'data')
  List<MarkerData>? get markers;
  @override
  @HiveField(3)
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$MarkersResponseModelImplCopyWith<_$MarkersResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
