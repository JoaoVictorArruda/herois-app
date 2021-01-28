// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RequestTearOff {
  const _$RequestTearOff();

// ignore: unused_element
  _Request call(
      {@required UniqueId id,
      StringSingleLine city,
      @required StringSingleLine name,
      @required StringSingleLine lat,
      @required StringSingleLine long,
      @required BloodType bloodType,
      String photoUrl,
      @required bool isOpen}) {
    return _Request(
      id: id,
      city: city,
      name: name,
      lat: lat,
      long: long,
      bloodType: bloodType,
      photoUrl: photoUrl,
      isOpen: isOpen,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Request = _$RequestTearOff();

/// @nodoc
mixin _$Request {
  UniqueId get id;
  StringSingleLine get city;
  StringSingleLine get name;
  StringSingleLine get lat;
  StringSingleLine get long;
  BloodType get bloodType;
  String get photoUrl;
  bool get isOpen;

  @JsonKey(ignore: true)
  $RequestCopyWith<Request> get copyWith;
}

/// @nodoc
abstract class $RequestCopyWith<$Res> {
  factory $RequestCopyWith(Request value, $Res Function(Request) then) =
      _$RequestCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      StringSingleLine city,
      StringSingleLine name,
      StringSingleLine lat,
      StringSingleLine long,
      BloodType bloodType,
      String photoUrl,
      bool isOpen});
}

/// @nodoc
class _$RequestCopyWithImpl<$Res> implements $RequestCopyWith<$Res> {
  _$RequestCopyWithImpl(this._value, this._then);

  final Request _value;
  // ignore: unused_field
  final $Res Function(Request) _then;

  @override
  $Res call({
    Object id = freezed,
    Object city = freezed,
    Object name = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object bloodType = freezed,
    Object photoUrl = freezed,
    Object isOpen = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      city: city == freezed ? _value.city : city as StringSingleLine,
      name: name == freezed ? _value.name : name as StringSingleLine,
      lat: lat == freezed ? _value.lat : lat as StringSingleLine,
      long: long == freezed ? _value.long : long as StringSingleLine,
      bloodType:
          bloodType == freezed ? _value.bloodType : bloodType as BloodType,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      isOpen: isOpen == freezed ? _value.isOpen : isOpen as bool,
    ));
  }
}

/// @nodoc
abstract class _$RequestCopyWith<$Res> implements $RequestCopyWith<$Res> {
  factory _$RequestCopyWith(_Request value, $Res Function(_Request) then) =
      __$RequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      StringSingleLine city,
      StringSingleLine name,
      StringSingleLine lat,
      StringSingleLine long,
      BloodType bloodType,
      String photoUrl,
      bool isOpen});
}

/// @nodoc
class __$RequestCopyWithImpl<$Res> extends _$RequestCopyWithImpl<$Res>
    implements _$RequestCopyWith<$Res> {
  __$RequestCopyWithImpl(_Request _value, $Res Function(_Request) _then)
      : super(_value, (v) => _then(v as _Request));

  @override
  _Request get _value => super._value as _Request;

  @override
  $Res call({
    Object id = freezed,
    Object city = freezed,
    Object name = freezed,
    Object lat = freezed,
    Object long = freezed,
    Object bloodType = freezed,
    Object photoUrl = freezed,
    Object isOpen = freezed,
  }) {
    return _then(_Request(
      id: id == freezed ? _value.id : id as UniqueId,
      city: city == freezed ? _value.city : city as StringSingleLine,
      name: name == freezed ? _value.name : name as StringSingleLine,
      lat: lat == freezed ? _value.lat : lat as StringSingleLine,
      long: long == freezed ? _value.long : long as StringSingleLine,
      bloodType:
          bloodType == freezed ? _value.bloodType : bloodType as BloodType,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      isOpen: isOpen == freezed ? _value.isOpen : isOpen as bool,
    ));
  }
}

/// @nodoc
class _$_Request extends _Request {
  const _$_Request(
      {@required this.id,
      this.city,
      @required this.name,
      @required this.lat,
      @required this.long,
      @required this.bloodType,
      this.photoUrl,
      @required this.isOpen})
      : assert(id != null),
        assert(name != null),
        assert(lat != null),
        assert(long != null),
        assert(bloodType != null),
        assert(isOpen != null),
        super._();

  @override
  final UniqueId id;
  @override
  final StringSingleLine city;
  @override
  final StringSingleLine name;
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
  String toString() {
    return 'Request(id: $id, city: $city, name: $name, lat: $lat, long: $long, bloodType: $bloodType, photoUrl: $photoUrl, isOpen: $isOpen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Request &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      const DeepCollectionEquality().hash(bloodType) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(isOpen);

  @JsonKey(ignore: true)
  @override
  _$RequestCopyWith<_Request> get copyWith =>
      __$RequestCopyWithImpl<_Request>(this, _$identity);
}

abstract class _Request extends Request {
  const _Request._() : super._();
  const factory _Request(
      {@required UniqueId id,
      StringSingleLine city,
      @required StringSingleLine name,
      @required StringSingleLine lat,
      @required StringSingleLine long,
      @required BloodType bloodType,
      String photoUrl,
      @required bool isOpen}) = _$_Request;

  @override
  UniqueId get id;
  @override
  StringSingleLine get city;
  @override
  StringSingleLine get name;
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
  @JsonKey(ignore: true)
  _$RequestCopyWith<_Request> get copyWith;
}
