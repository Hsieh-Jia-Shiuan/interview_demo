import 'package:dartz/dartz.dart';
import 'package:interview_demo/features/teacher_list/domain/entities/curriculum/curriculum_entity.dart';
import 'package:interview_demo/features/teacher_list/domain/entities/teacher/teacher_entity.dart';

abstract class ITeacheryListRepository {
  // 授課講師列表
  Future<Either<String, List<TeacherEntity>>> getTeacherList();

  // 課程列表
  Future<Either<String, List<CurriculumEntity>>> getCurriculumList();

  // 授課講師所開課程列表
  Future<Either<String, List<CurriculumEntity>>> getCurriculumListForTeacher(String teacherId);

  // 建立新講師
  Future<Either<String, List<TeacherEntity>>> createTeacher(TeacherEntity teacher);

  // 建立新課程
  Future<Either<String, List<CurriculumEntity>>> createCurriculum(CurriculumEntity curriculum);

  // 更新課程內容
  Future<Either<String, List<CurriculumEntity>>> updateCurriculum(CurriculumEntity curriculum);

  // 刪除課程
  Future<Either<String, List<CurriculumEntity>>> deleteCurriculum(String curriculumId);
}
