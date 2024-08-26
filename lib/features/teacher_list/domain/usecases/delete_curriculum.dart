import 'package:dartz/dartz.dart';
import 'package:interview_demo/features/teacher_list/domain/repositories/i_teacher_list_repository.dart';

class DeleteCurriculum {
  const DeleteCurriculum({
    required this.iTeacheryListRepository,
  });

  final ITeacheryListRepository iTeacheryListRepository;

  Future<Either<String, void>> call(String teacherId) {
    return iTeacheryListRepository.deleteCurriculum(teacherId);
  }
}
