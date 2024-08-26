import 'package:dartz/dartz.dart';
import 'package:interview_demo/features/teacher_list/domain/entities/teacher/teacher_entity.dart';
import 'package:interview_demo/features/teacher_list/domain/repositories/i_teacher_list_repository.dart';

class GetTeacherList {
  const GetTeacherList({
    required this.iTeacheryListRepository,
  });

  final ITeacheryListRepository iTeacheryListRepository;

  Future<Either<String, List<TeacherEntity>>> call() {
    return iTeacheryListRepository.getTeacherList();
  }
}
