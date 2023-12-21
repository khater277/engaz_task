// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marker_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarkerData _$MarkerDataFromJson(Map<String, dynamic> json) {
  return _MarkerData.fromJson(json);
}

/// @nodoc
mixin _$MarkerData {
  @HiveField(0)
  @JsonKey(name: 'TaskID')
  String? get taskId => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'Lat')
  String? get lat => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'Longt')
  String? get longt => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarkerDataCopyWith<MarkerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkerDataCopyWith<$Res> {
  factory $MarkerDataCopyWith(
          MarkerData value, $Res Function(MarkerData) then) =
      _$MarkerDataCopyWithImpl<$Res, MarkerData>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'TaskID') String? taskId,
      @HiveField(1) @JsonKey(name: 'Lat') String? lat,
      @HiveField(2) @JsonKey(name: 'Longt') String? longt,
      @HiveField(3) @JsonKey(name: 'Name') String? name});
}

/// @nodoc
class _$MarkerDataCopyWithImpl<$Res, $Val extends MarkerData>
    implements $MarkerDataCopyWith<$Res> {
  _$MarkerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = freezed,
    Object? lat = freezed,
    Object? longt = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      longt: freezed == longt
          ? _value.longt
          : longt // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarkerDataImplCopyWith<$Res>
    implements $MarkerDataCopyWith<$Res> {
  factory _$$MarkerDataImplCopyWith(
          _$MarkerDataImpl value, $Res Function(_$MarkerDataImpl) then) =
      __$$MarkerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'TaskID') String? taskId,
      @HiveField(1) @JsonKey(name: 'Lat') String? lat,
      @HiveField(2) @JsonKey(name: 'Longt') String? longt,
      @HiveField(3) @JsonKey(name: 'Name') String? name});
}

/// @nodoc
class __$$MarkerDataImplCopyWithImpl<$Res>
    extends _$MarkerDataCopyWithImpl<$Res, _$MarkerDataImpl>
    implements _$$MarkerDataImplCopyWith<$Res> {
  __$$MarkerDataImplCopyWithImpl(
      _$MarkerDataImpl _value, $Res Function(_$MarkerDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = freezed,
    Object? lat = freezed,
    Object? longt = freezed,
    Object? name = freezed,
  }) {
    return _then(_$MarkerDataImpl(
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      longt: freezed == longt
          ? _value.longt
          : longt // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarkerDataImpl implements _MarkerData {
  _$MarkerDataImpl(
      {@HiveField(0) @JsonKey(name: 'TaskID') this.taskId,
      @HiveField(1) @JsonKey(name: 'Lat') this.lat,
      @HiveField(2) @JsonKey(name: 'Longt') this.longt,
      @HiveField(3) @JsonKey(name: 'Name') this.name});

  factory _$MarkerDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarkerDataImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'TaskID')
  final String? taskId;
  @override
  @HiveField(1)
  @JsonKey(name: 'Lat')
  final String? lat;
  @override
  @HiveField(2)
  @JsonKey(name: 'Longt')
  final String? longt;
  @override
  @HiveField(3)
  @JsonKey(name: 'Name')
  final String? name;

  @override
  String toString() {
    return 'MarkerData(taskId: $taskId, lat: $lat, longt: $longt, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkerDataImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.longt, longt) || other.longt == longt) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, taskId, lat, longt, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkerDataImplCopyWith<_$MarkerDataImpl> get copyWith =>
      __$$MarkerDataImplCopyWithImpl<_$MarkerDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarkerDataImplToJson(
      this,
    );
  }
}

abstract class _MarkerData implements MarkerData {
  factory _MarkerData(
          {@HiveField(0) @JsonKey(name: 'TaskID') final String? taskId,
          @HiveField(1) @JsonKey(name: 'Lat') final String? lat,
          @HiveField(2) @JsonKey(name: 'Longt') final String? longt,
          @HiveField(3) @JsonKey(name: 'Name') final String? name}) =
      _$MarkerDataImpl;

  factory _MarkerData.fromJson(Map<String, dynamic> json) =
      _$MarkerDataImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'TaskID')
  String? get taskId;
  @override
  @HiveField(1)
  @JsonKey(name: 'Lat')
  String? get lat;
  @override
  @HiveField(2)
  @JsonKey(name: 'Longt')
  String? get longt;
  @override
  @HiveField(3)
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$MarkerDataImplCopyWith<_$MarkerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
