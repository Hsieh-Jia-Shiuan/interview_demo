import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_demo/core/constants.dart';
import 'package:interview_demo/features/teacher_list/presentation/bloc/cubit/record_expansion_change_cubit.dart';
import 'package:interview_demo/features/teacher_list/presentation/bloc/teacher/teacher_bloc.dart';
import 'package:interview_demo/features/teacher_list/presentation/widgets/curriculum_item/curriculum_item_factory.dart';
import 'package:interview_demo/features/teacher_list/presentation/widgets/universal_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late CurriculumItemFactory factory;

  @override
  void initState() {
    super.initState();

    factory = const CurriculumItemFactory();
    context.read<TeacherBloc>().add(const TeacherEvent.fetchData());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeacherBloc, TeacherState>(
      builder: (context, state) {
        return UniversalScaffold(
          appBarTitle: '講師清單',
          child: ListView.separated(
            padding: const EdgeInsets.all(Constants.gap24),
            itemCount: state.teachers.length,
            itemBuilder: (BuildContext context, int index) {
              return Card.outlined(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                  side: const BorderSide(
                    color: Colors.black,
                  ),
                ),
                child: ExpansionTile(
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  expandedAlignment: Alignment.centerLeft,
                  tilePadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  maintainState: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  collapsedShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black38,
                    backgroundImage: NetworkImage(
                      state.teachers[index].avatarUrl,
                    ),
                  ),
                  onExpansionChanged: (status) {
                    context.read<RecordExpansionChangeCubit>().change(
                          index: index,
                          status: status,
                        );
                  },
                  title: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: Text(
                      state.teachers[index].title,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: Text(
                      state.teachers[index].name,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  trailing: BlocSelector<RecordExpansionChangeCubit, RecordExpansionChangeState, bool>(
                    selector: (state) {
                      return context.read<RecordExpansionChangeCubit>().getExpansion(
                            index: index,
                          );
                    },
                    builder: (context, isExpansion) {
                      return Icon(
                        isExpansion ? Icons.remove : Icons.add,
                        size: 32,
                      );
                    },
                  ),
                  children: [
                    const Divider(),
                    ...state.teachers[index].curriculums.map(
                      (curriculumData) {
                        return factory.create(
                          context: context,
                          curriculumEntity: curriculumData,
                        );
                      },
                    ).toList(),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: Constants.gap16);
            },
          ),
        );
      },
    );
  }
}
