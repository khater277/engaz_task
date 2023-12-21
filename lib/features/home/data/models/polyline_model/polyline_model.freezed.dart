// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'polyline_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PolylineModel _$PolylineModelFromJson(Map<String, dynamic> json) {
  return _PolylineModel.fromJson(json);
}

/// @nodoc
mixin _$PolylineModel {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  double? get startLat => throw _privateConstructorUsedError;
  @HiveField(2)
  double? get startLong => throw _privateConstructorUsedError;
  @HiveField(3)
  double? get destinationLat => throw _privateConstructorUsedError;
  @HiveField(4)
  double? get destinationLong => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolylineModelCopyWith<PolylineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolylineModelCopyWith<$Res> {
  factory $PolylineModelCopyWith(
          PolylineModel value, $Res Function(PolylineModel) then) =
      _$PolylineModelCopyWithImpl<$Res, PolylineModel>;
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) double? startLat,
      @HiveField(2) double? startLong,
      @HiveField(3) double? destinationLat,
      @HiveField(4) double? destinationLong});
}

/// @nodoc
class _$PolylineModelCopyWithImpl<$Res, $Val extends PolylineModel>
    implements $PolylineModelCopyWith<$Res> {
  _$PolylineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startLat = freezed,
    Object? startLong = freezed,
    Object? destinationLat = freezed,
    Object? destinationLong = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      startLat: freezed == startLat
          ? _value.startLat
          : startLat // ignore: cast_nullable_to_non_nullable
              as double?,
      startLong: freezed == startLong
          ? _value.startLong
          : startLong // ignore: cast_nullable_to_non_nullable
              as double?,
      destinationLat: freezed == destinationLat
          ? _value.destinationLat
          : destinationLat // ignore: cast_nullable_to_non_nullable
              as double?,
      destinationLong: freezed == destinationLong
          ? _value.destinationLong
          : destinationLong // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PolylineModelImplCopyWith<$Res>
    implements $PolylineModelCopyWith<$Res> {
  factory _$$PolylineModelImplCopyWith(
          _$PolylineModelImpl value, $Res Function(_$PolylineModelImpl) then) =
      __$$PolylineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) double? startLat,
      @HiveField(2) double? startLong,
      @HiveField(3) double? destinationLat,
      @HiveField(4) double? destinationLong});
}

/// @nodoc
class __$$PolylineModelImplCopyWithImpl<$Res>
    extends _$PolylineModelCopyWithImpl<$Res, _$PolylineModelImpl>
    implements _$$PolylineModelImplCopyWith<$Res> {
  __$$PolylineModelImplCopyWithImpl(
      _$PolylineModelImpl _value, $Res Function(_$PolylineModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startLat = freezed,
    Object? startLong = freezed,
    Object? destinationLat = freezed,
    Object? destinationLong = freezed,
  }) {
    return _then(_$PolylineModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      startLat: freezed == startLat
          ? _value.startLat
          : startLat // ignore: cast_nullable_to_non_nullable
              as double?,
      startLong: freezed == startLong
          ? _value.startLong
          : startLong // ignore: cast_nullable_to_non_nullable
              as double?,
      destinationLat: freezed == destinationLat
          ? _value.destinationLat
          : destinationLat // ignore: cast_nullable_to_non_nullable
              as double?,
      destinationLong: freezed == destinationLong
          ? _value.destinationLong
          : destinationLong // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PolylineModelImpl implements _PolylineModel {
  _$PolylineModelImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.startLat,
      @HiveField(2) this.startLong,
      @HiveField(3) this.destinationLat,
      @HiveField(4) this.destinationLong});

  factory _$PolylineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PolylineModelImplFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final double? startLat;
  @override
  @HiveField(2)
  final double? startLong;
  @override
  @HiveField(3)
  final double? destinationLat;
  @override
  @HiveField(4)
  final double? destinationLong;

  @override
  String toString() {
    return 'PolylineModel(id: $id, startLat: $startLat, startLong: $startLong, destinationLat: $destinationLat, destinationLong: $destinationLong)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolylineModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startLat, startLat) ||
                other.startLat == startLat) &&
            (identical(other.startLong, startLong) ||
                other.startLong == startLong) &&
            (identical(other.destinationLat, destinationLat) ||
                other.destinationLat == destinationLat) &&
            (identical(other.destinationLong, destinationLong) ||
                other.destinationLong == destinationLong));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, startLat, startLong, destinationLat, destinationLong);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PolylineModelImplCopyWith<_$PolylineModelImpl> get copyWith =>
      __$$PolylineModelImplCopyWithImpl<_$PolylineModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PolylineModelImplToJson(
      this,
    );
  }
}

abstract class _PolylineModel implements PolylineModel {
  factory _PolylineModel(
      {@HiveField(0) final String? id,
      @HiveField(1) final double? startLat,
      @HiveField(2) final double? startLong,
      @HiveField(3) final double? destinationLat,
      @HiveField(4) final double? destinationLong}) = _$PolylineModelImpl;

  factory _PolylineModel.fromJson(Map<String, dynamic> json) =
      _$PolylineModelImpl.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  double? get startLat;
  @override
  @HiveField(2)
  double? get startLong;
  @override
  @HiveField(3)
  double? get destinationLat;
  @override
  @HiveField(4)
  double? get destinationLong;
  @override
  @JsonKey(ignore: true)
  _$$PolylineModelImplCopyWith<_$PolylineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
