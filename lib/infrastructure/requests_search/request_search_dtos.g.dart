// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_search_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestSearchDto _$_$_RequestSearchDtoFromJson(Map<String, dynamic> json) {
  return _$_RequestSearchDto(
    name: json['name'] as String,
    city: json['city'] as String,
    bloodType: json['bloodType'] as String,
    photoUrl: json['photoUrl'] as String,
    lat: json['lat'] as String,
    long: json['long'] as String,
    isOpen: json['isOpen'] as bool,
    user: json['user'] as String,
  );
}

Map<String, dynamic> _$_$_RequestSearchDtoToJson(
        _$_RequestSearchDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'city': instance.city,
      'bloodType': instance.bloodType,
      'photoUrl': instance.photoUrl,
      'lat': instance.lat,
      'long': instance.long,
      'isOpen': instance.isOpen,
      'user': instance.user,
    };
