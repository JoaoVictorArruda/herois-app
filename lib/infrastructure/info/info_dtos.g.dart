// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InfoDto _$_$_InfoDtoFromJson(Map<String, dynamic> json) {
  return _$_InfoDto(
    bloodType: json['bloodType'] as String,
    gender: json['gender'] as String,
    bio: json['bio'] as String,
    photoUrl: json['photoUrl'] as String,
    lat: json['lat'] as String,
    long: json['long'] as String,
    city: json['city'] as String,
    name: json['name'] as String,
    isVisible: json['isVisible'] as bool,
    neverDonated: json['neverDonated'] as bool,
    totalRequests: json['totalRequests'] as int,
    dateLastDonate: json['dateLastDonate'] as String,
  );
}

Map<String, dynamic> _$_$_InfoDtoToJson(_$_InfoDto instance) =>
    <String, dynamic>{
      'bloodType': instance.bloodType,
      'gender': instance.gender,
      'bio': instance.bio,
      'photoUrl': instance.photoUrl,
      'lat': instance.lat,
      'long': instance.long,
      'city': instance.city,
      'name': instance.name,
      'isVisible': instance.isVisible,
      'neverDonated': instance.neverDonated,
      'totalRequests': instance.totalRequests,
      'dateLastDonate': instance.dateLastDonate,
    };
