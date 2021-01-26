// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_search_filter_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestSearchFilterDto _$_$_RequestSearchFilterDtoFromJson(
    Map<String, dynamic> json) {
  return _$_RequestSearchFilterDto(
    city: json['city'] as String,
    bloodType: json['bloodType'] as String,
    lat: json['lat'] as String,
    long: json['long'] as String,
    distance: json['distance'] as String,
  );
}

Map<String, dynamic> _$_$_RequestSearchFilterDtoToJson(
        _$_RequestSearchFilterDto instance) =>
    <String, dynamic>{
      'city': instance.city,
      'bloodType': instance.bloodType,
      'lat': instance.lat,
      'long': instance.long,
      'distance': instance.distance,
    };
