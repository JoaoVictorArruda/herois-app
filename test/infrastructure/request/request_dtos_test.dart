
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/request/request_test.dart';

part 'request_dtos_test.freezed.dart';

part 'request_dtos_test.g.dart';

@freezed
abstract class RequestDtoTest with _$RequestDtoTest {
  const RequestDtoTest._();

  factory RequestDtoTest({
    @JsonKey(ignore: true) String idTest,
    @required String name,
    @required String city,
    @required String lat,
    @required String long,
    @required String bloodType,
    @required String photoUrl,
    bool isOpen,
  }) = _RequestDtoTest;

  factory RequestDtoTest.fromDomain(RequestTest request) {
    return RequestDtoTest(
      bloodType: request.bloodType,
      name: request.name,
      idTest: request.id,
      city: request.city,
      lat: request.lat,
      long: request.long,
      photoUrl: request.photoUrl,
      isOpen: request.isOpen,
    );
  }

  RequestTest toDomain() {
    return RequestTest(
      id: idTest,
      name: name,
      city: city,
      lat: lat,
      long: long,
      bloodType: bloodType,
      photoUrl: photoUrl,
      isOpen: isOpen,
    );
  }

  factory RequestDtoTest.fromFirestore(DocumentSnapshot doc) {
    return RequestDtoTest.fromJson(doc.data()).copyWith(idTest: doc.id);
  }

  factory RequestDtoTest.fromJson(Map<String, dynamic> json) =>
      _$RequestDtoTestFromJson(json);
}
