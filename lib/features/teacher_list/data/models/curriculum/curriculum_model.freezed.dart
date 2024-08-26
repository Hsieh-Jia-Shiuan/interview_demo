// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'curriculum_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurriculumModel _$CurriculumModelFromJson(Map<String, dynamic> json) {
  return _CurriculumModel.fromJson(json);
}

/// @nodoc
mixin _$CurriculumModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this CurriculumModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurriculumModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurriculumModelCopyWith<CurriculumModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurriculumModelCopyWith<$Res> {
  factory $CurriculumModelCopyWith(
          CurriculumModel value, $Res Function(CurriculumModel) then) =
      _$CurriculumModelCopyWithImpl<$Res, CurriculumModel>;
  @useResult
  $Res call({String id, String name, String time, String content});
}

/// @nodoc
class _$CurriculumModelCopyWithImpl<$Res, $Val extends CurriculumModel>
    implements $CurriculumModelCopyWith<$Res> {
  _$CurriculumModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurriculumModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? time = null,
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
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurriculumModelImplCopyWith<$Res>
    implements $CurriculumModelCopyWith<$Res> {
  factory _$$CurriculumModelImplCopyWith(_$CurriculumModelImpl value,
          $Res Function(_$CurriculumModelImpl) then) =
      __$$CurriculumModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String time, String content});
}

/// @nodoc
class __$$CurriculumModelImplCopyWithImpl<$Res>
    extends _$CurriculumModelCopyWithImpl<$Res, _$CurriculumModelImpl>
    implements _$$CurriculumModelImplCopyWith<$Res> {
  __$$CurriculumModelImplCopyWithImpl(
      _$CurriculumModelImpl _value, $Res Function(_$CurriculumModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurriculumModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? time = null,
    Object? content = null,
  }) {
    return _then(_$CurriculumModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
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
class _$CurriculumModelImpl implements _CurriculumModel {
  const _$CurriculumModelImpl(
      {required this.id,
      required this.name,
      required this.time,
      required this.content});

  factory _$CurriculumModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurriculumModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String time;
  @override
  final String content;

  @override
  String toString() {
    return 'CurriculumModel(id: $id, name: $name, time: $time, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurriculumModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, time, content);

  /// Create a copy of CurriculumModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurriculumModelImplCopyWith<_$CurriculumModelImpl> get copyWith =>
      __$$CurriculumModelImplCopyWithImpl<_$CurriculumModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurriculumModelImplToJson(
      this,
    );
  }
}

abstract class _CurriculumModel implements CurriculumModel {
  const factory _CurriculumModel(
      {required final String id,
      required final String name,
      required final String time,
      required final String content}) = _$CurriculumModelImpl;

  factory _CurriculumModel.fromJson(Map<String, dynamic> json) =
      _$CurriculumModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get time;
  @override
  String get content;

  /// Create a copy of CurriculumModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurriculumModelImplCopyWith<_$CurriculumModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
