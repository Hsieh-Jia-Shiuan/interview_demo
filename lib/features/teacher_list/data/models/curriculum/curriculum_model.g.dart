// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'curriculum_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurriculumModelImpl _$$CurriculumModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CurriculumModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      time: json['time'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$CurriculumModelImplToJson(
        _$CurriculumModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'time': instance.time,
      'content': instance.content,
    };
