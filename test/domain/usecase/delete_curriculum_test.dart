import 'package:interview_demo/features/teacher_list/domain/usecases/delete_curriculum.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:interview_demo/features/teacher_list/domain/entities/curriculum/curriculum_entity.dart';
import 'package:interview_demo/features/teacher_list/domain/repositories/i_teacher_list_repository.dart';

// Mock class
class MockTeacherListRepository extends Mock implements ITeacheryListRepository {}

void main() {
  late DeleteCurriculum useCase;
  late MockTeacherListRepository mockTeacherListRepository;

  setUp(() {
    mockTeacherListRepository = MockTeacherListRepository();
    useCase = DeleteCurriculum(iTeacheryListRepository: mockTeacherListRepository);
  });

  const tTeacherId = 'test-teacher-id';
  const tCurriculumEntity = CurriculumEntity(
    id: "1",
    name: "Curriculum 1",
    schedule: "Curriculum 1 schedule",
    content: "Curriculum 1 content",
  );

  final tCurriculumList = <CurriculumEntity>[tCurriculumEntity];

  test('當刪除課程成功時Right會得到 CurriculumEntity 的List', () async {
    // arrange
    when(
      () => mockTeacherListRepository.deleteCurriculum(
        any(),
      ),
    ).thenAnswer(
      (_) async => Right(
        tCurriculumList,
      ),
    );

    // act
    final result = await useCase(tTeacherId);

    // assert
    expect(result, Right(tCurriculumList));
    verify(() => mockTeacherListRepository.deleteCurriculum(tTeacherId)).called(1);
    verifyNoMoreInteractions(mockTeacherListRepository);
  });

  test('當刪除課程失敗時Left會得到錯誤訊息(String)', () async {
    // arrange
    const tError = 'An error occurred';
    when(
      () => mockTeacherListRepository.deleteCurriculum(
        any(),
      ),
    ).thenAnswer(
      (_) async => const Left(
        tError,
      ),
    );

    // act
    final result = await useCase(tTeacherId);

    // assert
    expect(result, const Left(tError));
    verify(() => mockTeacherListRepository.deleteCurriculum(tTeacherId)).called(1);
    verifyNoMoreInteractions(mockTeacherListRepository);
  });
}
