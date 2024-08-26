import 'package:flutter/material.dart';
import 'package:interview_demo/features/teacher_list/domain/entities/curriculum/curriculum_entity.dart';
import 'package:interview_demo/features/teacher_list/presentation/widgets/curriculum_item/curriculum_item.dart';
import 'package:interview_demo/features/teacher_list/presentation/widgets/curriculum_item/i_curriculum_item_facyory.dart';

class CurriculumItemFactory implements ICurriculumItemFactory {
  const CurriculumItemFactory();

  @override
  CurriculumItem create({
    required BuildContext context,
    required CurriculumEntity curriculumEntity,
  }) {
    return CurriculumItem(
      context: context,
      curriculumEntity: curriculumEntity,
    );
  }
}
