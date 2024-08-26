// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeacherEntity _$TeacherEntityFromJson(Map<String, dynamic> json) {
  return _TeacherEntity.fromJson(json);
}

/// @nodoc
mixin _$TeacherEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  List<CurriculumEntity> get curriculums => throw _privateConstructorUsedError;

  /// Serializes this TeacherEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeacherEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherEntityCopyWith<TeacherEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherEntityCopyWith<$Res> {
  factory $TeacherEntityCopyWith(
          TeacherEntity value, $Res Function(TeacherEntity) then) =
      _$TeacherEntityCopyWithImpl<$Res, TeacherEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      String title,
      String avatarUrl,
      List<CurriculumEntity> curriculums});
}

/// @nodoc
class _$TeacherEntityCopyWithImpl<$Res, $Val extends TeacherEntity>
    implements $TeacherEntityCopyWith<$Res> {
  _$TeacherEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? title = null,
    Object? avatarUrl = null,
    Object? curriculums = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      curriculums: null == curriculums
          ? _value.curriculums
          : curriculums // ignore: cast_nullable_to_non_nullable
              as List<CurriculumEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherEntityImplCopyWith<$Res>
    implements $TeacherEntityCopyWith<$Res> {
  factory _$$TeacherEntityImplCopyWith(
          _$TeacherEntityImpl value, $Res Function(_$TeacherEntityImpl) then) =
      __$$TeacherEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String title,
      String avatarUrl,
      List<CurriculumEntity> curriculums});
}

/// @nodoc
class __$$TeacherEntityImplCopyWithImpl<$Res>
    extends _$TeacherEntityCopyWithImpl<$Res, _$TeacherEntityImpl>
    implements _$$TeacherEntityImplCopyWith<$Res> {
  __$$TeacherEntityImplCopyWithImpl(
      _$TeacherEntityImpl _value, $Res Function(_$TeacherEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? title = null,
    Object? avatarUrl = null,
    Object? curriculums = null,
  }) {
    return _then(_$TeacherEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      curriculums: null == curriculums
          ? _value._curriculums
          : curriculums // ignore: cast_nullable_to_non_nullable
              as List<CurriculumEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherEntityImpl implements _TeacherEntity {
  const _$TeacherEntityImpl(
      {required this.id,
      required this.name,
      required this.title,
      required this.avatarUrl,
      required final List<CurriculumEntity> curriculums})
      : _curriculums = curriculums;

  factory _$TeacherEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String title;
  @override
  final String avatarUrl;
  final List<CurriculumEntity> _curriculums;
  @override
  List<CurriculumEntity> get curriculums {
    if (_curriculums is EqualUnmodifiableListView) return _curriculums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_curriculums);
  }

  @override
  String toString() {
    return 'TeacherEntity(id: $id, name: $name, title: $title, avatarUrl: $avatarUrl, curriculums: $curriculums)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            const DeepCollectionEquality()
                .equals(other._curriculums, _curriculums));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, title, avatarUrl,
      const DeepCollectionEquality().hash(_curriculums));

  /// Create a copy of TeacherEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherEntityImplCopyWith<_$TeacherEntityImpl> get copyWith =>
      __$$TeacherEntityImplCopyWithImpl<_$TeacherEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherEntityImplToJson(
      this,
    );
  }
}

abstract class _TeacherEntity implements TeacherEntity {
  const factory _TeacherEntity(
      {required final String id,
      required final String name,
      required final String title,
      required final String avatarUrl,
      required final List<CurriculumEntity> curriculums}) = _$TeacherEntityImpl;

  factory _TeacherEntity.fromJson(Map<String, dynamic> json) =
      _$TeacherEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get title;
  @override
  String get avatarUrl;
  @override
  List<CurriculumEntity> get curriculums;

  /// Create a copy of TeacherEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherEntityImplCopyWith<_$TeacherEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
