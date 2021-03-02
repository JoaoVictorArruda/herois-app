import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:herois/domain/core/value_objects.dart';
import 'package:herois/domain/info/info.dart';
import 'package:herois/domain/info/value_objects.dart';

class InfoTest {
  String id;
  String bloodType;
  String gender;
  String bio;
  String photoUrl;
  String lat;
  String long;
  String city;
  String name;
  bool isVisible;
  bool neverDonated;
  int totalRequests;
  String dateLastDonate;

  InfoTest({
    @required this.id,
    @required this.bloodType,
    @required this.gender,
    @required this.bio,
    @required this.photoUrl,
    @required this.lat,
    @required this.long,
    @required this.city,
    @required this.name,
    @required this.isVisible,
    @required this.neverDonated,
    @required this.totalRequests,
    @required this.dateLastDonate,
  }) : assert(name != null),
        assert(id != null);

  factory InfoTest.mock(User user) => InfoTest(
    id: user.uid,
    name: "Bob",
    bio: "Test Bio",
    photoUrl: "www.mockteck.com/test_photo.png",
    bloodType: "A+",
    isVisible: true,
    neverDonated: true,
    gender: "Masculino",
    city: "Mock City",
    lat: "-23.46214",
    long: "-24.32432",
    dateLastDonate: "",
    totalRequests: 0,
  );

  factory InfoTest.mockFromName(String name) => InfoTest(
    id: UniqueId().value.fold((l) => "", (r) => r),
    name: name,
    bio: "Test Bio",
    photoUrl: "www.mockteck.com/test_photo.png",
    bloodType: "A+",
    isVisible: true,
    neverDonated: true,
    gender: "Feminino",
    city: "Mock City",
    lat: "-23.45644",
    long: "-24.32132",
    dateLastDonate: "",
    totalRequests: 0,
  );

  static Info fromTest(InfoTest infoTest) => Info(
    id: UniqueId.fromUniqueString(infoTest.id),
    name: StringSingleLine(infoTest.name),
    bio: InfoBio(infoTest.bio),
    photoUrl: infoTest.photoUrl,
    bloodType: BloodType(infoTest.bloodType),
    isVisible: infoTest.isVisible,
    neverDonated: infoTest.neverDonated,
    gender: Gender(infoTest.gender),
    city: StringSingleLine(infoTest.city),
    lat: LatLong(infoTest.lat),
    long: LatLong(infoTest.long),
    dateLastDonate: CustomDate(infoTest.dateLastDonate),
    totalRequests: infoTest.totalRequests,
  );
}