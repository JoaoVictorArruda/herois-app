// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'info_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
InfoDto _$InfoDtoFromJson(Map<String, dynamic> json) {
  return _InfoDto.fromJson(json);
}

/// @nodoc
class _$InfoDtoTearOff {
  const _$InfoDtoTearOff();

// ignore: unused_element
  _InfoDto call(
      {@JsonKey(ignore: true) String id,
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
      String dateLastDonate}) {
    return _InfoDto(
      id: id,
      bloodType: bloodType,
      gender: gender,
      bio: bio,
      photoUrl: photoUrl,
      lat: lat,
      long: long,
      city: city,
      name: name,
      isVisible: isVisible,
      neverDonated: neverDonated,
      totalRequests: totalRequests,
      dateLastDonate: dateLastDonate,
    );
  }

// ignore: unused_element
  InfoDto fromJson(Map<String, Object> json) {
    return InfoDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $InfoDto = _$InfoDtoTearOff();

/// @nodoc
mixin _$InfoDto {
  @JsonKey(ignore: true)
  String get id;
  String get bloodType;
  String get gender;
  String get bio;
  String get photoUrl;
  String get lat;
  String get long;
  String get city;
  String get name;
  bool get isVisible;
  bool get neverDonated;
  int get totalRequests;
  String get dateLastDonate;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $InfoDtoCopyWith<InfoDto> get copyWith;
}

/// @nodoc
abstract class $InfoDtoCopyWith<$Res> {
  factory $InfoDtoCopyWith(InfoDto value, $Res Function(InfoDto) then) =
      _$InfoDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String bloodType,
      String gender,
      String bio,
      String photoUrl,
      String lat,
      String long,
      String city,
      String name,
      bool isVisible,
      bool neverDonated,
      int totalRequests,
      String dateLastDonate});
}

/// @nodoc
class _$InfoDtoCopyWithImpl<$Res> implements $InfoDtoCopyWith<$Res> {
  _$InfoDtoCopyWithImpl(this._value, this._then);

  final InfoDto _value;
  // ignore: unused_field
  final $Res Function(InfoDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object bloodType = freezed,
    Object gender = freezed,
    Object bio = freezed,
    Object photoUrl = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object city = freezed,
    Object name = freezed,
    Object isVisible = freezed,
    Object neverDonated = freezed,
    Object totalRequests = freezed,
    Object dateLastDonate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      bloodType: bloodType == freezed ? _value.bloodType : bloodType as String,
      gender: gender == freezed ? _value.gender : gender as String,
      bio: bio == freezed ? _value.bio : bio as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      lat: lat == freezed ? _value.lat : lat as String,
      long: long == freezed ? _value.long : long as String,
      city: city == freezed ? _value.city : city as String,
      name: name == freezed ? _value.name : name as String,
      isVisible: isVisible == freezed ? _value.isVisible : isVisible as bool,
      neverDonated:
          neverDonated == freezed ? _value.neverDonated : neverDonated as bool,
      totalRequests: totalRequests == freezed
          ? _value.totalRequests
          : totalRequests as int,
      dateLastDonate: dateLastDonate == freezed
          ? _value.dateLastDonate
          : dateLastDonate as String,
    ));
  }
}

/// @nodoc
abstract class _$InfoDtoCopyWith<$Res> implements $InfoDtoCopyWith<$Res> {
  factory _$InfoDtoCopyWith(_InfoDto value, $Res Function(_InfoDto) then) =
      __$InfoDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String bloodType,
      String gender,
      String bio,
      String photoUrl,
      String lat,
      String long,
      String city,
      String name,
      bool isVisible,
      bool neverDonated,
      int totalRequests,
      String dateLastDonate});
}

/// @nodoc
class __$InfoDtoCopyWithImpl<$Res> extends _$InfoDtoCopyWithImpl<$Res>
    implements _$InfoDtoCopyWith<$Res> {
  __$InfoDtoCopyWithImpl(_InfoDto _value, $Res Function(_InfoDto) _then)
      : super(_value, (v) => _then(v as _InfoDto));

  @override
  _InfoDto get _value => super._value as _InfoDto;

  @override
  $Res call({
    Object id = freezed,
    Object bloodType = freezed,
    Object gender = freezed,
    Object bio = freezed,
    Object photoUrl = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object city = freezed,
    Object name = freezed,
    Object isVisible = freezed,
    Object neverDonated = freezed,
    Object totalRequests = freezed,
    Object dateLastDonate = freezed,
  }) {
    return _then(_InfoDto(
      id: id == freezed ? _value.id : id as String,
      bloodType: bloodType == freezed ? _value.bloodType : bloodType as String,
      gender: gender == freezed ? _value.gender : gender as String,
      bio: bio == freezed ? _value.bio : bio as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      lat: lat == freezed ? _value.lat : lat as String,
      long: long == freezed ? _value.long : long as String,
      city: city == freezed ? _value.city : city as String,
      name: name == freezed ? _value.name : name as String,
      isVisible: isVisible == freezed ? _value.isVisible : isVisible as bool,
      neverDonated:
          neverDonated == freezed ? _value.neverDonated : neverDonated as bool,
      totalRequests: totalRequests == freezed
          ? _value.totalRequests
          : totalRequests as int,
      dateLastDonate: dateLastDonate == freezed
          ? _value.dateLastDonate
          : dateLastDonate as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_InfoDto extends _InfoDto {
  _$_InfoDto(
      {@JsonKey(ignore: true) this.id,
      @required this.bloodType,
      @required this.gender,
      this.bio,
      this.photoUrl,
      @required this.lat,
      @required this.long,
      this.city,
      @required this.name,
      this.isVisible,
      this.neverDonated,
      this.totalRequests,
      this.dateLastDonate})
      : assert(bloodType != null),
        assert(gender != null),
        assert(lat != null),
        assert(long != null),
        assert(name != null),
        super._();

  factory _$_InfoDto.fromJson(Map<String, dynamic> json) =>
      _$_$_InfoDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String bloodType;
  @override
  final String gender;
  @override
  final String bio;
  @override
  final String photoUrl;
  @override
  final String lat;
  @override
  final String long;
  @override
  final String city;
  @override
  final String name;
  @override
  final bool isVisible;
  @override
  final bool neverDonated;
  @override
  final int totalRequests;
  @override
  final String dateLastDonate;

  @override
  String toString() {
    return 'InfoDto(id: $id, bloodType: $bloodType, gender: $gender, bio: $bio, photoUrl: $photoUrl, lat: $lat, long: $long, city: $city, name: $name, isVisible: $isVisible, neverDonated: $neverDonated, totalRequests: $totalRequests, dateLastDonate: $dateLastDonate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InfoDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.bloodType, bloodType) ||
                const DeepCollectionEquality()
                    .equals(other.bloodType, bloodType)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.isVisible, isVisible) ||
                const DeepCollectionEquality()
                    .equals(other.isVisible, isVisible)) &&
            (identical(other.neverDonated, neverDonated) ||
                const DeepCollectionEquality()
                    .equals(other.neverDonated, neverDonated)) &&
            (identical(other.totalRequests, totalRequests) ||
                const DeepCollectionEquality()
                    .equals(other.totalRequests, totalRequests)) &&
            (identical(other.dateLastDonate, dateLastDonate) ||
                const DeepCollectionEquality()
                    .equals(other.dateLastDonate, dateLastDonate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(bloodType) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(isVisible) ^
      const DeepCollectionEquality().hash(neverDonated) ^
      const DeepCollectionEquality().hash(totalRequests) ^
      const DeepCollectionEquality().hash(dateLastDonate);

  @JsonKey(ignore: true)
  @override
  _$InfoDtoCopyWith<_InfoDto> get copyWith =>
      __$InfoDtoCopyWithImpl<_InfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InfoDtoToJson(this);
  }
}

abstract class _InfoDto extends InfoDto {
  _InfoDto._() : super._();
  factory _InfoDto(
      {@JsonKey(ignore: true) String id,
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
      String dateLastDonate}) = _$_InfoDto;

  factory _InfoDto.fromJson(Map<String, dynamic> json) = _$_InfoDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get bloodType;
  @override
  String get gender;
  @override
  String get bio;
  @override
  String get photoUrl;
  @override
  String get lat;
  @override
  String get long;
  @override
  String get city;
  @override
  String get name;
  @override
  bool get isVisible;
  @override
  bool get neverDonated;
  @override
  int get totalRequests;
  @override
  String get dateLastDonate;
  @override
  @JsonKey(ignore: true)
  _$InfoDtoCopyWith<_InfoDto> get copyWith;
}
