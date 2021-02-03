import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:herois/domain/info/value_objects.dart';
import 'package:herois/domain/core/failures.dart';
import 'package:herois/domain/core/value_objects.dart';

part 'info.freezed.dart';

@freezed
abstract class Info with _$Info {
  const Info._();

  const factory Info({
    @required UniqueId id,
    @required StringSingleLine name,
    String photoUrl,
    InfoBio bio,
    @required BloodType bloodType,
    @required Gender gender,
    StringSingleLine city,
    @required StringSingleLine lat,
    @required StringSingleLine long,
    StringSingleLine dateLastDonate,
    bool isVisible,
    bool neverDonated,
    int totalRequests
  }) = _Info;

  factory Info.empty() => Info(
    id: UniqueId(),
    name: StringSingleLine(""),
    bio: InfoBio(""),
    photoUrl: "",
    bloodType: BloodType(BloodType.predefinedBloodTypes[0]),
    isVisible: null,
    neverDonated: true,
    gender: Gender(Gender.predefinedGender[0]),
    city: StringSingleLine(""),
    lat: StringSingleLine(""),
    long: StringSingleLine(""),
    dateLastDonate: StringSingleLine("null"),
    totalRequests: 0,
  );

  Option<ValueFailure<dynamic>> get failureOption {
    return gender.failureOrUnit
        .andThen(name.failureOrUnit)
        .andThen(bio.failureOrUnit)
        .andThen(bloodType.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}