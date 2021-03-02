// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_dtos_test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestDtoTest _$_$_RequestDtoTestFromJson(Map<String, dynamic> json) {
  return _$_RequestDtoTest(
    name: json['name'] as String,
    city: json['city'] as String,
    lat: json['lat'] as String,
    long: json['long'] as String,
    bloodType: json['bloodType'] as String,
    photoUrl: json['photoUrl'] as String,
    isOpen: json['isOpen'] as bool,
  );
}

Map<String, dynamic> _$_$_RequestDtoTestToJson(_$_RequestDtoTest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'city': instance.city,
      'lat': instance.lat,
      'long': instance.long,
      'bloodType': instance.bloodType,
      'photoUrl': instance.photoUrl,
      'isOpen': instance.isOpen,
    };
