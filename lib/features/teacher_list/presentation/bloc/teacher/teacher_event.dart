part of 'teacher_bloc.dart';

@freezed
class TeacherEvent with _$TeacherEvent {
  const factory TeacherEvent.fetchData() = _FetchData;
  const factory TeacherEvent.createTeacher({required TeacherEntity newDatas}) = _CreateTeacher;
}
