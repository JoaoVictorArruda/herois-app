import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/core/value_objects.dart';
import 'package:herois/domain/requests_search/request_search_filter.dart';

part 'request_search_filter_dtos.freezed.dart';
part 'request_search_filter_dtos.g.dart';

@freezed
abstract class RequestSearchFilterDto with _$RequestSearchFilterDto {
  const RequestSearchFilterDto._();

  factory RequestSearchFilterDto({
    @required String city,
    @required String bloodType,
    @required String lat,
    @required String long,
    @required String distance,
  }) = _RequestSearchFilterDto;

  factory RequestSearchFilterDto.fromDomain(RequestSearchFilter requestSearchFilter) {
    return RequestSearchFilterDto(
        bloodType: requestSearchFilter.bloodType.getOrCrash(),
        city: requestSearchFilter.city.getOrCrash(),
        lat: requestSearchFilter.lat.getOrCrash(),
        long: requestSearchFilter.long.getOrCrash(),
        distance: requestSearchFilter.distance.getOrCrash(),
    );
  }

  RequestSearchFilter toDomain() {
    return RequestSearchFilter(
      city: StringSingleLine(city),
      lat: StringSingleLine(lat),
      long: StringSingleLine(long),
      bloodType: StringSingleLine(bloodType),
      distance: StringSingleLine(distance),
    );
  }

  factory RequestSearchFilterDto.fromJson(Map<String, dynamic> json) =>
      _$RequestSearchFilterDtoFromJson(json);

  factory RequestSearchFilterDto.fromFirestore(DocumentSnapshot doc) {
    return RequestSearchFilterDto.fromJson(doc.data());
  }

}