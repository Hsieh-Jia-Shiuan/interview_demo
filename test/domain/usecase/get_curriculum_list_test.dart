import 'package:interview_demo/features/teacher_list/domain/usecases/get_curriculum_list.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:interview_demo/features/teacher_list/domain/entities/curriculum/curriculum_entity.dart';
import 'package:interview_demo/features/teacher_list/domain/repositories/i_teacher_list_repository.dart';

// Mock class
class MockTeacherListRepository extends Mock implements ITeacheryListRepository {}

void main() {
  late GetCurriculumList useCase;
  late MockTeacherListRepository mockTeacherListRepository;

  setUp(() {
    mockTeacherListRepository = MockTeacherListRepository();
    useCase = GetCurriculumList(iTeacheryListRepository: mockTeacherListRepository);
  });

  const tCurriculumEntity = CurriculumEntity(
    id: "1",
    name: "Curriculum 1",
    schedule: "Curriculum 1 schedule",
    content: "Curriculum 1 content",
  );

  final tCurriculumList = <CurriculumEntity>[tCurriculumEntity];

  test('取得所有課程清單成功時Right會得到 TeacherEntity 的List', () async {
    // arrange
    when(
      () => mockTeacherListRepository.getCurriculumList(),
    ).thenAnswer(
      (_) async => Right(
        tCurriculumList,
      ),
    );

    // act
    final result = await useCase();

    // assert
    expect(result, Right(tCurriculumList));
    verify(() => mockTeacherListRepository.getCurriculumList()).called(1);
    verifyNoMoreInteractions(mockTeacherListRepository);
  });

  test('取得所有課程清單失敗時Left會得到錯誤訊息(String)', () async {
    // arrange
    const tError = 'An error occurred';
    when(
      () => mockTeacherListRepository.getCurriculumList(),
    ).thenAnswer(
      (_) async => const Left(
        tError,
      ),
    );

    // act
    final result = await useCase();

    // assert
    expect(result, const Left(tError));
    verify(() => mockTeacherListRepository.getCurriculumList()).called(1);
    verifyNoMoreInteractions(mockTeacherListRepository);
  });
}
