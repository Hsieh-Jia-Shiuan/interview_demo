// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'curriculum_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurriculumEntity _$CurriculumEntityFromJson(Map<String, dynamic> json) {
  return _CurriculumEntity.fromJson(json);
}

/// @nodoc
mixin _$CurriculumEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get schedule => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this CurriculumEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurriculumEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurriculumEntityCopyWith<CurriculumEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurriculumEntityCopyWith<$Res> {
  factory $CurriculumEntityCopyWith(
          CurriculumEntity value, $Res Function(CurriculumEntity) then) =
      _$CurriculumEntityCopyWithImpl<$Res, CurriculumEntity>;
  @useResult
  $Res call({String id, String name, String schedule, String content});
}

/// @nodoc
class _$CurriculumEntityCopyWithImpl<$Res, $Val extends CurriculumEntity>
    implements $CurriculumEntityCopyWith<$Res> {
  _$CurriculumEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurriculumEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? schedule = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurriculumEntityImplCopyWith<$Res>
    implements $CurriculumEntityCopyWith<$Res> {
  factory _$$CurriculumEntityImplCopyWith(_$CurriculumEntityImpl value,
          $Res Function(_$CurriculumEntityImpl) then) =
      __$$CurriculumEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String schedule, String content});
}

/// @nodoc
class __$$CurriculumEntityImplCopyWithImpl<$Res>
    extends _$CurriculumEntityCopyWithImpl<$Res, _$CurriculumEntityImpl>
    implements _$$CurriculumEntityImplCopyWith<$Res> {
  __$$CurriculumEntityImplCopyWithImpl(_$CurriculumEntityImpl _value,
      $Res Function(_$CurriculumEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurriculumEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? schedule = null,
    Object? content = null,
  }) {
    return _then(_$CurriculumEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurriculumEntityImpl implements _CurriculumEntity {
  const _$CurriculumEntityImpl(
      {required this.id,
      required this.name,
      required this.schedule,
      required this.content});

  factory _$CurriculumEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurriculumEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String schedule;
  @override
  final String content;

  @override
  String toString() {
    return 'CurriculumEntity(id: $id, name: $name, schedule: $schedule, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurriculumEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, schedule, content);

  /// Create a copy of CurriculumEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurriculumEntityImplCopyWith<_$CurriculumEntityImpl> get copyWith =>
      __$$CurriculumEntityImplCopyWithImpl<_$CurriculumEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurriculumEntityImplToJson(
      this,
    );
  }
}

abstract class _CurriculumEntity implements CurriculumEntity {
  const factory _CurriculumEntity(
      {required final String id,
      required final String name,
      required final String schedule,
      required final String content}) = _$CurriculumEntityImpl;

  factory _CurriculumEntity.fromJson(Map<String, dynamic> json) =
      _$CurriculumEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get schedule;
  @override
  String get content;

  /// Create a copy of CurriculumEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurriculumEntityImplCopyWith<_$CurriculumEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
