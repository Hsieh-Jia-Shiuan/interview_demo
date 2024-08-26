part of 'curriculum_bloc.dart';

@freezed
class CurriculumEvent with _$CurriculumEvent {
  const factory CurriculumEvent.getCurriculumList() = _GetCurriculumList;
  const factory CurriculumEvent.getCurriculumListForTeacher({required String teacherId}) = _GetCurriculumListForTeacher;
  const factory CurriculumEvent.createCurriculum({required CurriculumEntity curriculum}) = _CreateCurriculum;
  const factory CurriculumEvent.updateCurriculum({required CurriculumEntity curriculum}) = _UpdateCurriculum;
  const factory CurriculumEvent.deleteCurriculum({required String id}) = _DeleteCurriculum;
}
