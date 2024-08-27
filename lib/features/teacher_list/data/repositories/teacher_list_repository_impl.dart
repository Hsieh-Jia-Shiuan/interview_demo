import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:interview_demo/features/teacher_list/data/models/teacher/teacher_model.dart';
import 'package:interview_demo/features/teacher_list/domain/entities/curriculum/curriculum_entity.dart';
import 'package:interview_demo/features/teacher_list/domain/entities/teacher/teacher_entity.dart';
import 'package:interview_demo/features/teacher_list/domain/repositories/i_teacher_list_repository.dart';

class TeacheryListRepositoryImpl implements ITeacheryListRepository {
  final Map<String, TeacherEntity> _teachers = {};
  final Map<String, CurriculumEntity> _curriculums = {};

  @override
  Future<Either<String, List<TeacherEntity>>> getTeacherList() async {
    if (_teachers.isEmpty) {
      var response = await _loadData(path: 'assets/teachers.json');
      List<TeacherEntity> teacherEntities = [];
      response.fold(
        (l) {
          teacherEntities = [
            TeacherEntity.newData('1'),
            TeacherEntity.newData('2'),
            TeacherEntity.newData('3'),
            TeacherEntity.newData('4'),
            TeacherEntity.newData('5'),
          ];
        },
        (r) {
          List<TeacherModel> teachers = teacherListFromJson(r);
          teacherEntities = teachers.map((teacher) => teacher.toEntity()).toList();
        },
      );

      return Future.value(Right(teacherEntities));
    }

    return Future.value(Right(_teachers.values.toList()));
  }

  static Future<Either<String, String>> _loadData({required String path}) async {
    try {
      var response = await rootBundle.loadString(path);

      return Future.value(
        Right(response),
      );
    } catch (error) {
      return Future.value(
        Left(error.toString()),
      );
    }
  }

  @override
  Future<Either<String, List<CurriculumEntity>>> getCurriculumList() {
    if (_teachers.isEmpty) {
      return Future.value(const Left('teacher not found'));
    }

    if (_curriculums.isEmpty) {
      for (var teacher in _teachers.values) {
        for (var curriculum in teacher.curriculums) {
          _curriculums[curriculum.id] = curriculum;
        }
      }
    }

    return Future.value(Right(_curriculums.values.toList()));
  }

  @override
  Future<Either<String, List<CurriculumEntity>>> getCurriculumListForTeacher(String teacherId) {
    if (_teachers.containsKey(teacherId)) {
      return Future.value(Right(_teachers[teacherId]!.curriculums));
    }

    return Future.value(const Left('teacher not found'));
  }

  @override
  Future<Either<String, List<TeacherEntity>>> createTeacher(TeacherEntity teacher) {
    var newId = (_teachers.length + 1).toString();
    _teachers[newId] = teacher.copyWith(id: newId);
    return Future.value(Right(_teachers.values.toList()));
  }

  @override
  Future<Either<String, List<CurriculumEntity>>> createCurriculum(CurriculumEntity curriculum) {
    var newId = (_curriculums.length + 1).toString();
    _curriculums[newId] = curriculum.copyWith(id: newId);
    return Future.value(Right(_curriculums.values.toList()));
  }

  @override
  Future<Either<String, List<CurriculumEntity>>> updateCurriculum(CurriculumEntity curriculum) {
    if (!_curriculums.containsKey(curriculum.id)) {
      return Future.value(const Left('curriculum not found'));
    }

    _curriculums[curriculum.id] = curriculum;
    return Future.value(Right(_curriculums.values.toList()));
  }

  @override
  Future<Either<String, List<CurriculumEntity>>> deleteCurriculum(String curriculumId) {
    if (!_curriculums.containsKey(curriculumId)) {
      return Future.value(const Left('curriculum not found'));
    }

    _curriculums.remove(curriculumId);
    return Future.value(Right(_curriculums.values.toList()));
  }
}
