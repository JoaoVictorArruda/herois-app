
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/core/value_objects.dart';
import 'package:herois/domain/info/info.dart';
import 'package:herois/domain/info/value_objects.dart';

import '../../domain/info/info_test.dart';

part 'info_dtos_test.freezed.dart';
part 'info_dtos_test.g.dart';

@freezed
abstract class InfoDtoTest with _$InfoDtoTest {
  const InfoDtoTest._();

  factory InfoDtoTest({
    @JsonKey(ignore: true) String id,
    @required String bloodType,
    @required String gender,
    String bio,
    String photoUrl,
    @required String lat,
    @required String long,
    String city,
    @required String name,
    bool isVisible,
    bool neverDonated,
    int totalRequests,
    String dateLastDonate
  }) = _InfoDtoTest;

  factory InfoDtoTest.fromDomain(InfoTest infoTest) {
    return InfoDtoTest(
      bloodType: infoTest.bloodType,
      gender: infoTest.gender,
      name: infoTest.name,
      bio: infoTest.bio,
      photoUrl: infoTest.photoUrl,
      id: infoTest.id,
      isVisible: infoTest.isVisible,
      neverDonated: infoTest.neverDonated,
      lat: infoTest.lat,
      long: infoTest.long,
      city: infoTest.city,
      totalRequests: infoTest.totalRequests,
      dateLastDonate: infoTest.dateLastDonate,
    );
  }

  factory InfoDtoTest.fromJson(Map<String, dynamic> json) =>
      _$InfoDtoTestFromJson(json);

  InfoTest toDomain() {
    return InfoTest(
        id: id,
        name: name,
        gender: gender,
        bio: bio,
        photoUrl: photoUrl,
        bloodType: bloodType,
        isVisible: isVisible,
        neverDonated: neverDonated,
        city: city,
        lat: lat,
        long: long,
        totalRequests: totalRequests,
        dateLastDonate: dateLastDonate,
    );
  }

  factory InfoDtoTest.fromFirestore(DocumentSnapshot doc) {
    return InfoDtoTest.fromJson(doc.data()).copyWith(id: doc.id);
  }
}

