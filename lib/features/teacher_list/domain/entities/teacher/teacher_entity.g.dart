// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherEntityImpl _$$TeacherEntityImplFromJson(Map<String, dynamic> json) =>
    _$TeacherEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      title: json['title'] as String,
      avatarUrl: json['avatarUrl'] as String,
      curriculums: (json['curriculums'] as List<dynamic>)
          .map((e) => CurriculumEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TeacherEntityImplToJson(_$TeacherEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'avatarUrl': instance.avatarUrl,
      'curriculums': instance.curriculums,
    };
