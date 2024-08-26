// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherModelImpl _$$TeacherModelImplFromJson(Map<String, dynamic> json) =>
    _$TeacherModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      title: json['title'] as String,
      avatarUrl: json['avatarUrl'] as String,
      curriculums: (json['curriculums'] as List<dynamic>)
          .map((e) => CurriculumModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TeacherModelImplToJson(_$TeacherModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'avatarUrl': instance.avatarUrl,
      'curriculums': instance.curriculums,
    };
