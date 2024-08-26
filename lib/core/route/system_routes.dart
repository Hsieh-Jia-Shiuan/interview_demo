enum SystemRoutes {
  home(toPath: '/'),
  curriculumDetails(toPath: 'curriculumDetails');

  final String toPath;

  const SystemRoutes({
    required this.toPath,
  });
}
