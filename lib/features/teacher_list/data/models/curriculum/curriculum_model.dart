// To parse this JSON data, do
//
//     final curriculumModel = curriculumModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'curriculum_model.freezed.dart';
part 'curriculum_model.g.dart';

CurriculumModel curriculumModelFromJson(String str) => CurriculumModel.fromJson(json.decode(str));

String curriculumModelToJson(CurriculumModel data) => json.encode(data.toJson());

@freezed
class CurriculumModel with _$CurriculumModel {
  const factory CurriculumModel({
    required String id,
    required String name,
    required String schedule,
    required String content,
  }) = _CurriculumModel;

  factory CurriculumModel.fromJson(Map<String, dynamic> json) => _$CurriculumModelFromJson(json);
}
