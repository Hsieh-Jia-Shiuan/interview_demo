import 'package:interview_demo/features/teacher_list/domain/usecases/update_curriculum.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:interview_demo/features/teacher_list/domain/entities/curriculum/curriculum_entity.dart';
import 'package:interview_demo/features/teacher_list/domain/repositories/i_teacher_list_repository.dart';

// Fake class
class FakeCurriculumEntity extends Fake implements CurriculumEntity {}

// Mock class
class MockTeacherListRepository extends Mock implements ITeacheryListRepository {}

void main() {
  late UpdateCurriculum useCase;
  late MockTeacherListRepository mockTeacherListRepository;

  setUpAll(() {
    registerFallbackValue(FakeCurriculumEntity());
  });

  setUp(() {
    mockTeacherListRepository = MockTeacherListRepository();
    useCase = UpdateCurriculum(iTeacheryListRepository: mockTeacherListRepository);
  });

  const tCurriculumEntity = CurriculumEntity(
    id: "1",
    name: "Curriculum 1",
    schedule: "Curriculum 1 schedule",
    content: "Curriculum 1 content",
  );

  final tCurriculumList = <CurriculumEntity>[tCurriculumEntity];

  test('當更新課程成功時Right會得到 CurriculumEntity 的List', () async {
    // arrange
    when(
      () => mockTeacherListRepository.updateCurriculum(
        any(),
      ),
    ).thenAnswer(
      (_) async => Right(
        tCurriculumList,
      ),
    );

    // act
    final result = await useCase(tCurriculumEntity);

    // assert
    expect(result, Right(tCurriculumList));
    verify(() => mockTeacherListRepository.updateCurriculum(tCurriculumEntity)).called(1);
    verifyNoMoreInteractions(mockTeacherListRepository);
  });

  test('當更新課程失敗時Left會得到錯誤訊息(String)', () async {
    // arrange
    const tError = 'An error occurred';
    when(
      () => mockTeacherListRepository.updateCurriculum(
        any(),
      ),
    ).thenAnswer(
      (_) async => const Left(
        tError,
      ),
    );

    // act
    final result = await useCase(tCurriculumEntity);

    // assert
    expect(result, const Left(tError));
    verify(() => mockTeacherListRepository.updateCurriculum(tCurriculumEntity)).called(1);
    verifyNoMoreInteractions(mockTeacherListRepository);
  });
}
