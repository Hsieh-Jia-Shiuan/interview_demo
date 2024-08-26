import 'package:flutter/material.dart';
import 'package:interview_demo/features/teacher_list/domain/entities/curriculum/curriculum_entity.dart';
import 'package:interview_demo/features/teacher_list/presentation/widgets/curriculum_item/curriculum_item.dart';

abstract interface class ICurriculumItemFactory {
  CurriculumItem create({
    required BuildContext context,
    required CurriculumEntity curriculumEntity,
  });
}
