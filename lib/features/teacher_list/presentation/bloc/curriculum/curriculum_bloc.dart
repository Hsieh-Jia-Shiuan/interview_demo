import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_demo/features/teacher_list/domain/entities/curriculum/curriculum_entity.dart';
import 'package:interview_demo/features/teacher_list/domain/usecases/create_curriculum.dart';
import 'package:interview_demo/features/teacher_list/domain/usecases/delete_curriculum.dart';
import 'package:interview_demo/features/teacher_list/domain/usecases/get_curriculum_list.dart';
import 'package:interview_demo/features/teacher_list/domain/usecases/get_curriculum_list_for_teacher.dart';
import 'package:interview_demo/features/teacher_list/domain/usecases/update_curriculum.dart';

part 'curriculum_event.dart';
part 'curriculum_state.dart';
part 'curriculum_bloc.freezed.dart';

class CurriculumBloc extends Bloc<CurriculumEvent, CurriculumState> {
  final GetCurriculumList getCurriculumList;
  final GetCurriculumListForTeacher getCurriculumListForTeacher;
  final CreateCurriculum createCurriculum;
  final UpdateCurriculum updateCurriculum;
  final DeleteCurriculum deleteCurriculum;

  CurriculumBloc({
    required this.getCurriculumList,
    required this.getCurriculumListForTeacher,
    required this.createCurriculum,
    required this.updateCurriculum,
    required this.deleteCurriculum,
  }) : super(const _Initial(curriculumList: [])) {
    on<_GetCurriculumList>(_handleGetCurriculumList);
    on<_GetCurriculumListForTeacher>(_handleGetCurriculumListForTeacher);
    on<_CreateCurriculum>(_handleCreateCurriculum);
    on<_UpdateCurriculum>(_handleUpdateCurriculum);
    on<_DeleteCurriculum>(_handleDeleteCurriculum);
  }

  Future<void> _handleGetCurriculumList(_GetCurriculumList event, Emitter<CurriculumState> emit) async {
    var curriculumList = await getCurriculumList();
    curriculumList.fold((l) {
      emit(CurriculumState.failed(curriculumList: state.curriculumList, message: l));
    }, (r) {
      emit(CurriculumState.getCurriculumListSuccess(curriculumList: r));
    });
  }

  Future<void> _handleGetCurriculumListForTeacher(_GetCurriculumListForTeacher event, Emitter<CurriculumState> emit) async {
    var curriculumList = await getCurriculumListForTeacher(event.teacherId);
    curriculumList.fold((l) {
      emit(CurriculumState.failed(curriculumList: state.curriculumList, message: l));
    }, (r) {
      emit(CurriculumState.getCurriculumListForTeacherSuccess(curriculumList: r));
    });
  }

  Future<void> _handleCreateCurriculum(_CreateCurriculum event, Emitter<CurriculumState> emit) async {
    var curriculumList = await createCurriculum(event.curriculum);
    curriculumList.fold((l) {
      emit(CurriculumState.failed(curriculumList: state.curriculumList, message: l));
    }, (r) {
      emit(CurriculumState.createCurriculumSuccess(curriculumList: r));
    });
  }

  Future<void> _handleUpdateCurriculum(_UpdateCurriculum event, Emitter<CurriculumState> emit) async {
    var curriculumList = await updateCurriculum(event.curriculum);
    curriculumList.fold((l) {
      emit(CurriculumState.failed(curriculumList: state.curriculumList, message: l));
    }, (r) {
      emit(CurriculumState.updateCurriculumSuccess(curriculumList: state.curriculumList));
    });
  }

  Future<void> _handleDeleteCurriculum(_DeleteCurriculum event, Emitter<CurriculumState> emit) async {
    var curriculumList = await deleteCurriculum(event.id);
    curriculumList.fold((l) {
      emit(CurriculumState.failed(curriculumList: state.curriculumList, message: l));
    }, (r) {
      emit(CurriculumState.deleteCurriculumSuccess(curriculumList: state.curriculumList));
    });
  }
}
