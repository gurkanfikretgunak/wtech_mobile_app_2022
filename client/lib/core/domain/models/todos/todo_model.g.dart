// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoModel _$$_TodoModelFromJson(Map<String, dynamic> json) => _$_TodoModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      isCompleted: json['isCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TodoModelToJson(_$_TodoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'isCompleted': instance.isCompleted,
    };
