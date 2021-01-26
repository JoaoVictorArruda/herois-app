import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/core/value_objects.dart';
import 'package:herois/domain/info/value_objects.dart';
import 'package:herois/domain/requests_search/request_search.dart';

part 'request_search_dtos.freezed.dart';
part 'request_search_dtos.g.dart';

@freezed
abstract class RequestSearchDto with _$RequestSearchDto {
  const RequestSearchDto._();

  factory RequestSearchDto({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required String city,
    @required String bloodType,
    @required String photoUrl,
    @required String lat,
    @required String long,
    @required bool isOpen,
    @required String user,
  }) = _RequestSearchDto;

  factory RequestSearchDto.fromDomain(RequestSearch requestSearch) {
    return RequestSearchDto(
        id: requestSearch.id.getOrCrash(),
        bloodType: requestSearch.bloodType.getOrCrash(),
        city: requestSearch.city.getOrCrash(),
        name: requestSearch.name.getOrCrash(),
        photoUrl: requestSearch.photoUrl,
        isOpen: requestSearch.isOpen,
        lat: requestSearch.lat.getOrCrash(),
        long: requestSearch.long.getOrCrash(),
        user: requestSearch.user.getOrCrash(),
    );
  }

  RequestSearch toDomain() {
    return RequestSearch(
      id: UniqueId.fromUniqueString(id),
      name: StringSingleLine(name),
      city: StringSingleLine(city),
      lat: StringSingleLine(lat),
      long: StringSingleLine(long),
      bloodType: BloodType(bloodType),
      photoUrl: photoUrl,
      isOpen: isOpen,
      user: StringSingleLine(user),
    );
  }

  factory RequestSearchDto.fromJson(Map<String, dynamic> json) =>
      _$RequestSearchDtoFromJson(json);

  factory RequestSearchDto.fromFirestore(DocumentSnapshot doc) {
    return RequestSearchDto.fromJson(doc.data()).copyWith(id: doc.id);
  }

}