// To parse this JSON data, do
//
//     final curriculumModel = curriculumModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_demo/core/json_format_exception.dart';
import 'dart:convert';

import 'package:interview_demo/features/teacher_list/domain/entities/curriculum/curriculum_entity.dart';

part 'curriculum_model.freezed.dart';
part 'curriculum_model.g.dart';

CurriculumModel curriculumModelFromJson(String str) => CurriculumModel.fromJson(json.decode(str));

String curriculumModelToJson(CurriculumModel data) => json.encode(data.toJson());

@Freezed(fromJson: true, toJson: true)
class CurriculumModel with _$CurriculumModel {
  const factory CurriculumModel({
    required String id,
    required String name,
    required String schedule,
    required String content,
  }) = _CurriculumModel;

  const CurriculumModel._();

  factory CurriculumModel.fromJson(Map<String, dynamic> json) {
    try {
      return _$CurriculumModelFromJson(json);
    } catch (e) {
      throw JsonFormatException.whenFromJson(e, json);
    }
  }

  CurriculumEntity toEntity() {
    return CurriculumEntity(
      id: id,
      name: name,
      schedule: schedule,
      content: content,
    );
  }
}
