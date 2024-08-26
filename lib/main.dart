import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_demo/core/route/app_router.dart';
import 'package:interview_demo/features/teacher_list/data/repositories/teacher_list_repository_impl.dart';
import 'package:interview_demo/features/teacher_list/domain/repositories/i_teacher_list_repository.dart';
import 'package:interview_demo/features/teacher_list/domain/usecases/create_curriculum.dart';
import 'package:interview_demo/features/teacher_list/domain/usecases/create_teacher.dart';
import 'package:interview_demo/features/teacher_list/domain/usecases/delete_curriculum.dart';
import 'package:interview_demo/features/teacher_list/domain/usecases/get_curriculum_list.dart';
import 'package:interview_demo/features/teacher_list/domain/usecases/get_curriculum_list_for_teacher.dart';
import 'package:interview_demo/features/teacher_list/domain/usecases/get_teacher_list.dart';
import 'package:interview_demo/features/teacher_list/domain/usecases/update_curriculum.dart';
import 'package:interview_demo/features/teacher_list/presentation/bloc/cubit/record_expansion_change_cubit.dart';
import 'package:interview_demo/features/teacher_list/presentation/bloc/curriculum/curriculum_bloc.dart';
import 'package:interview_demo/features/teacher_list/presentation/bloc/teacher/teacher_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ITeacheryListRepository>(
          create: (context) => TeacheryListRepositoryImpl(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => RecordExpansionChangeCubit(),
          ),
          BlocProvider(
            create: (BuildContext context) => TeacherBloc(
              getTeacherList: GetTeacherList(
                iTeacheryListRepository: context.read<ITeacheryListRepository>(),
              ),
              createTeacher: CreateTeacher(
                iTeacheryListRepository: context.read<ITeacheryListRepository>(),
              ),
            ),
          ),
          BlocProvider(
            create: (BuildContext context) => CurriculumBloc(
              getCurriculumList: GetCurriculumList(
                iTeacheryListRepository: context.read<ITeacheryListRepository>(),
              ),
              getCurriculumListForTeacher: GetCurriculumListForTeacher(
                iTeacheryListRepository: context.read<ITeacheryListRepository>(),
              ),
              createCurriculum: CreateCurriculum(
                iTeacheryListRepository: context.read<ITeacheryListRepository>(),
              ),
              updateCurriculum: UpdateCurriculum(
                iTeacheryListRepository: context.read<ITeacheryListRepository>(),
              ),
              deleteCurriculum: DeleteCurriculum(
                iTeacheryListRepository: context.read<ITeacheryListRepository>(),
              ),
            ),
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,

          // router
          routeInformationProvider: AppRouter.router.routeInformationProvider,
          routeInformationParser: AppRouter.router.routeInformationParser,
          routerDelegate: AppRouter.router.routerDelegate,
        ),
      ),
    );
  }
}
