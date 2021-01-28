// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactDto _$_$_ContactDtoFromJson(Map<String, dynamic> json) {
  return _$_ContactDto(
    lastMessage: json['lastMessage'] as String,
    photoUrl: json['photoUrl'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_ContactDtoToJson(_$_ContactDto instance) =>
    <String, dynamic>{
      'lastMessage': instance.lastMessage,
      'photoUrl': instance.photoUrl,
      'name': instance.name,
    };
