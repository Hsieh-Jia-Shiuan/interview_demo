// To parse this JSON data, do
//
//     final teacherListModel = teacherListModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_demo/core/json_format_exception.dart';
import 'package:interview_demo/features/teacher_list/data/models/curriculum/curriculum_model.dart';
import 'dart:convert';

import 'package:interview_demo/features/teacher_list/domain/entities/teacher/teacher_entity.dart';

part 'teacher_model.freezed.dart';
part 'teacher_model.g.dart';

List<TeacherModel> teacherListFromJson(String str) => List<TeacherModel>.from(json.decode(str).map((x) => TeacherModel.fromJson(x)));

String teacherListToJson(List<TeacherModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

TeacherModel teacherModelFromJson(String str) => TeacherModel.fromJson(json.decode(str));

String teacherModelToJson(TeacherModel data) => json.encode(data.toJson());

@Freezed(fromJson: true, toJson: true)
class TeacherModel with _$TeacherModel {
  const factory TeacherModel({
    required String id,
    required String name,
    required String title,
    required String avatarUrl,
    required List<CurriculumModel> curriculums,
  }) = _TeacherModel;

  const TeacherModel._();

  factory TeacherModel.fromJson(Map<String, dynamic> json) {
    try {
      return _$TeacherModelFromJson(json);
    } catch (e) {
      throw JsonFormatException.whenFromJson(e, json);
    }
  }

  TeacherEntity toEntity() {
    return TeacherEntity(
      id: id,
      name: name,
      title: title,
      avatarUrl: avatarUrl,
      curriculums: curriculums.map((curriculum) => curriculum.toEntity()).toList(),
    );
  }
}
