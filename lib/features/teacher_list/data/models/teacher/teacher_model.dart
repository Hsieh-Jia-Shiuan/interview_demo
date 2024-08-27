// To parse this JSON data, do
//
//     final teacherListModel = teacherListModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_demo/features/teacher_list/data/models/curriculum/curriculum_model.dart';
import 'dart:convert';

part 'teacher_model.freezed.dart';
part 'teacher_model.g.dart';

TeacherModel teacherListModelFromJson(String str) => TeacherModel.fromJson(json.decode(str));

String teacherListModelToJson(TeacherModel data) => json.encode(data.toJson());

@freezed
class TeacherModel with _$TeacherModel {
  const factory TeacherModel({
    required String id,
    required String name,
    required String title,
    required String avatarUrl,
    required List<CurriculumModel> curriculums,
  }) = _TeacherModel;

  factory TeacherModel.fromJson(Map<String, dynamic> json) => _$TeacherModelFromJson(json);

  factory TeacherModel.newData(String index) => TeacherModel(
        id: '{id_$index}',
        name: '{name_$index}',
        title: '{title_$index}',
        avatarUrl: '{avatarUrl_$index}',
        curriculums: [
          CurriculumModel(
            id: '{curriculum id_$index}',
            name: '{curriculum name_$index}',
            schedule: '{curriculum schedule_$index}',
            content: '{curriculum content_$index}',
          ),
        ],
      );
}
