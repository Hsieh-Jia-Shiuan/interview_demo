// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeacherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchData,
    required TResult Function(TeacherEntity newDatas) createTeacher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchData,
    TResult? Function(TeacherEntity newDatas)? createTeacher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchData,
    TResult Function(TeacherEntity newDatas)? createTeacher,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchData value) fetchData,
    required TResult Function(_CreateTeacher value) createTeacher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchData value)? fetchData,
    TResult? Function(_CreateTeacher value)? createTeacher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchData value)? fetchData,
    TResult Function(_CreateTeacher value)? createTeacher,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherEventCopyWith<$Res> {
  factory $TeacherEventCopyWith(
          TeacherEvent value, $Res Function(TeacherEvent) then) =
      _$TeacherEventCopyWithImpl<$Res, TeacherEvent>;
}

/// @nodoc
class _$TeacherEventCopyWithImpl<$Res, $Val extends TeacherEvent>
    implements $TeacherEventCopyWith<$Res> {
  _$TeacherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchDataImplCopyWith<$Res> {
  factory _$$FetchDataImplCopyWith(
          _$FetchDataImpl value, $Res Function(_$FetchDataImpl) then) =
      __$$FetchDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDataImplCopyWithImpl<$Res>
    extends _$TeacherEventCopyWithImpl<$Res, _$FetchDataImpl>
    implements _$$FetchDataImplCopyWith<$Res> {
  __$$FetchDataImplCopyWithImpl(
      _$FetchDataImpl _value, $Res Function(_$FetchDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchDataImpl implements _FetchData {
  const _$FetchDataImpl();

  @override
  String toString() {
    return 'TeacherEvent.fetchData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchData,
    required TResult Function(TeacherEntity newDatas) createTeacher,
  }) {
    return fetchData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchData,
    TResult? Function(TeacherEntity newDatas)? createTeacher,
  }) {
    return fetchData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchData,
    TResult Function(TeacherEntity newDatas)? createTeacher,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchData value) fetchData,
    required TResult Function(_CreateTeacher value) createTeacher,
  }) {
    return fetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchData value)? fetchData,
    TResult? Function(_CreateTeacher value)? createTeacher,
  }) {
    return fetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchData value)? fetchData,
    TResult Function(_CreateTeacher value)? createTeacher,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(this);
    }
    return orElse();
  }
}

abstract class _FetchData implements TeacherEvent {
  const factory _FetchData() = _$FetchDataImpl;
}

/// @nodoc
abstract class _$$CreateTeacherImplCopyWith<$Res> {
  factory _$$CreateTeacherImplCopyWith(
          _$CreateTeacherImpl value, $Res Function(_$CreateTeacherImpl) then) =
      __$$CreateTeacherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TeacherEntity newDatas});

  $TeacherEntityCopyWith<$Res> get newDatas;
}

/// @nodoc
class __$$CreateTeacherImplCopyWithImpl<$Res>
    extends _$TeacherEventCopyWithImpl<$Res, _$CreateTeacherImpl>
    implements _$$CreateTeacherImplCopyWith<$Res> {
  __$$CreateTeacherImplCopyWithImpl(
      _$CreateTeacherImpl _value, $Res Function(_$CreateTeacherImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newDatas = null,
  }) {
    return _then(_$CreateTeacherImpl(
      newDatas: null == newDatas
          ? _value.newDatas
          : newDatas // ignore: cast_nullable_to_non_nullable
              as TeacherEntity,
    ));
  }

  /// Create a copy of TeacherEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeacherEntityCopyWith<$Res> get newDatas {
    return $TeacherEntityCopyWith<$Res>(_value.newDatas, (value) {
      return _then(_value.copyWith(newDatas: value));
    });
  }
}

/// @nodoc

class _$CreateTeacherImpl implements _CreateTeacher {
  const _$CreateTeacherImpl({required this.newDatas});

  @override
  final TeacherEntity newDatas;

  @override
  String toString() {
    return 'TeacherEvent.createTeacher(newDatas: $newDatas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTeacherImpl &&
            (identical(other.newDatas, newDatas) ||
                other.newDatas == newDatas));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newDatas);

  /// Create a copy of TeacherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTeacherImplCopyWith<_$CreateTeacherImpl> get copyWith =>
      __$$CreateTeacherImplCopyWithImpl<_$CreateTeacherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchData,
    required TResult Function(TeacherEntity newDatas) createTeacher,
  }) {
    return createTeacher(newDatas);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchData,
    TResult? Function(TeacherEntity newDatas)? createTeacher,
  }) {
    return createTeacher?.call(newDatas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchData,
    TResult Function(TeacherEntity newDatas)? createTeacher,
    required TResult orElse(),
  }) {
    if (createTeacher != null) {
      return createTeacher(newDatas);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchData value) fetchData,
    required TResult Function(_CreateTeacher value) createTeacher,
  }) {
    return createTeacher(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchData value)? fetchData,
    TResult? Function(_CreateTeacher value)? createTeacher,
  }) {
    return createTeacher?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchData value)? fetchData,
    TResult Function(_CreateTeacher value)? createTeacher,
    required TResult orElse(),
  }) {
    if (createTeacher != null) {
      return createTeacher(this);
    }
    return orElse();
  }
}

abstract class _CreateTeacher implements TeacherEvent {
  const factory _CreateTeacher({required final TeacherEntity newDatas}) =
      _$CreateTeacherImpl;

  TeacherEntity get newDatas;

  /// Create a copy of TeacherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTeacherImplCopyWith<_$CreateTeacherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TeacherState {
  List<TeacherEntity> get teachers => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TeacherEntity> teachers) initial,
    required TResult Function(List<TeacherEntity> teachers, String message)
        failed,
    required TResult Function(List<TeacherEntity> teachers) fetchDataSuccess,
    required TResult Function(List<TeacherEntity> teachers)
        createTeacherSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TeacherEntity> teachers)? initial,
    TResult? Function(List<TeacherEntity> teachers, String message)? failed,
    TResult? Function(List<TeacherEntity> teachers)? fetchDataSuccess,
    TResult? Function(List<TeacherEntity> teachers)? createTeacherSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TeacherEntity> teachers)? initial,
    TResult Function(List<TeacherEntity> teachers, String message)? failed,
    TResult Function(List<TeacherEntity> teachers)? fetchDataSuccess,
    TResult Function(List<TeacherEntity> teachers)? createTeacherSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failed value) failed,
    required TResult Function(_FetchDataSuccess value) fetchDataSuccess,
    required TResult Function(_CreateTeacherSuccess value) createTeacherSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_FetchDataSuccess value)? fetchDataSuccess,
    TResult? Function(_CreateTeacherSuccess value)? createTeacherSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_FetchDataSuccess value)? fetchDataSuccess,
    TResult Function(_CreateTeacherSuccess value)? createTeacherSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TeacherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherStateCopyWith<TeacherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherStateCopyWith<$Res> {
  factory $TeacherStateCopyWith(
          TeacherState value, $Res Function(TeacherState) then) =
      _$TeacherStateCopyWithImpl<$Res, TeacherState>;
  @useResult
  $Res call({List<TeacherEntity> teachers});
}

/// @nodoc
class _$TeacherStateCopyWithImpl<$Res, $Val extends TeacherState>
    implements $TeacherStateCopyWith<$Res> {
  _$TeacherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teachers = null,
  }) {
    return _then(_value.copyWith(
      teachers: null == teachers
          ? _value.teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<TeacherEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $TeacherStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TeacherEntity> teachers});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TeacherStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teachers = null,
  }) {
    return _then(_$InitialImpl(
      teachers: null == teachers
          ? _value._teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<TeacherEntity>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required final List<TeacherEntity> teachers})
      : _teachers = teachers;

  final List<TeacherEntity> _teachers;
  @override
  List<TeacherEntity> get teachers {
    if (_teachers is EqualUnmodifiableListView) return _teachers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teachers);
  }

  @override
  String toString() {
    return 'TeacherState.initial(teachers: $teachers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._teachers, _teachers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_teachers));

  /// Create a copy of TeacherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TeacherEntity> teachers) initial,
    required TResult Function(List<TeacherEntity> teachers, String message)
        failed,
    required TResult Function(List<TeacherEntity> teachers) fetchDataSuccess,
    required TResult Function(List<TeacherEntity> teachers)
        createTeacherSuccess,
  }) {
    return initial(teachers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TeacherEntity> teachers)? initial,
    TResult? Function(List<TeacherEntity> teachers, String message)? failed,
    TResult? Function(List<TeacherEntity> teachers)? fetchDataSuccess,
    TResult? Function(List<TeacherEntity> teachers)? createTeacherSuccess,
  }) {
    return initial?.call(teachers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TeacherEntity> teachers)? initial,
    TResult Function(List<TeacherEntity> teachers, String message)? failed,
    TResult Function(List<TeacherEntity> teachers)? fetchDataSuccess,
    TResult Function(List<TeacherEntity> teachers)? createTeacherSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(teachers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failed value) failed,
    required TResult Function(_FetchDataSuccess value) fetchDataSuccess,
    required TResult Function(_CreateTeacherSuccess value) createTeacherSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_FetchDataSuccess value)? fetchDataSuccess,
    TResult? Function(_CreateTeacherSuccess value)? createTeacherSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_FetchDataSuccess value)? fetchDataSuccess,
    TResult Function(_CreateTeacherSuccess value)? createTeacherSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TeacherState {
  const factory _Initial({required final List<TeacherEntity> teachers}) =
      _$InitialImpl;

  @override
  List<TeacherEntity> get teachers;

  /// Create a copy of TeacherState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $TeacherStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TeacherEntity> teachers, String message});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$TeacherStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teachers = null,
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      teachers: null == teachers
          ? _value._teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<TeacherEntity>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(
      {required final List<TeacherEntity> teachers, required this.message})
      : _teachers = teachers;

  final List<TeacherEntity> _teachers;
  @override
  List<TeacherEntity> get teachers {
    if (_teachers is EqualUnmodifiableListView) return _teachers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teachers);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'TeacherState.failed(teachers: $teachers, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            const DeepCollectionEquality().equals(other._teachers, _teachers) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_teachers), message);

  /// Create a copy of TeacherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TeacherEntity> teachers) initial,
    required TResult Function(List<TeacherEntity> teachers, String message)
        failed,
    required TResult Function(List<TeacherEntity> teachers) fetchDataSuccess,
    required TResult Function(List<TeacherEntity> teachers)
        createTeacherSuccess,
  }) {
    return failed(teachers, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TeacherEntity> teachers)? initial,
    TResult? Function(List<TeacherEntity> teachers, String message)? failed,
    TResult? Function(List<TeacherEntity> teachers)? fetchDataSuccess,
    TResult? Function(List<TeacherEntity> teachers)? createTeacherSuccess,
  }) {
    return failed?.call(teachers, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TeacherEntity> teachers)? initial,
    TResult Function(List<TeacherEntity> teachers, String message)? failed,
    TResult Function(List<TeacherEntity> teachers)? fetchDataSuccess,
    TResult Function(List<TeacherEntity> teachers)? createTeacherSuccess,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(teachers, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failed value) failed,
    required TResult Function(_FetchDataSuccess value) fetchDataSuccess,
    required TResult Function(_CreateTeacherSuccess value) createTeacherSuccess,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_FetchDataSuccess value)? fetchDataSuccess,
    TResult? Function(_CreateTeacherSuccess value)? createTeacherSuccess,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_FetchDataSuccess value)? fetchDataSuccess,
    TResult Function(_CreateTeacherSuccess value)? createTeacherSuccess,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements TeacherState {
  const factory _Failed(
      {required final List<TeacherEntity> teachers,
      required final String message}) = _$FailedImpl;

  @override
  List<TeacherEntity> get teachers;
  String get message;

  /// Create a copy of TeacherState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchDataSuccessImplCopyWith<$Res>
    implements $TeacherStateCopyWith<$Res> {
  factory _$$FetchDataSuccessImplCopyWith(_$FetchDataSuccessImpl value,
          $Res Function(_$FetchDataSuccessImpl) then) =
      __$$FetchDataSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TeacherEntity> teachers});
}

/// @nodoc
class __$$FetchDataSuccessImplCopyWithImpl<$Res>
    extends _$TeacherStateCopyWithImpl<$Res, _$FetchDataSuccessImpl>
    implements _$$FetchDataSuccessImplCopyWith<$Res> {
  __$$FetchDataSuccessImplCopyWithImpl(_$FetchDataSuccessImpl _value,
      $Res Function(_$FetchDataSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teachers = null,
  }) {
    return _then(_$FetchDataSuccessImpl(
      teachers: null == teachers
          ? _value._teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<TeacherEntity>,
    ));
  }
}

/// @nodoc

class _$FetchDataSuccessImpl implements _FetchDataSuccess {
  const _$FetchDataSuccessImpl({required final List<TeacherEntity> teachers})
      : _teachers = teachers;

  final List<TeacherEntity> _teachers;
  @override
  List<TeacherEntity> get teachers {
    if (_teachers is EqualUnmodifiableListView) return _teachers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teachers);
  }

  @override
  String toString() {
    return 'TeacherState.fetchDataSuccess(teachers: $teachers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDataSuccessImpl &&
            const DeepCollectionEquality().equals(other._teachers, _teachers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_teachers));

  /// Create a copy of TeacherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchDataSuccessImplCopyWith<_$FetchDataSuccessImpl> get copyWith =>
      __$$FetchDataSuccessImplCopyWithImpl<_$FetchDataSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TeacherEntity> teachers) initial,
    required TResult Function(List<TeacherEntity> teachers, String message)
        failed,
    required TResult Function(List<TeacherEntity> teachers) fetchDataSuccess,
    required TResult Function(List<TeacherEntity> teachers)
        createTeacherSuccess,
  }) {
    return fetchDataSuccess(teachers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TeacherEntity> teachers)? initial,
    TResult? Function(List<TeacherEntity> teachers, String message)? failed,
    TResult? Function(List<TeacherEntity> teachers)? fetchDataSuccess,
    TResult? Function(List<TeacherEntity> teachers)? createTeacherSuccess,
  }) {
    return fetchDataSuccess?.call(teachers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TeacherEntity> teachers)? initial,
    TResult Function(List<TeacherEntity> teachers, String message)? failed,
    TResult Function(List<TeacherEntity> teachers)? fetchDataSuccess,
    TResult Function(List<TeacherEntity> teachers)? createTeacherSuccess,
    required TResult orElse(),
  }) {
    if (fetchDataSuccess != null) {
      return fetchDataSuccess(teachers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failed value) failed,
    required TResult Function(_FetchDataSuccess value) fetchDataSuccess,
    required TResult Function(_CreateTeacherSuccess value) createTeacherSuccess,
  }) {
    return fetchDataSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_FetchDataSuccess value)? fetchDataSuccess,
    TResult? Function(_CreateTeacherSuccess value)? createTeacherSuccess,
  }) {
    return fetchDataSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_FetchDataSuccess value)? fetchDataSuccess,
    TResult Function(_CreateTeacherSuccess value)? createTeacherSuccess,
    required TResult orElse(),
  }) {
    if (fetchDataSuccess != null) {
      return fetchDataSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchDataSuccess implements TeacherState {
  const factory _FetchDataSuccess(
      {required final List<TeacherEntity> teachers}) = _$FetchDataSuccessImpl;

  @override
  List<TeacherEntity> get teachers;

  /// Create a copy of TeacherState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchDataSuccessImplCopyWith<_$FetchDataSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateTeacherSuccessImplCopyWith<$Res>
    implements $TeacherStateCopyWith<$Res> {
  factory _$$CreateTeacherSuccessImplCopyWith(_$CreateTeacherSuccessImpl value,
          $Res Function(_$CreateTeacherSuccessImpl) then) =
      __$$CreateTeacherSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TeacherEntity> teachers});
}

/// @nodoc
class __$$CreateTeacherSuccessImplCopyWithImpl<$Res>
    extends _$TeacherStateCopyWithImpl<$Res, _$CreateTeacherSuccessImpl>
    implements _$$CreateTeacherSuccessImplCopyWith<$Res> {
  __$$CreateTeacherSuccessImplCopyWithImpl(_$CreateTeacherSuccessImpl _value,
      $Res Function(_$CreateTeacherSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teachers = null,
  }) {
    return _then(_$CreateTeacherSuccessImpl(
      teachers: null == teachers
          ? _value._teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<TeacherEntity>,
    ));
  }
}

/// @nodoc

class _$CreateTeacherSuccessImpl implements _CreateTeacherSuccess {
  const _$CreateTeacherSuccessImpl(
      {required final List<TeacherEntity> teachers})
      : _teachers = teachers;

  final List<TeacherEntity> _teachers;
  @override
  List<TeacherEntity> get teachers {
    if (_teachers is EqualUnmodifiableListView) return _teachers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teachers);
  }

  @override
  String toString() {
    return 'TeacherState.createTeacherSuccess(teachers: $teachers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTeacherSuccessImpl &&
            const DeepCollectionEquality().equals(other._teachers, _teachers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_teachers));

  /// Create a copy of TeacherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTeacherSuccessImplCopyWith<_$CreateTeacherSuccessImpl>
      get copyWith =>
          __$$CreateTeacherSuccessImplCopyWithImpl<_$CreateTeacherSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TeacherEntity> teachers) initial,
    required TResult Function(List<TeacherEntity> teachers, String message)
        failed,
    required TResult Function(List<TeacherEntity> teachers) fetchDataSuccess,
    required TResult Function(List<TeacherEntity> teachers)
        createTeacherSuccess,
  }) {
    return createTeacherSuccess(teachers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TeacherEntity> teachers)? initial,
    TResult? Function(List<TeacherEntity> teachers, String message)? failed,
    TResult? Function(List<TeacherEntity> teachers)? fetchDataSuccess,
    TResult? Function(List<TeacherEntity> teachers)? createTeacherSuccess,
  }) {
    return createTeacherSuccess?.call(teachers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TeacherEntity> teachers)? initial,
    TResult Function(List<TeacherEntity> teachers, String message)? failed,
    TResult Function(List<TeacherEntity> teachers)? fetchDataSuccess,
    TResult Function(List<TeacherEntity> teachers)? createTeacherSuccess,
    required TResult orElse(),
  }) {
    if (createTeacherSuccess != null) {
      return createTeacherSuccess(teachers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Failed value) failed,
    required TResult Function(_FetchDataSuccess value) fetchDataSuccess,
    required TResult Function(_CreateTeacherSuccess value) createTeacherSuccess,
  }) {
    return createTeacherSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_FetchDataSuccess value)? fetchDataSuccess,
    TResult? Function(_CreateTeacherSuccess value)? createTeacherSuccess,
  }) {
    return createTeacherSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Failed value)? failed,
    TResult Function(_FetchDataSuccess value)? fetchDataSuccess,
    TResult Function(_CreateTeacherSuccess value)? createTeacherSuccess,
    required TResult orElse(),
  }) {
    if (createTeacherSuccess != null) {
      return createTeacherSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateTeacherSuccess implements TeacherState {
  const factory _CreateTeacherSuccess(
          {required final List<TeacherEntity> teachers}) =
      _$CreateTeacherSuccessImpl;

  @override
  List<TeacherEntity> get teachers;

  /// Create a copy of TeacherState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTeacherSuccessImplCopyWith<_$CreateTeacherSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
