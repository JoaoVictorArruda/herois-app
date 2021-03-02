import 'package:auto_route/auto_route.dart';
import 'package:uuid/uuid.dart';

import '../info/info_test.dart';

class RequestTest {
  String id;
  String name;
  String city;
  String lat;
  String long;
  String bloodType;
  String photoUrl;
  bool isOpen;

  RequestTest({
    @required this.id,
    @required this.name,
    @required this.city,
    @required this.lat,
    @required this.long,
    @required this.bloodType,
    @required this.photoUrl,
    @required this.isOpen,
  }): assert(name != null),
        assert(id != null);


  factory RequestTest.mock(InfoTest test) => RequestTest(
    id: Uuid().v1(),
    name: test.name + "'s friend",
    photoUrl: "www.mockteck.com/test_photo.png",
    bloodType: "AB+",
    city: "Mock City",
    lat: "-23.46214",
    long: "-24.32432",
    isOpen: true
  );

}