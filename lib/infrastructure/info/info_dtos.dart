
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/core/value_objects.dart';
import 'package:herois/domain/info/info.dart';
import 'package:herois/domain/info/value_objects.dart';

part 'info_dtos.freezed.dart';
part 'info_dtos.g.dart';

@freezed
abstract class InfoDto with _$InfoDto {
  const InfoDto._();

  factory InfoDto({
    @JsonKey(ignore: true) String id,
    @required String bloodType,
    @required String gender,
    @required String bio,
    @required String photoUrl,
    @required String lat,
    @required String long,
    @required String city,
    @required String name,
    @required bool isVisible,
  }) = _InfoDto;

  factory InfoDto.fromDomain(Info info) {
    return InfoDto(
      bloodType: info.bloodType.getOrCrash(),
      gender: info.gender.getOrCrash(),
      name: info.name.getOrCrash(),
      bio: info.bio.getOrCrash(),
      photoUrl: info.photoUrl,
      id: info.id.getOrCrash(),
      isVisible: info.isVisible,
      lat: info.lat.getOrCrash(),
      long: info.long.getOrCrash(),
      city: info.city.getOrCrash(),

    );
  }

  factory InfoDto.fromJson(Map<String, dynamic> json) =>
      _$InfoDtoFromJson(json);

  Info toDomain() {
    return Info(
        id: UniqueId.fromUniqueString(id),
        name: StringSingleLine(name),
        gender: Gender(gender),
        bio: InfoBio(bio),
        photoUrl: photoUrl,
        bloodType: BloodType(bloodType),
        isVisible: isVisible,
        city: StringSingleLine(city),
        lat: StringSingleLine(lat),
        long: StringSingleLine(long),
    );
  }

  factory InfoDto.fromFirestore(DocumentSnapshot doc) {
    return InfoDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}

