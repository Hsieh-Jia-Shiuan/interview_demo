part of 'teacher_bloc.dart';

@freezed
class TeacherState with _$TeacherState {
  const factory TeacherState.initial({required List<TeacherEntity> teachers}) = _Initial;
  const factory TeacherState.failed({required List<TeacherEntity> teachers, required String message}) = _Failed;

  const factory TeacherState.fetchDataSuccess({required List<TeacherEntity> teachers}) = _FetchDataSuccess;
  const factory TeacherState.createTeacherSuccess({required List<TeacherEntity> teachers}) = _CreateTeacherSuccess;
}
