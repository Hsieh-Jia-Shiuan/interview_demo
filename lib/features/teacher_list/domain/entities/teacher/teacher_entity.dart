// To parse this JSON data, do
//
//     final teacherListEntity = teacherListEntityFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:interview_demo/features/teacher_list/domain/entities/curriculum/curriculum_entity.dart';

part 'teacher_entity.freezed.dart';
part 'teacher_entity.g.dart';

TeacherEntity teacherListEntityFromJson(String str) => TeacherEntity.fromJson(json.decode(str));

String teacherListEntityToJson(TeacherEntity data) => json.encode(data.toJson());

@freezed
class TeacherEntity with _$TeacherEntity {
  const factory TeacherEntity({
    required String id,
    required String name,
    required String title,
    required String avatarUrl,
    required List<CurriculumEntity> curriculums,
  }) = _TeacherEntity;

  factory TeacherEntity.fromJson(Map<String, dynamic> json) => _$TeacherEntityFromJson(json);

  factory TeacherEntity.newData(String index) => TeacherEntity(
        id: '{id_$index}',
        name: '{name_$index}',
        title: '{title_$index}',
        avatarUrl: '{avatarUrl_$index}',
        curriculums: [
          CurriculumEntity(
            id: '{curriculum id_$index}',
            name: '{curriculum name_$index}',
            time: '{curriculum time_$index}',
            content: '{curriculum content_$index}',
          ),
        ],
      );
}
