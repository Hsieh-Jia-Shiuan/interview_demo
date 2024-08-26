import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:interview_demo/core/route/system_routes.dart';
import 'package:interview_demo/features/teacher_list/domain/entities/curriculum/curriculum_entity.dart';

class CurriculumItem extends StatelessWidget {
  const CurriculumItem({
    super.key,
    required this.context,
    required this.curriculumEntity,
  });

  final BuildContext context;
  final CurriculumEntity curriculumEntity;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: const Icon(
        Icons.calendar_month_outlined,
        size: 32,
      ),
      title: Text(curriculumEntity.name),
      subtitle: Text(curriculumEntity.time),
      trailing: const Icon(
        Icons.chevron_right,
        size: 32,
      ),
      onTap: () {
        context.goNamed(SystemRoutes.curriculumDetails.name, extra: curriculumEntity);
      },
    );
  }
}
