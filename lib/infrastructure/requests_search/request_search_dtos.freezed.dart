// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'request_search_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RequestSearchDto _$RequestSearchDtoFromJson(Map<String, dynamic> json) {
  return _RequestSearchDto.fromJson(json);
}

/// @nodoc
class _$RequestSearchDtoTearOff {
  const _$RequestSearchDtoTearOff();

// ignore: unused_element
  _RequestSearchDto call(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required String city,
      @required String bloodType,
      @required String photoUrl,
      @required String lat,
      @required String long,
      @required bool isOpen,
      @required String user}) {
    return _RequestSearchDto(
      id: id,
      name: name,
      city: city,
      bloodType: bloodType,
      photoUrl: photoUrl,
      lat: lat,
      long: long,
      isOpen: isOpen,
      user: user,
    );
  }

// ignore: unused_element
  RequestSearchDto fromJson(Map<String, Object> json) {
    return RequestSearchDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RequestSearchDto = _$RequestSearchDtoTearOff();

/// @nodoc
mixin _$RequestSearchDto {
  @JsonKey(ignore: true)
  String get id;
  String get name;
  String get city;
  String get bloodType;
  String get photoUrl;
  String get lat;
  String get long;
  bool get isOpen;
  String get user;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RequestSearchDtoCopyWith<RequestSearchDto> get copyWith;
}

/// @nodoc
abstract class $RequestSearchDtoCopyWith<$Res> {
  factory $RequestSearchDtoCopyWith(
          RequestSearchDto value, $Res Function(RequestSearchDto) then) =
      _$RequestSearchDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      String city,
      String bloodType,
      String photoUrl,
      String lat,
      String long,
      bool isOpen,
      String user});
}

/// @nodoc
class _$RequestSearchDtoCopyWithImpl<$Res>
    implements $RequestSearchDtoCopyWith<$Res> {
  _$RequestSearchDtoCopyWithImpl(this._value, this._then);

  final RequestSearchDto _value;
  // ignore: unused_field
  final $Res Function(RequestSearchDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object city = freezed,
    Object bloodType = freezed,
    Object photoUrl = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object isOpen = freezed,
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      city: city == freezed ? _value.city : city as String,
      bloodType: bloodType == freezed ? _value.bloodType : bloodType as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      lat: lat == freezed ? _value.lat : lat as String,
      long: long == freezed ? _value.long : long as String,
      isOpen: isOpen == freezed ? _value.isOpen : isOpen as bool,
      user: user == freezed ? _value.user : user as String,
    ));
  }
}

/// @nodoc
abstract class _$RequestSearchDtoCopyWith<$Res>
    implements $RequestSearchDtoCopyWith<$Res> {
  factory _$RequestSearchDtoCopyWith(
          _RequestSearchDto value, $Res Function(_RequestSearchDto) then) =
      __$RequestSearchDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      String city,
      String bloodType,
      String photoUrl,
      String lat,
      String long,
      bool isOpen,
      String user});
}

/// @nodoc
class __$RequestSearchDtoCopyWithImpl<$Res>
    extends _$RequestSearchDtoCopyWithImpl<$Res>
    implements _$RequestSearchDtoCopyWith<$Res> {
  __$RequestSearchDtoCopyWithImpl(
      _RequestSearchDto _value, $Res Function(_RequestSearchDto) _then)
      : super(_value, (v) => _then(v as _RequestSearchDto));

  @override
  _RequestSearchDto get _value => super._value as _RequestSearchDto;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object city = freezed,
    Object bloodType = freezed,
    Object photoUrl = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object isOpen = freezed,
    Object user = freezed,
  }) {
    return _then(_RequestSearchDto(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      city: city == freezed ? _value.city : city as String,
      bloodType: bloodType == freezed ? _value.bloodType : bloodType as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      lat: lat == freezed ? _value.lat : lat as String,
      long: long == freezed ? _value.long : long as String,
      isOpen: isOpen == freezed ? _value.isOpen : isOpen as bool,
      user: user == freezed ? _value.user : user as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RequestSearchDto extends _RequestSearchDto {
  _$_RequestSearchDto(
      {@JsonKey(ignore: true) this.id,
      @required this.name,
      @required this.city,
      @required this.bloodType,
      @required this.photoUrl,
      @required this.lat,
      @required this.long,
      @required this.isOpen,
      @required this.user})
      : assert(name != null),
        assert(city != null),
        assert(bloodType != null),
        assert(photoUrl != null),
        assert(lat != null),
        assert(long != null),
        assert(isOpen != null),
        assert(user != null),
        super._();

  factory _$_RequestSearchDto.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestSearchDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  final String city;
  @override
  final String bloodType;
  @override
  final String photoUrl;
  @override
  final String lat;
  @override
  final String long;
  @override
  final bool isOpen;
  @override
  final String user;

  @override
  String toString() {
    return 'RequestSearchDto(id: $id, name: $name, city: $city, bloodType: $bloodType, photoUrl: $photoUrl, lat: $lat, long: $long, isOpen: $isOpen, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestSearchDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.bloodType, bloodType) ||
                const DeepCollectionEquality()
                    .equals(other.bloodType, bloodType)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)) &&
            (identical(other.isOpen, isOpen) ||
                const DeepCollectionEquality().equals(other.isOpen, isOpen)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(bloodType) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      const DeepCollectionEquality().hash(isOpen) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$RequestSearchDtoCopyWith<_RequestSearchDto> get copyWith =>
      __$RequestSearchDtoCopyWithImpl<_RequestSearchDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestSearchDtoToJson(this);
  }
}

abstract class _RequestSearchDto extends RequestSearchDto {
  _RequestSearchDto._() : super._();
  factory _RequestSearchDto(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required String city,
      @required String bloodType,
      @required String photoUrl,
      @required String lat,
      @required String long,
      @required bool isOpen,
      @required String user}) = _$_RequestSearchDto;

  factory _RequestSearchDto.fromJson(Map<String, dynamic> json) =
      _$_RequestSearchDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  String get city;
  @override
  String get bloodType;
  @override
  String get photoUrl;
  @override
  String get lat;
  @override
  String get long;
  @override
  bool get isOpen;
  @override
  String get user;
  @override
  @JsonKey(ignore: true)
  _$RequestSearchDtoCopyWith<_RequestSearchDto> get copyWith;
}
