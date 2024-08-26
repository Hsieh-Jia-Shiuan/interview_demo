import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_demo/features/teacher_list/domain/entities/teacher/teacher_entity.dart';
import 'package:interview_demo/features/teacher_list/domain/usecases/create_teacher.dart';
import 'package:interview_demo/features/teacher_list/domain/usecases/get_teacher_list.dart';

part 'teacher_event.dart';
part 'teacher_state.dart';
part 'teacher_bloc.freezed.dart';

class TeacherBloc extends Bloc<TeacherEvent, TeacherState> {
  final GetTeacherList getTeacherList;
  final CreateTeacher createTeacher;

  TeacherBloc({
    required this.getTeacherList,
    required this.createTeacher,
  }) : super(const _Initial(teachers: [])) {
    on<_FetchData>(_handleFetchData);
    on<_CreateTeacher>(_handleCreateTeacher);
  }

  Future<void> _handleFetchData(_FetchData event, Emitter<TeacherState> emit) async {
    var teachers = await getTeacherList();
    teachers.fold((l) {
      emit(TeacherState.failed(teachers: state.teachers, message: l));
    }, (r) {
      emit(TeacherState.fetchDataSuccess(teachers: r));
    });
  }

  Future<void> _handleCreateTeacher(_CreateTeacher event, Emitter<TeacherState> emit) async {
    var teachers = await createTeacher(event.newDatas);
    teachers.fold((l) {
      emit(TeacherState.failed(teachers: state.teachers, message: l));
    }, (r) {
      emit(TeacherState.createTeacherSuccess(teachers: r));
    });
  }
}
