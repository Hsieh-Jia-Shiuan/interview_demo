import 'package:interview_demo/features/teacher_list/domain/entities/teacher/teacher_entity.dart';
import 'package:interview_demo/features/teacher_list/domain/usecases/create_teacher.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:interview_demo/features/teacher_list/domain/entities/curriculum/curriculum_entity.dart';
import 'package:interview_demo/features/teacher_list/domain/repositories/i_teacher_list_repository.dart';

// Fake class
class FakeTeacherEntity extends Fake implements TeacherEntity {}

// Mock class
class MockTeacherListRepository extends Mock implements ITeacheryListRepository {}

void main() {
  late CreateTeacher useCase;
  late MockTeacherListRepository mockTeacherListRepository;

  setUpAll(() {
    registerFallbackValue(FakeTeacherEntity());
  });

  setUp(() {
    mockTeacherListRepository = MockTeacherListRepository();
    useCase = CreateTeacher(iTeacheryListRepository: mockTeacherListRepository);
  });

  const tTeacherEntity = TeacherEntity(
    id: "1",
    name: "Teacher 1",
    title: "Teacher 1 title",
    avatarUrl: "Teacher 1 avatar",
    curriculums: <CurriculumEntity>[],
  );

  final tTeacherList = <TeacherEntity>[tTeacherEntity];

  test('當創建教師成功時Right會得到 TeacherEntity 的List', () async {
    // arrange
    when(
      () => mockTeacherListRepository.createTeacher(
        any(),
      ),
    ).thenAnswer(
      (_) async => Right(
        tTeacherList,
      ),
    );

    // act
    final result = await useCase(tTeacherEntity);

    // assert
    expect(result, Right(tTeacherList));
    verify(() => mockTeacherListRepository.createTeacher(tTeacherEntity)).called(1);
    verifyNoMoreInteractions(mockTeacherListRepository);
  });

  test('當創建教師失敗時Left會得到錯誤訊息(String)', () async {
    // arrange
    const tError = 'An error occurred';
    when(
      () => mockTeacherListRepository.createTeacher(
        any(),
      ),
    ).thenAnswer(
      (_) async => const Left(
        tError,
      ),
    );

    // act
    final result = await useCase(tTeacherEntity);

    // assert
    expect(result, const Left(tError));
    verify(() => mockTeacherListRepository.createTeacher(tTeacherEntity)).called(1);
    verifyNoMoreInteractions(mockTeacherListRepository);
  });
}
