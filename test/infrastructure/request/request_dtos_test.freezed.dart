// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'request_dtos_test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RequestDtoTest _$RequestDtoTestFromJson(Map<String, dynamic> json) {
  return _RequestDtoTest.fromJson(json);
}

/// @nodoc
class _$RequestDtoTestTearOff {
  const _$RequestDtoTestTearOff();

// ignore: unused_element
  _RequestDtoTest call(
      {@JsonKey(ignore: true) String idTest,
      @required String name,
      @required String city,
      @required String lat,
      @required String long,
      @required String bloodType,
      @required String photoUrl,
      bool isOpen}) {
    return _RequestDtoTest(
      idTest: idTest,
      name: name,
      city: city,
      lat: lat,
      long: long,
      bloodType: bloodType,
      photoUrl: photoUrl,
      isOpen: isOpen,
    );
  }

// ignore: unused_element
  RequestDtoTest fromJson(Map<String, Object> json) {
    return RequestDtoTest.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RequestDtoTest = _$RequestDtoTestTearOff();

/// @nodoc
mixin _$RequestDtoTest {
  @JsonKey(ignore: true)
  String get idTest;
  String get name;
  String get city;
  String get lat;
  String get long;
  String get bloodType;
  String get photoUrl;
  bool get isOpen;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RequestDtoTestCopyWith<RequestDtoTest> get copyWith;
}

/// @nodoc
abstract class $RequestDtoTestCopyWith<$Res> {
  factory $RequestDtoTestCopyWith(
          RequestDtoTest value, $Res Function(RequestDtoTest) then) =
      _$RequestDtoTestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String idTest,
      String name,
      String city,
      String lat,
      String long,
      String bloodType,
      String photoUrl,
      bool isOpen});
}

/// @nodoc
class _$RequestDtoTestCopyWithImpl<$Res>
    implements $RequestDtoTestCopyWith<$Res> {
  _$RequestDtoTestCopyWithImpl(this._value, this._then);

  final RequestDtoTest _value;
  // ignore: unused_field
  final $Res Function(RequestDtoTest) _then;

  @override
  $Res call({
    Object idTest = freezed,
    Object name = freezed,
    Object city = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object bloodType = freezed,
    Object photoUrl = freezed,
    Object isOpen = freezed,
  }) {
    return _then(_value.copyWith(
      idTest: idTest == freezed ? _value.idTest : idTest as String,
      name: name == freezed ? _value.name : name as String,
      city: city == freezed ? _value.city : city as String,
      lat: lat == freezed ? _value.lat : lat as String,
      long: long == freezed ? _value.long : long as String,
      bloodType: bloodType == freezed ? _value.bloodType : bloodType as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      isOpen: isOpen == freezed ? _value.isOpen : isOpen as bool,
    ));
  }
}

/// @nodoc
abstract class _$RequestDtoTestCopyWith<$Res>
    implements $RequestDtoTestCopyWith<$Res> {
  factory _$RequestDtoTestCopyWith(
          _RequestDtoTest value, $Res Function(_RequestDtoTest) then) =
      __$RequestDtoTestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String idTest,
      String name,
      String city,
      String lat,
      String long,
      String bloodType,
      String photoUrl,
      bool isOpen});
}

/// @nodoc
class __$RequestDtoTestCopyWithImpl<$Res>
    extends _$RequestDtoTestCopyWithImpl<$Res>
    implements _$RequestDtoTestCopyWith<$Res> {
  __$RequestDtoTestCopyWithImpl(
      _RequestDtoTest _value, $Res Function(_RequestDtoTest) _then)
      : super(_value, (v) => _then(v as _RequestDtoTest));

  @override
  _RequestDtoTest get _value => super._value as _RequestDtoTest;

  @override
  $Res call({
    Object idTest = freezed,
    Object name = freezed,
    Object city = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object bloodType = freezed,
    Object photoUrl = freezed,
    Object isOpen = freezed,
  }) {
    return _then(_RequestDtoTest(
      idTest: idTest == freezed ? _value.idTest : idTest as String,
      name: name == freezed ? _value.name : name as String,
      city: city == freezed ? _value.city : city as String,
      lat: lat == freezed ? _value.lat : lat as String,
      long: long == freezed ? _value.long : long as String,
      bloodType: bloodType == freezed ? _value.bloodType : bloodType as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      isOpen: isOpen == freezed ? _value.isOpen : isOpen as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RequestDtoTest extends _RequestDtoTest {
  _$_RequestDtoTest(
      {@JsonKey(ignore: true) this.idTest,
      @required this.name,
      @required this.city,
      @required this.lat,
      @required this.long,
      @required this.bloodType,
      @required this.photoUrl,
      this.isOpen})
      : assert(name != null),
        assert(city != null),
        assert(lat != null),
        assert(long != null),
        assert(bloodType != null),
        assert(photoUrl != null),
        super._();

  factory _$_RequestDtoTest.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestDtoTestFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String idTest;
  @override
  final String name;
  @override
  final String city;
  @override
  final String lat;
  @override
  final String long;
  @override
  final String bloodType;
  @override
  final String photoUrl;
  @override
  final bool isOpen;

  @override
  String toString() {
    return 'RequestDtoTest(idTest: $idTest, name: $name, city: $city, lat: $lat, long: $long, bloodType: $bloodType, photoUrl: $photoUrl, isOpen: $isOpen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestDtoTest &&
            (identical(other.idTest, idTest) ||
                const DeepCollectionEquality().equals(other.idTest, idTest)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)) &&
            (identical(other.bloodType, bloodType) ||
                const DeepCollectionEquality()
                    .equals(other.bloodType, bloodType)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.isOpen, isOpen) ||
                const DeepCollectionEquality().equals(other.isOpen, isOpen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(idTest) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      const DeepCollectionEquality().hash(bloodType) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(isOpen);

  @JsonKey(ignore: true)
  @override
  _$RequestDtoTestCopyWith<_RequestDtoTest> get copyWith =>
      __$RequestDtoTestCopyWithImpl<_RequestDtoTest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestDtoTestToJson(this);
  }
}

abstract class _RequestDtoTest extends RequestDtoTest {
  _RequestDtoTest._() : super._();
  factory _RequestDtoTest(
      {@JsonKey(ignore: true) String idTest,
      @required String name,
      @required String city,
      @required String lat,
      @required String long,
      @required String bloodType,
      @required String photoUrl,
      bool isOpen}) = _$_RequestDtoTest;

  factory _RequestDtoTest.fromJson(Map<String, dynamic> json) =
      _$_RequestDtoTest.fromJson;

  @override
  @JsonKey(ignore: true)
  String get idTest;
  @override
  String get name;
  @override
  String get city;
  @override
  String get lat;
  @override
  String get long;
  @override
  String get bloodType;
  @override
  String get photoUrl;
  @override
  bool get isOpen;
  @override
  @JsonKey(ignore: true)
  _$RequestDtoTestCopyWith<_RequestDtoTest> get copyWith;
}
