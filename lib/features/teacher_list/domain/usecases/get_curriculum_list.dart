import 'package:dartz/dartz.dart';
import 'package:interview_demo/features/teacher_list/domain/entities/curriculum/curriculum_entity.dart';
import 'package:interview_demo/features/teacher_list/domain/repositories/i_teacher_list_repository.dart';

class GetCurriculumList {
  const GetCurriculumList({
    required this.iTeacheryListRepository,
  });

  final ITeacheryListRepository iTeacheryListRepository;

  Future<Either<String, List<CurriculumEntity>>> call() {
    return iTeacheryListRepository.getCurriculumList();
  }
}
