part of 'curriculum_bloc.dart';

@freezed
class CurriculumState with _$CurriculumState {
  const factory CurriculumState.initial({required List<CurriculumEntity> curriculumList}) = _Initial;
  const factory CurriculumState.failed({required List<CurriculumEntity> curriculumList, required String message}) = _Failed;
  const factory CurriculumState.getCurriculumListSuccess({required List<CurriculumEntity> curriculumList}) = _GetCurriculumListSuccess;
  const factory CurriculumState.getCurriculumListForTeacherSuccess({required List<CurriculumEntity> curriculumList}) = _GetCurriculumListForTeacherSuccess;
  const factory CurriculumState.createCurriculumSuccess({required List<CurriculumEntity> curriculumList}) = _CreateCurriculumSuccess;
  const factory CurriculumState.updateCurriculumSuccess({required List<CurriculumEntity> curriculumList}) = _UpdateCurriculumSuccess;
  const factory CurriculumState.deleteCurriculumSuccess({required List<CurriculumEntity> curriculumList}) = _DeleteCurriculumSuccess;
}
