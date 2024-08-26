import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:interview_demo/core/route/system_routes.dart';
import 'package:interview_demo/features/teacher_list/domain/entities/curriculum/curriculum_entity.dart';
import 'package:interview_demo/features/teacher_list/presentation/widgets/universal_scaffold.dart';

class CurriculumDetailsPage extends StatelessWidget {
  const CurriculumDetailsPage({
    super.key,
    required this.sourceData,
  });

  final Object? sourceData;

  @override
  Widget build(BuildContext context) {
    CurriculumEntity? curriculumEntity = sourceData is CurriculumEntity ? sourceData as CurriculumEntity : null;

    if (curriculumEntity == null) {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("提示"),
                content: const Text("資料錯誤，請聯繫管理員\n按下確定返回講師清單"),
                actions: <Widget>[
                  TextButton(
                    child: const Text("確定"),
                    onPressed: () => context.goNamed(SystemRoutes.home.name),
                  ),
                ],
              );
            },
          );
        },
      );

      return const SizedBox.shrink();
    }

    return UniversalScaffold(
      appBarTitle: curriculumEntity.name,
      onPreviousPagePressed: () {
        context.pop();
      },
      didPop: (didPop, result) {
        context.pop();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text('課程時間:'),
                Text(curriculumEntity.time),
              ],
            ),
            const Text('課程內容:'),
            Text(curriculumEntity.content),
          ],
        ),
      ),
    );
  }
}
