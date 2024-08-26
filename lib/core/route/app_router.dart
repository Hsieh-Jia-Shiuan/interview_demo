import 'package:go_router/go_router.dart';
import 'package:interview_demo/core/route/system_routes.dart';
import 'package:interview_demo/features/teacher_list/presentation/pages/error/error_page.dart';
import 'package:interview_demo/features/teacher_list/presentation/pages/home/home_page.dart';
import 'package:interview_demo/features/teacher_list/presentation/pages/curriculum_details_page.dart';

class AppRouter {
  static GoRouter get router => _goRouter;

  static final GoRouter _goRouter = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: SystemRoutes.home.toPath,
    routes: <GoRoute>[
      GoRoute(
        name: SystemRoutes.home.name,
        path: SystemRoutes.home.toPath,
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            name: SystemRoutes.curriculumDetails.name,
            path: SystemRoutes.curriculumDetails.toPath,
            builder: (context, state) => CurriculumDetailsPage(
              sourceData: state.extra,
            ),
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => const ErrorPage(),
  );
}
