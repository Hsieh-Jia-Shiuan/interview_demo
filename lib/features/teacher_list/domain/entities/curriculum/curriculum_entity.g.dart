// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'curriculum_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurriculumEntityImpl _$$CurriculumEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CurriculumEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      time: json['time'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$CurriculumEntityImplToJson(
        _$CurriculumEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'time': instance.time,
      'content': instance.content,
    };
