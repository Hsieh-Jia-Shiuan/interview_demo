// To parse this JSON data, do
//
//     final curriculumEntity = curriculumEntityFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'curriculum_entity.freezed.dart';
part 'curriculum_entity.g.dart';

CurriculumEntity curriculumEntityFromJson(String str) => CurriculumEntity.fromJson(json.decode(str));

String curriculumEntityToJson(CurriculumEntity data) => json.encode(data.toJson());

@freezed
class CurriculumEntity with _$CurriculumEntity {
  const factory CurriculumEntity({
    required String id,
    required String name,
    required String time,
    required String content,
  }) = _CurriculumEntity;

  factory CurriculumEntity.fromJson(Map<String, dynamic> json) => _$CurriculumEntityFromJson(json);
}
