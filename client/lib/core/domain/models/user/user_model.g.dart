// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      profileUrl: json['profileUrl'] as String? ?? "",
      phoneNumber: json['phoneNumber'] as int,
      isAdmin: json['isAdmin'] as bool? ?? false,
      token: json['token'] as String? ?? "",
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'profileUrl': instance.profileUrl,
      'phoneNumber': instance.phoneNumber,
      'isAdmin': instance.isAdmin,
      'token': instance.token,
    };
