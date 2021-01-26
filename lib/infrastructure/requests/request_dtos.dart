
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/core/value_objects.dart';
import 'package:herois/domain/info/value_objects.dart';
import 'package:herois/domain/requests/request.dart';

part 'request_dtos.freezed.dart';

part 'request_dtos.g.dart';

@freezed
abstract class RequestDto with _$RequestDto {
  const RequestDto._();

  factory RequestDto({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required String city,
    @required String lat,
    @required String long,
    @required String bloodType,
    @required String photoUrl,
    bool isOpen,
  }) = _RequestDto;

  factory RequestDto.fromDomain(Request request) {
    return RequestDto(
      bloodType: request.bloodType.getOrCrash(),
      name: request.name.getOrCrash(),
      id: request.id.getOrCrash(),
      city: request.city.getOrCrash(),
      lat: request.lat.getOrCrash(),
      long: request.long.getOrCrash(),
      photoUrl: request.photoUrl,
      isOpen: request.isOpen,
    );
  }

  Request toDomain() {
    return Request(
      id: UniqueId.fromUniqueString(id),
      name: StringSingleLine(name),
      city: StringSingleLine(city),
      lat: StringSingleLine(lat),
      long: StringSingleLine(long),
      bloodType: BloodType(bloodType),
      photoUrl: photoUrl,
      isOpen: isOpen,
    );
  }

  factory RequestDto.fromFirestore(DocumentSnapshot doc) {
    return RequestDto.fromJson(doc.data()).copyWith(id: doc.id);
  }

  factory RequestDto.fromJson(Map<String, dynamic> json) =>
      _$RequestDtoFromJson(json);
}
