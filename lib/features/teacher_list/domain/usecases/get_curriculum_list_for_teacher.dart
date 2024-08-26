import 'package:dartz/dartz.dart';
import 'package:interview_demo/features/teacher_list/domain/entities/curriculum/curriculum_entity.dart';
import 'package:interview_demo/features/teacher_list/domain/repositories/i_teacher_list_repository.dart';

class GetCurriculumListForTeacher {
  const GetCurriculumListForTeacher({
    required this.iTeacheryListRepository,
  });

  final ITeacheryListRepository iTeacheryListRepository;

  Future<Either<String, List<CurriculumEntity>>> call(String teacherId) {
    return iTeacheryListRepository.getCurriculumListForTeacher(teacherId);
  }
}
