// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageDto _$_$_MessageDtoFromJson(Map<String, dynamic> json) {
  return _$_MessageDto(
    text: json['text'] as String,
    dateTime: json['dateTime'] as String,
    sentByMe: json['sentByMe'] as bool,
  );
}

Map<String, dynamic> _$_$_MessageDtoToJson(_$_MessageDto instance) =>
    <String, dynamic>{
      'text': instance.text,
      'dateTime': instance.dateTime,
      'sentByMe': instance.sentByMe,
    };
