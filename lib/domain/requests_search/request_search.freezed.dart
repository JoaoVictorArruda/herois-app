// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'request_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RequestSearchTearOff {
  const _$RequestSearchTearOff();

// ignore: unused_element
  _RequestSearch call(
      {@required UniqueId id,
      @required StringSingleLine name,
      @required StringSingleLine city,
      @required StringSingleLine lat,
      @required StringSingleLine long,
      @required BloodType bloodType,
      @required String photoUrl,
      @required bool isOpen,
      @required StringSingleLine user}) {
    return _RequestSearch(
      id: id,
      name: name,
      city: city,
      lat: lat,
      long: long,
      bloodType: bloodType,
      photoUrl: photoUrl,
      isOpen: isOpen,
      user: user,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RequestSearch = _$RequestSearchTearOff();

/// @nodoc
mixin _$RequestSearch {
  UniqueId get id;
  StringSingleLine get name;
  StringSingleLine get city;
  StringSingleLine get lat;
  StringSingleLine get long;
  BloodType get bloodType;
  String get photoUrl;
  bool get isOpen;
  StringSingleLine get user;

  @JsonKey(ignore: true)
  $RequestSearchCopyWith<RequestSearch> get copyWith;
}

/// @nodoc
abstract class $RequestSearchCopyWith<$Res> {
  factory $RequestSearchCopyWith(
          RequestSearch value, $Res Function(RequestSearch) then) =
      _$RequestSearchCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      StringSingleLine name,
      StringSingleLine city,
      StringSingleLine lat,
      StringSingleLine long,
      BloodType bloodType,
      String photoUrl,
      bool isOpen,
      StringSingleLine user});
}

/// @nodoc
class _$RequestSearchCopyWithImpl<$Res>
    implements $RequestSearchCopyWith<$Res> {
  _$RequestSearchCopyWithImpl(this._value, this._then);

  final RequestSearch _value;
  // ignore: unused_field
  final $Res Function(RequestSearch) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object city = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object bloodType = freezed,
    Object photoUrl = freezed,
    Object isOpen = freezed,
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as StringSingleLine,
      city: city == freezed ? _value.city : city as StringSingleLine,
      lat: lat == freezed ? _value.lat : lat as StringSingleLine,
      long: long == freezed ? _value.long : long as StringSingleLine,
      bloodType:
          bloodType == freezed ? _value.bloodType : bloodType as BloodType,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      isOpen: isOpen == freezed ? _value.isOpen : isOpen as bool,
      user: user == freezed ? _value.user : user as StringSingleLine,
    ));
  }
}

/// @nodoc
abstract class _$RequestSearchCopyWith<$Res>
    implements $RequestSearchCopyWith<$Res> {
  factory _$RequestSearchCopyWith(
          _RequestSearch value, $Res Function(_RequestSearch) then) =
      __$RequestSearchCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      StringSingleLine name,
      StringSingleLine city,
      StringSingleLine lat,
      StringSingleLine long,
      BloodType bloodType,
      String photoUrl,
      bool isOpen,
      StringSingleLine user});
}

/// @nodoc
class __$RequestSearchCopyWithImpl<$Res>
    extends _$RequestSearchCopyWithImpl<$Res>
    implements _$RequestSearchCopyWith<$Res> {
  __$RequestSearchCopyWithImpl(
      _RequestSearch _value, $Res Function(_RequestSearch) _then)
      : super(_value, (v) => _then(v as _RequestSearch));

  @override
  _RequestSearch get _value => super._value as _RequestSearch;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object city = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object bloodType = freezed,
    Object photoUrl = freezed,
    Object isOpen = freezed,
    Object user = freezed,
  }) {
    return _then(_RequestSearch(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as StringSingleLine,
      city: city == freezed ? _value.city : city as StringSingleLine,
      lat: lat == freezed ? _value.lat : lat as StringSingleLine,
      long: long == freezed ? _value.long : long as StringSingleLine,
      bloodType:
          bloodType == freezed ? _value.bloodType : bloodType as BloodType,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      isOpen: isOpen == freezed ? _value.isOpen : isOpen as bool,
      user: user == freezed ? _value.user : user as StringSingleLine,
    ));
  }
}

/// @nodoc
class _$_RequestSearch extends _RequestSearch {
  const _$_RequestSearch(
      {@required this.id,
      @required this.name,
      @required this.city,
      @required this.lat,
      @required this.long,
      @required this.bloodType,
      @required this.photoUrl,
      @required this.isOpen,
      @required this.user})
      : assert(id != null),
        assert(name != null),
        assert(city != null),
        assert(lat != null),
        assert(long != null),
        assert(bloodType != null),
        assert(photoUrl != null),
        assert(isOpen != null),
        assert(user != null),
        super._();

  @override
  final UniqueId id;
  @override
  final StringSingleLine name;
  @override
  final StringSingleLine city;
  @override
  final StringSingleLine lat;
  @override
  final StringSingleLine long;
  @override
  final BloodType bloodType;
  @override
  final String photoUrl;
  @override
  final bool isOpen;
  @override
  final StringSingleLine user;

  @override
  String toString() {
    return 'RequestSearch(id: $id, name: $name, city: $city, lat: $lat, long: $long, bloodType: $bloodType, photoUrl: $photoUrl, isOpen: $isOpen, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestSearch &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      const DeepCollectionEquality().hash(bloodType) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(isOpen) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$RequestSearchCopyWith<_RequestSearch> get copyWith =>
      __$RequestSearchCopyWithImpl<_RequestSearch>(this, _$identity);
}

abstract class _RequestSearch extends RequestSearch {
  const _RequestSearch._() : super._();
  const factory _RequestSearch(
      {@required UniqueId id,
      @required StringSingleLine name,
      @required StringSingleLine city,
      @required StringSingleLine lat,
      @required StringSingleLine long,
      @required BloodType bloodType,
      @required String photoUrl,
      @required bool isOpen,
      @required StringSingleLine user}) = _$_RequestSearch;

  @override
  UniqueId get id;
  @override
  StringSingleLine get name;
  @override
  StringSingleLine get city;
  @override
  StringSingleLine get lat;
  @override
  StringSingleLine get long;
  @override
  BloodType get bloodType;
  @override
  String get photoUrl;
  @override
  bool get isOpen;
  @override
  StringSingleLine get user;
  @override
  @JsonKey(ignore: true)
  _$RequestSearchCopyWith<_RequestSearch> get copyWith;
}
