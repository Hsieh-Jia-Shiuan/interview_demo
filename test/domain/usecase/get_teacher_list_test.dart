import 'package:interview_demo/features/teacher_list/domain/entities/teacher/teacher_entity.dart';
import 'package:interview_demo/features/teacher_list/domain/usecases/get_teacher_list.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:interview_demo/features/teacher_list/domain/entities/curriculum/curriculum_entity.dart';
import 'package:interview_demo/features/teacher_list/domain/repositories/i_teacher_list_repository.dart';

// Mock class
class MockTeacherListRepository extends Mock implements ITeacheryListRepository {}

void main() {
  late GetTeacherList useCase;
  late MockTeacherListRepository mockTeacherListRepository;

  setUp(() {
    mockTeacherListRepository = MockTeacherListRepository();
    useCase = GetTeacherList(iTeacheryListRepository: mockTeacherListRepository);
  });

  const tTeacherEntity = TeacherEntity(
    id: "1",
    name: "Teacher 1",
    title: "Teacher 1 title",
    avatarUrl: "Teacher 1 avatar",
    curriculums: <CurriculumEntity>[],
  );

  final tTeacherList = <TeacherEntity>[tTeacherEntity];

  test('當教師清單成功時Right會得到 TeacherEntity 的List', () async {
    // arrange
    when(
      () => mockTeacherListRepository.getTeacherList(),
    ).thenAnswer(
      (_) async => Right(
        tTeacherList,
      ),
    );

    // act
    final result = await useCase();

    // assert
    expect(result, Right(tTeacherList));
    verify(() => mockTeacherListRepository.getTeacherList()).called(1);
    verifyNoMoreInteractions(mockTeacherListRepository);
  });

  test('當教師清單失敗時Left會得到錯誤訊息(String)', () async {
    // arrange
    const tError = 'An error occurred';
    when(
      () => mockTeacherListRepository.getTeacherList(),
    ).thenAnswer(
      (_) async => const Left(
        tError,
      ),
    );

    // act
    final result = await useCase();

    // assert
    expect(result, const Left(tError));
    verify(() => mockTeacherListRepository.getTeacherList()).called(1);
    verifyNoMoreInteractions(mockTeacherListRepository);
  });
}
