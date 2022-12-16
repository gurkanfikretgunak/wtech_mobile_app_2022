// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsModel _$$_NewsModelFromJson(Map<String, dynamic> json) => _$_NewsModel(
      title: json['title'] as String,
      detail: json['detail'] as String,
      date: json['date'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_NewsModelToJson(_$_NewsModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'detail': instance.detail,
      'date': instance.date,
      'image': instance.image,
    };
